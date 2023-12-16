FROM mariadb
COPY ./script/ /docker-entrypoint-initdb.d/ 
CMD [ "executable" ]