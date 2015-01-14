FROM inclusivedesign/nodejs:0.10.33

RUN yum -y install git && \
    yum clean all

RUN mkdir -p /opt/stmm

COPY GPII-Statistical-Matchmaker/package.json /opt/stmm/

WORKDIR /opt/stmm

RUN npm install

RUN mv /opt/stmm/node_modules/universal/node_modules/infusion /opt/stmm/node_modules/

COPY GPII-Statistical-Matchmaker/. /opt/stmm/

COPY start.sh /usr/local/bin/start.sh

RUN chmod 755 /usr/local/bin/start.sh

EXPOSE 8077

ENTRYPOINT ["/usr/local/bin/start.sh"]
