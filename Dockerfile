FROM websphere-liberty:19.0.0.9-webProfile8

# Add binary deployment artifact to 'dropins' folder
#RUN wget --directory-prefix=/opt/ibm/wlp/usr/servers/defaultServer/dropins/ $BINARY_DEPLOYMENT_ARTIFACT_URL
COPY Sample1.war/* /opt/ibm/wlp/usr/servers/defaultServer/dropins/

RUN chmod a+rwx /opt/ibm/wlp/output/defaultServer

# IBM WebSphere Liberty license must be accepted
ENV LICENSE $LICENSE
