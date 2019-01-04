FROM selenium/standalone-chrome:latest

RUN curl -sL https://deb.nodesource.com/setup_10.x | sudo -E bash -

RUN sudo apt-get install -y nodejs