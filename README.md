# About

In order to read telemetry off the UART interface we need to ensure that the UART interface is enabled, the serial 
console is disabled and the serial console variable is set to another device I/O. We set serial console to another 
device I/O so that getty doesn't interfere.

# Instructions

```
> git clone <repo-url>
> git checkout -b mickledore

# setup build directory, then ...
> bitbake-layers add-layer <layer-name>

# add following to <build-dir>/conf/local.conf
ENABLE_UART = "1"
SERIAL_CONSOLES ?= "115200;tty1"
```
