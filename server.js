require('dotenv').config()
const express = require('express')
const cors = require('cors')
const logger = require('morgan')
const db = require('./db/models/dbData')
const app = express()
const schedule = require('./routes/scheduleRoute')

const PORT = process.env.PORT || 3000
const SERVER = process.env.HOST || 'localhost'

app.get('/favicon.ico', (req, res) => res.status(204))
app.use(cors())
app.use(logger('dev'))
app.use('api', schedule)

app.listen(PORT, SERVER, () => console.log(`Listening on port: ${PORT} at ${SERVER}`))