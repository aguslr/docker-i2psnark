ARG BASE_IMAGE=library/alpine:latest

FROM docker.io/${BASE_IMAGE}

ARG APP_URL=https://i2pplus.github.io/installers/i2psnark-standalone.zip

RUN <<-EOT sh
	set -eu

	apk --no-cache --update add openjdk21-jre-headless && rm -rf /var/cache/apk/*

	wget ${APP_URL} -O /tmp/app.zip && unzip /tmp/app.zip -d / && rm /tmp/app.zip

	adduser --shell /sbin/nologin --gecos '' --disabled-password i2p
	mv /i2psnark /app && chown -R i2p:i2p /app
EOT

EXPOSE 8002/tcp
VOLUME /app/i2psnark.config.d /app/i2psnark

USER i2p
WORKDIR /app

CMD ["/usr/bin/java", "-Xmx1024m", "-jar", "i2psnark.jar"]
