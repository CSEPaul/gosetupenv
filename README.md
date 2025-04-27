# Golang Setup Path Environment Variables

The following files are not intended as a replacement obviously,
but as examples of how the varaibles should/could be mounted for a pretty standard installation of Golang.

You should copy and paste the variables into your own environment profiles respectively.

Differences -

    .profile is used by linux upon startup only, any changes to this file after startup will only be recognised upon the next reboot.

    .bashrc can be modified more immediately and at any time.

The install directory is controlled by the GOPATH and GOBIN environment variables. If GOBIN is set, binaries are installed to that directory. If GOPATH is set, binaries are installed to the bin subdirectory of the first directory in the GOPATH list. Otherwise, binaries are installed to the bin subdirectory of the default GOPATH ($HOME/go or %USERPROFILE%\go).

The Go path is used to resolve import statements.
It is implemented by and documented in the go/build package.

The GOPATH environment variable lists places to look for Go code.
On Unix, the value is a colon-separated string.
On Windows, the value is a semicolon-separated string.
On Plan 9, the value is a list.

If the environment variable is unset, GOPATH defaults
to a subdirectory named "go" in the user's home directory
($HOME/go on Unix, %USERPROFILE%\go on Windows),
unless that directory holds a Go distribution.
Run "go env GOPATH" to see the current GOPATH.

See https://golang.org/wiki/SettingGOPATH to set a custom GOPATH.

## File Locations
Each file should be present in the user directory home.
Some useful commands to help.

    `cd ~`
    `ls -la`
    `ls -ap | egrep -v /$`
    `find .profile`
    `find .bashrc`
    
## Profile
Path parameters for Golang

    .profile

## Bashrc
Path parameters for Golang

    .bashrc

## Reload the Path Variables
Perform 1 of the following actions.

        - Reload the source file command
            ` source ~/.bashrc`
            
        - Reload the terminal interface


## Go Commands to check variables

    `go env`

    `go help gopath`

## Bash Commands to check Path variables
(Remember to check which 'user' you are. )

    `printenv`
    `echo $PATH`
    `whoami


## Documentation

Please see the following link for detailed information
    `https://go.dev/doc/code`