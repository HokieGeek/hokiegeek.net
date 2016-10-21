FROM node:6-onbuild

EXPOSE 3000

## Install typings
RUN npm run typings install

## TODO: do this for all of the subs?
## Mark as a production angular app
#RUN sed -i "/@NgModule/i\
#import { enableProdMode } from '@angular/core';\n\
#enableProdMode();\n\
#" app/app.module.ts

## Install serve
RUN npm install serve
RUN sed -i 's/^\([ \t]*"start": \).*$/\1"tsc \&\& serve",/' package.json
