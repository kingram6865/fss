require('dotenv').config()
const express = require('express')
const https = require('https')
const cors = require('cors')
const logger = require('morgan')
const schedule = require('./routes/scheduleRoute')

const PORT = process.env.PORT || 3000
const SERVER = process.env.HOST || 'localhost'

const app = express()

app.get('/favicon.ico', (req, res) => res.status(204))
app.use(cors())
app.use(logger('dev'))
app.use('/api', schedule)

// app.listen(PORT, SERVER, () => console.log(`Listening on port: ${PORT} at ${SERVER}`))
app.listen(PORT, () => console.log(`Listening on port: ${PORT}`))