#naveenthangella/mariadb-job:v1
FROM    centos:7
RUN     yum install epel-release -y
RUN     yum install mariadb nc -y
COPY    run.sh /
RUN     chmod +x /run.sh
CMD     /run.sh