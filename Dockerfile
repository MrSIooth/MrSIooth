FROM whanos-javascript

RUN npm install -g typescript@4.4.3

RUN tsc

EXPOSE 3000

RUN find . -name "*.ts" -type f -not -path "./node_modules/*" -delete