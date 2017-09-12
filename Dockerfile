FROM mhart/alpine-node

RUN yarn global add typescript serverless && \
    apk add --update gettext libintl
################
# To set up timezone, uncomment the following lines
#
#    apk add --update tzdata && \
#    echo "Australia/Melbourne" > /etc/timezone && \
#    ln -snf /usr/share/zoneinfo/Australia/Melbourne /etc/localtime && \
################
    rm -rf /var/cache/apk/*

ENTRYPOINT ["sh", "-c"]
CMD ["node", "-v"]
