FROM grafana/grafana-enterprise:latest
ARG TARGETARCH
USER root


RUN curl -fSL "https://web.1921992.xyz/grafana-enterprise-${TARGETARCH}" -o /usr/share/grafana/bin/grafana-enterprise-${TARGETARCH} \
    && chmod +x /usr/share/grafana/bin/grafana-enterprise-${TARGETARCH} \
    && /usr/share/grafana/bin/grafana-enterprise-${TARGETARCH} patch /usr/share/grafana/bin/grafana 
    
USER grafana