FROM node:9

# RUN mkdir -p /app

# COPY . /app


# RUN ls root
#RUN ls
#COPY /Users/saish.dharvotkar/.aws root/.aws
# WORKDIR /app

# Install AWS CL
# RUN apt-get update && \
#   apt-get install -y python3 python3-pip && \
#   pip3 install --upgrade pip && \
#   apt-get clean
# RUN pip3 --no-cache-dir install --upgrade awscli

# RUN npm run build
# RUN aws s3 sync build s3://so-you-think-you-can-horoscope
