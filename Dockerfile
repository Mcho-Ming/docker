FROM ubuntu:18.04

RUN apt-get update && apt-get install -y git curl && rm -rf /var/lib/apt/lists/*
