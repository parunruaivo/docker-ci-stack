FROM sonarqube:5.4

ENV CSHARP_PLUGIN_VERSION 5.0
RUN curl -sLo /opt/sonarqube/extensions/plugins/sonar-csharp-plugin-${CSHARP_PLUGIN_VERSION}.jar \
	https://sonarsource.bintray.com/Distribution/sonar-csharp-plugin/sonar-csharp-plugin-${CSHARP_PLUGIN_VERSION}.jar
