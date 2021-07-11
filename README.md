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

The `--no-pager` option is used internally here. If you want the output to pause, pipe it to `less`

The `Q_LINES` environment variable can be set (e.g. in ~/.bashrc ) to control the number of journal lines to show.

The default otherwise is 30 lines.

### Restart a service

`srestart servicename`

This will do the following

1. Stop the service
2. Show its status
3. Start the service
4. Show its status

### Reload a service

`sreload service`

Has the service reload its configuration, akin to `kill -HUP PID`

### Enable a service

`senable servicename`

This will use `sudo systemctl` to enable the service. No status is returned and the service is
*not started.*

### Disable a service

`sdisable servicename`

This will use `sudo systemctl` to disable the service.  No status is returned and the service is
*not stopped.*

### Have systemctl do a daemon reload

`sdaemonreload`

Useful for when you've made changes to the systemd daemon configuration files or installed a new daemon

Runs `systemctl daemon-reload`

Reloads the systemd manager configuration. This will rerun all generators (see systemd.generator(7)), 
reload all unit files, and recreate the entire dependency tree. While the daemon is being reloaded, 
all sockets systemd listens on behalf of user configuration will stay accessible.


