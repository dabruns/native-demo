#!/bin/bash
echo "--------------------------------------------------"
echo "Create jar"
echo "--------------------------------------------------"
start=$SECONDS
mvn clean install
duration=$(( SECONDS - start ))
echo "--------------------------------------------------"
echo "Create jar takes $duration seconds"
echo "--------------------------------------------------"
echo "--------------------------------------------------"
echo "Create native executable"
echo "--------------------------------------------------"
start=$SECONDS
mvn clean install -Pnative -Dquarkus.native.container-build=true -Dquarkus.container-image.build=true -Dquarkus.native.builder-image=graalbase
duration=$(( SECONDS - start ))
echo "--------------------------------------------------"
echo "Create native executable takes $duration seconds"
echo "--------------------------------------------------"
