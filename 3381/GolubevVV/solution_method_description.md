Strategy
--------

Ideally, a tool would subscribe to the desired set of system events and
report those accordingly, following ROS reactive workflow. However, this
is challenging, because not all kernel changes may be observed in an
asynchronious way due to their implementation factor. In particular,
kernel provides read-only access to some of its high-level data
structures through *sysfs*, propagating standard UNIX file workflow
[@Kerrisk:2010]. One would use *ionotify(...)* API [@man:ionotify] to
observe filesystem changes in an asynchronious way, yet this approach
would not work on *sysfs*, because *sysfs* entries are lazy - there are
no changes, until client requests current state [@LDD:2005]. This leads
to the conclusion, that most kernel changes can be observed only by
*sysfs* polling.

Interfaces
----------

First of all, as was already discussed in \[section:alternatives\], ROS
ecosystem provides a standard topic for system diagnostics - the
*/diagnostics* topic [@rep:107]. All the high-level events would appear
there. Thore are:

-   CPU load

-   CPU times

-   Memory/swap usage

-   Network counters

-   Drive IO counters

-   Resource-hungry processes

It goes without saying, that messages, pushed to diagnostics topic, must
be packaged in standard *DiagnosticArray* type to be usable, for
example, for *rqt\_runtime\_monitor*.

Individual process monitors should provide separate interfaces, because
pushing process events to */diagnostics* topic would pollute it and make
operator unable to detect valuable system changes in a timely manner.
Those are:

-   CPU load

-   CPU times

-   Heap/system memory usage

-   Network counters

-   Drive IO counters

-   Context switches

-   Thread stats

-   File descriptors

-   System call frequency

Per-process events are to be organized in one separate topic, much like
*/diagnostics* aggregates system-wide events. It would be reasonable to
use *DiagnosticStatus* structure for this in the virtue of code reuse,
but field semantics is a bit different - it’s nice for interfaces to
speak for themselves. It goes as follows:

    ProcessStatus:
        byte level
        uint32 pid
        string message
        KeyValue[] values

The level is enumerated in *DiagnosticStatus*. *uint32* is chosen for
pid, because, according to [@man:proc], pid values must wrap around
(which denotes their unsigned nature), and `PID_MAX_LIMIT` is $2^{22}$.

Configuration
-------------

Polling method requires some user-defined value of idle time interval.
This value is setup-specific, so some common configuration mechanism
must be chosen. Luckily, ROS ecosystem provides standard configuration
mechanism - *launch* files, *Parameter Server* and the *roslaunch* tool.
For configuration, the default values will be chosen, where possible.
Those may be overriden by *roslaunch*. Poll interval is not the only
configurable value. Critical memory level, swap consumption rate, high
file descriptor count are among the others.

Grouping
--------

The events are to be grouped by nodes based on their subject. Those are:

-   CPU monitor

-   Memory monitor

-   Network monitor

-   Drive IO monitor

-   System-wide process monitor

Language and backend
--------------------

The language of choice would be *Python*, and, in case its ecosystem
would fail to provide ready-made solutions, suitable for specific
subject monitoring, the implementation would fallback to *C++* through
*Boost.Python* [@manual:boost.python] (or to a pure *C++* node).

On the higher level, the implementation uses *psutil* framework. It
containts the utilities suitable to cover the basic needs (both
system-wide and process-specific) [@manual:psutil]. The implementation
portability property is also derived from *psutil*, which is favourable.

ROS-specific tools
------------------

Since the */diagnostics* stack is used, it’s reasonable to integrate
with *diagnostics\_updater* package, described in [@rep:107] and
<http://wiki.ros.org/diagnostic_updater>. This package encapsulates all
the boilerplate, associated with filling out *DiagnosticArray*
structures and pushing data to */diagnostics*.
