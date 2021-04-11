const { Router } = require('express')
const controllers = require('../controllers/intervals')
const router = Router()

/**
 * Return the list of time_intervals for lessons
 */

router.get('/intervals', controllers.getIntervals)
router.get('/intervals/:id', controllers.getInterval)

module.exports = router