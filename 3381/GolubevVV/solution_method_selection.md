Low profile
-----------

Diagnostics system must be lightweight. There are two basic principles:

-   Avoid excessive resource consumption.

-   Don’t interfere in other process business.

A proper counterexample would be a process, which polls (and reports)
current CPU load in a tight loop. This code would itself generate
unnecessary load, and take precious userspace/system time from other
participants, which effectively goes against both of the discussed
points.

Ideally, diagnostics system would subscribe to kernel and process events
and filter out non-significant changes, but this is usually not possible
due to system API specifics, discussed in \[section:implementation\].
Which means that system call frequency matters.

To follow ROS reactive workflow, synchronious polling approach must be
turned to asynchronous on the interface level, which requires some
internal state, to report swap space usage difference, for example.
Diagnostics structure size may seem insignificant, but to watch over its
bloat is a good guideline nevertheless.

The implementation preformance should be continuously challenged. On a
certain stage of development is would be possible to perform reflective
monitoring, a “meta diagnostics”.

Reactivity {#subsection:reactivity}
----------

Reactivity is a key point in designing diagnostics tool. The reported
events reflect system state changes. Discussed in
\[section:introduction\], this property is derived from standard ROS
publisher-subscriber workflow. Although the interface should obviously
be implemented using ROS *msg* stack, it’s still not clear how to
effectively organize message topics and diagnostics nodes.

For a system of this sort it’s important to be able to report nontrivial
changes such as:

-   Unexpected CPU load growth.

-   Sudden memory consumption jumps.

-   Excessive file descriptor usage for individual processes.

-   High system call frequency (ergo high contention over
    kernel stuctures).

and etc.

Those events provide a valuable insight into system state, but are
challenging to build correctly. Not on the implementation level, but
because for such topics the events of interest vary from one system
setup to other. This also leads us to the question of flexibility and
configuration.

To conclude, reactivity can be achieved by reporting notable system
change as close as possible to the moment of its exposure. The *msg*
stack is especially suitable for this task.

Flexibility
-----------

The last topic raised in \[subsection:reactivity\] leads to the
important question: “How to implement a diagnostics system, which is
equally usable for different setups?”. The answer is configuration, but
the choice of this mechanism is still up to us. Some standard
configuration tool must be chosen.

It must be possible for user to switch features on and off depending on
her demands to avoid unnecessary *sysfs* polling overhead, for example.
The ability to tweak resource limits and timeouts of operations under
observation is also important.

Portability
-----------

In this context portability is denoted by platform independence. This is
somewhat unimportant, considering how highly ROS is Linux-dependent.
However, [@ros:best-practices] stands that it’s preferrable to make
ROS-independent package, which will later be wrapped using ROS-specific
tools, for code reuse reasons. Considering this guideline, it’s
favourable to produce original (non-wrapped) package using
platform-independent tools.

This goal can be achieved either by choosing already portable tools, or
by wrapping abstractions uniformly. The former way is elegant and more
preferrable - the portability property is simply inherited.
