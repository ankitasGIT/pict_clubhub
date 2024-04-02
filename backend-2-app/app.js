const bodyParser = require('body-parser');
const express = require('express')
const app = express();
const userRouter = require('./routers/user.routers.js');


app.use(bodyParser.json());

app.use('/', userRouter)


module.exports = app