# psfeed

**psfeed** contains a number of ROS system and process diagnostic utilities.

# Summary

Although ROS ecosystem provides some advanced and convenient diagnostic utilities (logging - **rqt_logger_level** and **rqt_console**, _/diagnotics_ topic - **rqt_runtime_monitor** and **rqt_robot_monitor**, etc.), it lacks a standard system and process diagnostic mechanism. **psfeed** is intended to fill this gap.

# Rationale

System monitoring is important. A good diagnostics service provides valuable insight into system state - for example, _how much memory is used?_, or _which process is exploiting most cpu time?_. Moreover, statistics is more vivid in case it's source is reactive - sudden memory consumption jumps, cpu busy-waits or massive page swapping are important events and should be reported.

## Goals

- **Low profile**. Diagnostics must be lightweight
- **Standard tools**. Standard ROS ecosystem tools reusage and integration
- **Backend separation**. Separation of backend tools and ROS-specific stuff
- **Portability**. Although ROS is highly Linux-dependent, this should not be an issue, but it's a good guideline, especially in conjunction with previous goal
- **Flexibility**. Tweaking machine-specific diagnostic parameters is important. For example, _which memory consumption level is critical?_

## Alternatives

Why **psfeed** ?

- **psutil_ros**: https://github.com/brNX/psutil_ros
- **ros-system-monitor**: https://github.com/ethz-asl/ros-system-monitor

| | **psutil_ros** | **ros-system-monitor** | **psfeed** |
|-|-|-|-|
| **Integration aspects** | Uses custom topics in global namespace with custom messages | Uses _/diagnostics_ topic with custom DiagnosticArray structure updaters | Uses _/diagnostics_ topic with standard **diagnostic_updater**. Custom topics for detailed diagnostics (expected) |
| **Backend** | Separate, **psutil** | Embedded, custom _sysfs_ and unix tools processing | Separate, **psutil** with custom additions (expected) |
| **Portability** | Portable, inherited from **psutil** | Linux-dependent | Portable, inherited from **psutil** |
| **Reactivity** | Non-reactive | Reactive | Reactive |
| **System coverage** | Basic cpu, memory and network stats | Basic cpu, memory, drive, ntp and network stats. Resource limit reactivity  | Basic cpu, memory, drive (expected), and network (expected) stats. Per-process stats (expected). Sudden alternation reactivity |
| **Configuration** | Non-configurable | Configurable through **roslaunch**, hard-coded limits and thresholds | Configurable through **roslaunch**, configurable limits and thresholds |

# Examples

## /diagnostics topic

- High memory consumption alternation
![](https://user-images.githubusercontent.com/11921398/32992798-21894738-cd60-11e7-8195-e0d5eff7a6e6.png)

- Memory level below critical
![](https://user-images.githubusercontent.com/11921398/32992791-0fe1552a-cd60-11e7-94f4-5c5ecfe35869.png)

- Busy-looping on one core
![](https://user-images.githubusercontent.com/11921398/32992813-41926028-cd60-11e7-81cc-50f6818b53ed.png)

# Roadmap

- _/diagnostics_ topic
  - [x] CPU load
  - [X] CPU times
  - [X] Memory/swap usage
  - [ ] Network counters
  - [ ] Drive usage
  - [ ] Drive io counters
  - [ ] Resource-hungry processes
- Per-process stats
  - [ ] CPU load
  - [ ] CPU times
  - [ ] Heap/system memory usage
  - [ ] Network counters
  - [ ] Drive io counters
  - [ ] Context switches
  - [ ] Thread stats
  - [ ] File descriptors
- Per-process profiling (**perf** attaching is assumed)
  - [ ] TLB effectiveness
  - [ ] CPU cache effectiveness
  - [ ] Syscalls
  - [ ] IO latency
