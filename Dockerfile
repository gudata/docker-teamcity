####################################
# Team City 8 Docker Image
# Tyler Power
# tylerpowerx@gmail.com
####################################

FROM ubuntu

ENV TEAM_CITY_BASE_URL http://download-ln.jetbrains.com/teamcity                 
ENV TEAM_CITY_PACKAGE TeamCity-8.1.1.tar.gz
ENV TEAM_CITY_INSTALL_DIR /opt/

RUN apt-get install -y wget default-jre
RUN wget -q -O - $TEAM_CITY_BASE_URL/$TEAM_CITY_PACKAGE | tar -xzf - -C $TEAM_CITY_INSTALL_DIR


EXPOSE 8111
CMD .$TEAM_CITY_INSTALL_DIR/TeamCity/bin/teamcity-server.sh run
