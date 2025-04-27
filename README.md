# Golang Setup Path Environment Variables

The following files are not intended as a replacement obviously,
but as examples of how the varaibles should/could be mounted for a pretty standard installation of Golang.

You should copy and paste the variables into your own environment profiles respectively.

Differences - 
    .profile is used by linux upon startup only, any changes to this file after startup will only be recognised upon the next reboot.
    .bashrc can be modified more immeidately and at any time.

        Perform 1 of the following actions.

        - Reload the source file command
            ` source ~/.bashrc`
            
        - Reload the terminal interface

## Profile
Path parameters for Golang

    .profile

## Bashrc
Path parameters for Golang

    .bashrc


## Go Commands to check variables

    `go env`

    `go help gopath`

## Bash Commands to check variables

    `printenv`


## Documentation

Please see the following link for detailed information
    `https://go.dev/doc/code`