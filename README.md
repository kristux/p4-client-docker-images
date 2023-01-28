I've been struggling to get p4python working on machine using arm64 architecture.
The p4python library doesn't support it so as a workaround I decided to run it
in a container which I run using --platform=x86_64

The container is based on ubuntu:bionic and installs p4 cli

