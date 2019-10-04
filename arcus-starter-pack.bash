yum upgrade
yum install gcc gcc-c++ autoconf automake libtool pkgconfig cppunit-devel python-setuptools python-devel java-1.7.0-openjdk-devel nc git curl
cd $HOME
mkdir ~/vendor
pushd vendor
curl -OL http://archive.apache.org/dist/ant/binaries/apache-ant-1.9.3-bin.tar.gz
tar xvf apache-ant-1.9.3-bin.tar.gz
ln -s apache-ant-1.9.3 ant

echo "export ANT_HOME=$HOME/vendor/ant" >> ~/.bashrc
echo "export PATH=$JAVA_HOME/bin:$ANT_HOME/bin:$PATH" >> ~/.bashrc

source ~/.bashrc
popd

git clone https://github.com/computerphilosopher/arcus
pushd arcus
./scripts/build.sh
popd
