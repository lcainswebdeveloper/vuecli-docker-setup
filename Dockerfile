# base image
FROM node:8

# set working directory
WORKDIR /app

# add `/app/node_modules/.bin` to $PATH
ENV PATH /app/node_modules/.bin:$PATH

# install and cache app dependencies
#COPY package.json /app/package.json
RUN npm install
RUN npm install @vue/cli@3.7.0 -g

# Add user app
RUN groupadd -g 1001 www
RUN useradd -u 1001 -ms /bin/bash -g www www

# Copy existing application directory permiss
RUN chown www:www -R /app

# Change current user to www
USER www

# start app
CMD ["npm", "run", "serve"]