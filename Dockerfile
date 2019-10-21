# base image
FROM node:8

# set working directory
WORKDIR /home/node

# add `/app/node_modules/.bin` to $PATH
ENV PATH /app/node_modules/.bin:$PATH

# install and cache app dependencies
#COPY package.json /app/package.json
RUN npm install
RUN npm install @vue/cli@3.7.0 -g

USER node
# start app
CMD ["npm", "run", "serve"]
