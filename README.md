
e3-TrIoIntr  
======
ESS Site-specific EPICS module : TrIoIntr


## Initiates

```
make init
```

## Look at E3 makefile
One can find the generic template file such as TrIoIntr.Makefile in e3-TrIoIntr.


## Set Module version
```
echo "E3_MODULE_VERSION:=0.0.0" > configure/CONFIG_MODULE.local
```
## Build

```
make build
```

## Install
```
make install
```


## Switch E3

```
source ~/e3/tools/setenv
```
or
```
source /epics/base-3.15.5/require/3.0.0/bin/setE3Env.bash
```
```
Set the ESS EPICS Environment as follows:
THIS Source NAME    : setE3Env.bash
THIS Source PATH    : /epics/base-3.15.5/require/3.0.0/bin
EPICS_BASE          : /epics/base-3.15.5
EPICS_HOST_ARCH     : linux-x86_64
E3_REQUIRE_LOCATION : /epics/base-3.15.5/require/3.0.0
PATH                : /epics/base-3.15.5/require/3.0.0/bin:/epics/base-3.15.5/bin/linux-x86_64:/usr/local/bin:/usr/bin:/bin:/usr/local/games:/usr/games:/home/jhlee/bin
LD_LIBRARY_PATH     : /epics/base-3.15.5/lib/linux-x86_64:/epics/base-3.15.5/require/3.0.0/lib/linux-x86_64:/epics/base-3.15.5/require/3.0.0/siteLibs/linux-x86_64

Enjoy E3!
```

### Run the IOC

```
iocsh.bash cmds/st.cmd
```
