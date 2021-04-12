require('dotenv').config()
const express = require('express')
const https = require('https')
const cors = require('cors')
const logger = require('morgan')
const sessions = require('./routes/sessions')
const schedule = require('./routes/schedule')
const clients = require('./routes/clients')
const intervals = require('./routes/intervals')
const locations = require('./routes/locations')
const lessondetails = require('./routes/lessons')
const instructors = require('./routes/instructors')

const PORT = process.env.PORT || 3000
// const SERVER = process.env.HOST || 'localhost'

const app = express()

app.get('/favicon.ico', (req, res) => res.status(204))
app.use(cors())
app.use(logger('dev'))
app.use('/api', schedule)
app.use('/api', clients)
app.use('/api', intervals)
app.use('/api', lessondetails)
app.use('/api', instructors)
app.use('/api', sessions)
app.use('/api', locations)

// app.listen(PORT, SERVER, () => console.log(`Listening on port: ${PORT} at ${SERVER}`))
app.listen(PORT, () => console.log(`Listening on port: ${PORT}`))