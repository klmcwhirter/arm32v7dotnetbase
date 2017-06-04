# Supported tags and respective Dockerfile links
* xenial, latest [(_klmcwhirter/arm32v7dotnetbase/Dockerfile_)](https://github.com/klmcwhirter/arm32v7dotnetbase/blob/master/Dockerfile)

# arm32v7dotnetbase
Base Docker image I use for .NET Core - includes the required dependencies

## Base on Ubuntu
This image has as its base image the [arm32v7/ubuntu:xenial](https://hub.docker.com/r/arm32v7/ubuntu/) image.

## Ubunutu Dependencies
The dependencies are per [.NET Core native prerequisites](https://github.com/dotnet/core/blob/master/Documentation/prereqs.md) for Ubuntu.

## Tested
This image was built on macOS and tested using Ubuntu MATE 16.04 on a Raspberry Pi 3.

## License
Just so it is clear I have included an MIT License for this work. Please use it as you see fit, but I offer no warranty.
