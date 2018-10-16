FROM amazonlinux:2018.03

COPY oracle-instantclient18.3-basic.x86_64.rpm /tmp/basic.rpm
COPY oracle-instantclient18.3-sqlplus.x86_64.rpm /tmp/sqlplus.rpm

RUN yum update -y && yum install -y libaio && rpm -ivh /tmp/basic.rpm && \
    rpm -ivh /tmp/sqlplus.rpm && \
    echo "/usr/lib/oracle/18.3/client64/lib" > /etc/ld.so.conf.d/oracle.conf && \
    ldconfig

CMD ["bash"]