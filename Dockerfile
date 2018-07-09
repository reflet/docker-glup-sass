FROM node:9.11.2

RUN apt-get update
RUN apt-get install -y less vim

ARG USER="node"
ARG UID="1000"
ARG GID="1000"
ENV WORKSPACE="/src/"

# set workspace.
RUN mkdir $WORKSPACE -p
WORKDIR $WORKSPACE

RUN npm config set unsafe-perm true
RUN mkdir scss css

# install glup (init).
#RUN npm init -y
#RUN npm install gulp-cli -g
#RUN npm install gulp -D
#RUN npm install gulp-watch gulp-sass 
#RUN npm install gulp-postcss autoprefixer postcss-flexbugs-fixes csswring

# install glup (package.json).
ADD package.json package.json
ADD package-lock.json package-lock.json
RUN npm install gulp-cli -g
RUN npm install

# add gulpfile.
#ADD gulpfile.js gulpfile.js

# set node user.
RUN groupmod -g $GID node && usermod -u $UID -g $GID $USER
RUN chown -R $UID:$GID $WORKSPACE
USER $USER

