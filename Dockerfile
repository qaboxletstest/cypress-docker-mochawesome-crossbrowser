FROM cypress/included:6.8.0
RUN mkdir /cypress-docker
WORKDIR /cypress-docker
COPY ./package.json .
COPY ./package-lock.json .
COPY ./cypress.json .
COPY ./cypress ./cypress
RUN npm install
ENTRYPOINT ["npm", "run"]