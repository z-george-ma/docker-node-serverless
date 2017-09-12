# Node build tools [![Build Status](https://travis-ci.org/z-george-ma/docker-node-build-tools.svg?branch=master)](https://travis-ci.org/z-george-ma/docker-node-build-tools)
Docker image for NodeJS build tools with yarn, serverless and typescript

## Usage
This repository automatically builds containers for using NodeJS with yarn, serverless and typescript.

You can use this image with the following:

`docker run --rm -it georgema/node-build-tools <command>`

Example:
`docker run --rm -it georgema/node-build-tools 'serverless deploy'`
