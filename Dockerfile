####################################
# Team City 8 Docker Image
####################################

FROM lwieske/java-8 

ENV TEAM_CITY_BASE_URL http://download-cf.jetbrains.com/teamcity                 
ENV TEAM_CITY_PACKAGE TeamCity-8.1.2.tar.gz
ENV TEAM_CITY_INSTALL_DIR /opt/


RUN wget -q -O - $TEAM_CITY_BASE_URL/$TEAM_CITY_PACKAGE | tar -xzf - -C $TEAM_CITY_INSTALL_DIR

EXPOSE 8111
CMD .$TEAM_CITY_INSTALL_DIR/TeamCity/bin/teamcity-server.sh run
