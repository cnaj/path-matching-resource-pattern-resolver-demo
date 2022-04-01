#!/usr/bin/env bash

mvn -B clean package

java -cp target/path-matching-resource-pattern-resolver-demo-0.0.1-SNAPSHOT-cp.jar com.example.minimal.ResourceDemo
