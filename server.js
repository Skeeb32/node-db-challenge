const express = require(`express`);

const projectRouter = require(`./routes/project-routes`);
const resourcesRouter = require(`./routes/resources-routes`);
const server = express();

server.use(`/api/projects`, projectRouter);
server.use(`/api/resources`, resourcesRouter);

module.exports = server;