const { Router } = require('express')
const controllers = require('../controllers/locations')
const router = Router()

router.get('/locations', controllers.getLocations)
router.get('/locations/:id', controllers.getLocation)

module.exports = router