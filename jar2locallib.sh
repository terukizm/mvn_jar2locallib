#!/bin/bash

for each in `find . -name "*.jar" `; do

  libname=`echo $each | sed  -e 's@\./\(.*\).jar@\1@'`;
  mvn install:install-file -Dfile=${libname}.jar -DgroupId=locallib -DartifactId=${libname} -Dversion=1.0.0 -Dpackaging=jar -DgeneratePom=true -DcreateChecksum=true

done
