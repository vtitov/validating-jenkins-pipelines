#!/bin/sh
VERSION=1.6
for i in \
  empty-plugin global-configuration-plugin hello-world-plugin \
  scripted-pipeline global-shared-library
do  echo mvn archetype:generate -B \
     -DarchetypeGroupId=io.jenkins.archetypes \
     -DarchetypeArtifactId=$i \
     -DarchetypeVersion=${VERSION} \
     -DartifactId=some-${i}
done

echo 'for i in some-* ; do (echo $i && cd $i && pwd && mvn verify) ; done'

