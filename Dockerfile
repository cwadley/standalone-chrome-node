FROM ubuntu:latest

# Pulled from https://hub.docker.com/r/justinribeiro/chrome-headless/dockerfile
RUN apt-get update && apt-get install -y \
apt-transport-https \
ca-certificates \
curl \
gnupg \
--no-install-recommends \
&& curl -sSL https://dl.google.com/linux/linux_signing_key.pub | apt-key add - \
&& echo "deb https://dl.google.com/linux/chrome/deb/ stable main" > /etc/apt/sources.list.d/google-chrome.list \
&& apt-get update && apt-get install -y \
google-chrome-stable \
fontconfig \
fonts-ipafont-gothic \
fonts-wqy-zenhei \
fonts-thai-tlwg \
fonts-kacst \
fonts-symbola \
fonts-noto \
--no-install-recommends \
&& curl -sL https://deb.nodesource.com/setup_8.x | bash - \
&& apt-get install -y nodejs \
&& apt-get purge --auto-remove -y curl gnupg \
&& rm -rf /var/lib/apt/lists/*