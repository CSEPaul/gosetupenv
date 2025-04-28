#!/bin/bash

# This script sets up the Go environment for development.
# It checks for the presence of Go, sets the GOPATH, and adds Go binaries to PATH.
# Check if Go is installed
if ! command -v go &> /dev/null
then
    echo "Go is not installed. Please install Go first."
    exit 1
fi
# Add a newline to the .bashrc file
echo -e "" >> ~/.bashrc
# Add the Go environment variables to the .bashrc file
echo -e "# Go environment variables" >> ~/.bashrc
echo -e "export PATH=\$PATH:/usr/local/go/bin" >> ~/.bashrc
echo -e "export GOROOT=/usr/local/go" >> ~/.bashrc
echo -e "export GOPATH=\$HOME/go" >> ~/.bashrc
echo -e "export GOBIN=\$GOPATH/bin" >> ~/.bashrc


# Add the Go environment variables to the .profile file
echo -e "" >> ~/.profile
echo -e "# Go environment variables" >> ~/.profile
echo -e "export PATH=\$PATH:/usr/local/go/bin" >> ~/.profile
echo -e "export GOROOT=/usr/local/go" >> ~/.profile
echo -e "export GOPATH=\$HOME/go" >> ~/.profile
echo -e "export GOBIN=\$GOPATH/bin" >> ~/.profile


# Print the Go environment variables
echo "GOPATH is set to: $GOPATH"
echo "GOROOT is set to: $GOROOT"
echo "GOBIN is set to: $GOBIN"
echo "PATH is set to: $PATH"
# Print the Go version
echo "Go version is: $(go version)"
# Print the Go environment
echo "Go environment is: $(go env)"
# Print the Go modules
echo "Go modules are: $(go env GO111MODULE)"
# Print the Go workspace
echo "Go workspace is: $(go env GOPRIVATE)"
# Print the Go cache
echo "Go cache is: $(go env GOCACHE)"
# Print the Go proxy
echo "Go proxy is: $(go env GOPROXY)"

echo "End of Go environment setup."