First of all, ROS ecosystem already provides a standard carcass for
reporting system-wide evnts - the */diagnostics* topic [@rep:107]. But
this is not enough, because there is no standard package for collecting
generic system diagnostics. It was designed mostly for individual device
control, but the current stack is suitable enough for monitoring
system-wide events.

Current attempts to build the desired package are listed below:

**psutil\_ros** - <https://github.com/brNX/psutil_ros>

-   Strategy - Uses custom topics in global namespace with
    custom messages.

-   Backend - Separate, *psutil*.

-   Portability - Portable, inherited from *psutil*.

-   Reactivity - Non-reactive.

-   Coverage - Basic CPU, memory and network statistics.

-   Flexibility - Non-configurable.

This package provides basic system events, which is enough for
superficial overview. However, this tool is not reactive -
**psutil\_ros** merely reports current system state. This is a major
disadvantage, since the diagnostics is not illustrative. Moreover, this
package defines custom interface and is not meant to be integrated with
*/diagnostics* stack.

The important thing about this package is that this is a tiny *psutil*
wrapper for ROS. This conforms to practces, described in
[@ros:best-practices].

**ros-system-monitor** -
<https://github.com/ethz-asl/ros-system-monitor>

-   Strategy - Uses */diagnostics* topic with custom *DiagnosticArray*
    structure updaters.

-   Backend - Embedded, custom *sysfs* and UNIX tools processing.

-   Portability - Linux-dependent.

-   Reactivity - Reactive.

-   Coverage - Basic CPU, memory, drive, NTP and network statistics.
    Resource limit reactivity.

-   Flexibility - Configurable through *roslaunch*, hard-coded limits
    and thresholds.

This package provides more broad system coverage than *psutil\_ros*. In
includes CPU load, times and temperature, detailed memory overview,
network and IO counters and NTP statistics. Another important aspect is
that *ros-system-monitor* uses standard */diagnostics* stack, which was
described earlier. Not only that, but it can be configured using
*Parameter Server*, e.g. high CPU load - **cpu\_load\_warn**, high HDD
temperature - **hdd\_temp\_warn**, NTP time offset tolerance -
**offset\_tolerance**.

There are several disadvantages. It does not report sudden changes - for
example, memory consumption jumps - only some absolute limit exceedance.
This makes diagnostics less vivid. *ros-system-monitor* also lacks
separate backend. Currently custom *sysfs* processing is used, which is
embedded into reporting scripts. This is not portable and does not
conform to [@ros:best-practices].

All the described packages provide global system diagnostics, lacking
per-process statistics. There is currently no tool to monitor and report
node state in ROS.

## References

1) [rep:107] "Diagnostic system for robots running ros," REP 107, 10 2010. [Online].
Available: <http://www.ros.org/reps/rep-0107.html>

2) [ros:best-practices] Ros best practices. [Online]. Available:
<https://github.com/ethz-asl/ros\_best\_practices/wiki>

