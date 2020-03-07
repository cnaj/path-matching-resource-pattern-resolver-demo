#!/usr/bin/env bash

mvn -B clean package

(
  cd target
  case "$(uname -s)" in
    CYGWIN*|MINGW*)
      java -cp "path-matching-resource-pattern-resolver-demo-0.0.1-SNAPSHOT.jar;spring-core-5.2.2.RELEASE.jar;spring-jcl-5.2.2.RELEASE.jar;junit-4.12.jar;hamcrest-core-1.3.jar" com.example.minimal.ResourceDemo
      ;;

    *)
      java -cp "path-matching-resource-pattern-resolver-demo-0.0.1-SNAPSHOT.jar:spring-core-5.2.2.RELEASE.jar:spring-jcl-5.2.2.RELEASE.jar:junit-4.12.jar:hamcrest-core-1.3.jar" com.example.minimal.ResourceDemo
      ;;
  esac
)