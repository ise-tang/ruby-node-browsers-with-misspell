FROM circleci/ruby:2.6-node-browsers

WORKDIR /home/circleci
RUN curl -L -o ./install-misspell.sh https://git.io/misspell
RUN bash install-misspell.sh
RUN sudo ln -s /home/circleci/bin/misspell /usr/local/bin/misspell
