FROM alpine:3.7

RUN apk add --update python py-pip bash\
	&& pip install --upgrade pip \
	&& pip install boto3 requests PyYAML prettytable argparse awscli \
    && rm /var/cache/apk/*
VOLUME /root/.aws
VOLUME /project
WORKDIR /project
CMD ["bin/bash"]
#ENTRYPOINT ["bin/bash"]
