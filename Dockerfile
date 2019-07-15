FROM docker.elastic.co/kibana/kibana:7.2.0
RUN bin/kibana-plugin install https://github.com/sivasamyk/logtrail/releases/download/v0.1.31/logtrail-7.2.0-0.1.31.zip
RUN mv /usr/share/kibana/plugins/logtrail/logtrail.json /usr/share/kibana/config/logtrail.json && \
    ln -s /usr/share/kibana/config/logtrail.json /usr/share/kibana/plugins/logtrail/logtrail.json
