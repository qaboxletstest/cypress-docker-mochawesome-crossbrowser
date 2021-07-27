FROM cypress/included:6.8.0 as TEST
RUN mkdir /cypress-docker
WORKDIR /cypress-docker
COPY ./package.json .
COPY ./package-lock.json .
COPY ./cypress.json .
COPY ./cypress ./cypress
RUN npm install
ENTRYPOINT ["npm", "run"]

FROM busybox as E2E
RUN MKDIR /e2e
COPY --from=TEST ./cypress-docker ./e2e
#show the size of the current folder so we know
RUN ls -la
RUN du -sh