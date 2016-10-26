FROM node:6-onbuild

EXPOSE 3000

RUN npm install --global tsc

# RUN npm run tsc
