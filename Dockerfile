FROM ubuntu:16.04

RUN apt-get update && \
    apt-get install -y curl build-essential python software-properties-common && \
################
# To set up timezone, uncomment the following lines
#
#    apt-get install tzdata && \
#    echo "Australia/Melbourne" > /etc/timezone && \
#    ln -snf /usr/share/zoneinfo/Australia/Melbourne /etc/localtime && \
################
    curl -sL https://deb.nodesource.com/setup_7.x | bash - && \
    curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add - && \
    add-apt-repository "deb https://dl.yarnpkg.com/debian/ stable main" && \
    apt-get update && \
    apt-get install -y nodejs yarn && \
    yarn global add typescript && \
    rm -rf /var/lib/apt/lists/*

ENTRYPOINT ["sh", "-c"]
CMD ["--version"]
