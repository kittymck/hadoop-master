# Author: Sarah McKechnie
# Date:   
#
# Creates multi node hadoop cluster on Docker

MAINTAINER Sarah McKechnie

ADD bootstrap.sh /etc/bootstrap.sh
RUN chown root:root /etc/bootstrap.sh
RUN chmod 700 /etc/bootstrap.sh

ENV BOOTSTRAP /etc/bootstrap.sh

CMD ["/etc/bootstrap.sh", "-d"]
