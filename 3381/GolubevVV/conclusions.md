It’s important to have reactive and flexible diagnostics system in hand,
especially in a potentially complex ecosystem such as ROS. Reactivity is
a major challenge - such a system must monitor a various number of
activities, while being vivid and concise.

There is currently no satisfactory diagnostics package for ROS, the one
up to the tasks stated in \[section:requirements\]. None of them
provides process monitoring functionality.

The desired implementation would, in most cases, poll *sysfs*, as Linux
system API is not reactive. It’s convinient to use current
*/diagnostics* ROS stack for high-level system monitoring, because it’s
mature and easy to integrate. Process-specific events are meant to be
pushed to separate topic to avoid */diagnostics* topic pollution.

Current implementation is already able to provide basic system-wide
service, covering the most of the *ros-system-monitor* functionality.
Unlike *ros-system-monitor*, it’s portable and has a separate *psutil*
backend, which is favourable. A certain amount of custom events is
implemented - e.g. suden memory consumption jumps, or sudden CPU load
growth. The further development of system-wide statistics and
process-specific events is in progress.
