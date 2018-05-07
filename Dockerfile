#Ensure .dockerignore contains:
#node_modules
#.dockerignore
#Dockerfile
#npm-debug.log
#.git
#.hg
#.svn

FROM gcr.io/google_appengine/nodejs

WORKDIR /usr/src/app
RUN git clone https://github.com/atanner27/hello_world.git
WORKDIR /usr/src/app/hello_world

RUN npm install --only=production

EXPOSE 80
CMD [ "npm", "start" ]
