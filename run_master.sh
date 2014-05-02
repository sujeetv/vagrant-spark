pushd /home/vagrant/
tar -xzf /vagrant/scala-2.10.3.tgz
popd

cp /vagrant/scala_env.sh /home/vagrant/
JAVA_HOME=/home/vagrant/jdk1.7.0_51 /home/vagrant/spark-1.0.0-SNAPSHOT/sbin/start-master.sh
