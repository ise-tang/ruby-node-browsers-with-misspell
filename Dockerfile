FROM circleci/ruby:2.6.5-node-browsers

WORKDIR /home/circleci
RUN curl -L -o ./install-misspell.sh https://git.io/misspell
RUN bash install-misspell.sh
RUN sudo ln -s /home/circleci/bin/misspell /usr/local/bin/misspell

# downgrade node (v12.x → v10.x)
RUN wget https://nodejs.org/download/release/v10.16.2/node-v10.16.2-linux-x64.tar.xz
RUN tar Jxfv node-v10.16.2-linux-x64.tar.xz
RUN sudo cp node-v10.16.2-linux-x64/bin/node /usr/local/bin/
