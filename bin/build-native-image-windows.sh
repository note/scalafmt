set -eux

export JAVA_HOME=$(jabba which --home graal-custom@20.0)
export PATH=$JAVA_HOME/bin:$PATH
echo $JAVA_HOME
gu.cmd install native-image
sbt cli/graalvm-native-image:packageBin
cp scalafmt-cli/target/graalvm-native-image/cli scalafmt
