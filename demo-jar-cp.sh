#!/usr/bin/env bash

mvn -B clean package

(
  cd target
  java -cp path-matching-resource-pattern-resolver-demo-0.0.1-SNAPSHOT-cp.jar com.example.minimal.ResourceDemo
)
