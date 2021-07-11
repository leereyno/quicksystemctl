# Overview

Do you find yourself fiddling with systemctl a lot and getting the order of 
operations backwards since it is the opposite of that used for decades by the 
service command?

Do you find it annoying that systemctl is silent?  Did the daemon start?  Is 
there a problem?  Better run systemctl again with the status option to
find out...

This utility attempts to simplify the usage of systemctl for end users by 
creating distinct commands for the most common operations that one usually
performs.

## Installation

Use the install.sh script to install to a specific target directory, *which
must exist* and should ideally be in your PATH.  Good places to install to
are `/usr/local/bin` and `$HOME/bin`

`./install.sh /my/special/directory`

## Usage

### Start a service

`sstart servicename`

This will use `sudo systemctl` to start the service and then return the status of the service

### Stop a service

`sstop servicename`

This will use `sudo systemctl` to stop the service and then return the status of the service

### Get the status of a service

`sstatus servicename`

The `--no-pager` option is used here. If you want the output to pause, pipe it to `less`

The `Q_LINES` environment variable can be set (e.g. in ~/.bashrc ) to control the number of journal lines to show.

The default otherwise is 30 lines.

### Enable a service

`senable servicename`

This sill use `sudo systemctl` to enable the service. No status is returned and the service is
*not started.*

### Disable a service

`sdisable servicename`

This will use `sudo systemctl` to disable the service.  No status is returned and the service is
*not stopped.*



