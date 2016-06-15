FROM nuwanbando/javabase

RUN mkdir wso2 

COPY dss/pack/wso2dss-3.5.0.zip wso2/

RUN cd wso2/ && \
        unzip wso2dss-3.5.0.zip
        
COPY dss/pack/libs/* /wso2/wso2dss-3.5.0/repository/components/lib/

COPY dss/conf/master-datasources.xml /wso2/wso2dss-3.5.0/repository/conf/datasources/
COPY dss/conf/carbon.xml /wso2/wso2dss-3.5.0/repository/conf/

ENV JAVA_OPTS = "$JAVA_OPTS -Duser.timezone=+05:30"

CMD ["sh","/wso2/wso2dss-3.5.0/bin/wso2server.sh"]

EXPOSE 9763
EXPOSE 9443