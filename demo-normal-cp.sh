#!/usr/bin/env bash

mvn -B clean package

mvn -q exec:java -Dexec.mainClass="com.example.minimal.ResourceDemo"
