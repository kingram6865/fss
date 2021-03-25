const { Router } = require('express')
const controllers = require('../controllers/schedule')
const router = Router()

router.get('/schedule', controllers.getAppointments)
router.get('/schedule/:id', controllers.getAppointment)
router.post('/schedule', controllers.addAppointment)
router.put('/schedule/:id', controllers.editAppointment)
router.delete('/schedule/:id', controllers.deleteAppointment)