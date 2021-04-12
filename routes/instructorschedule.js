const { Router } = require('express')
const controllers = require('../controllers/instructorschedule')
const router = Router()

router.get('/instructorschedule', controllers.getInstructorsSchedule)
router.get('/instructorschedule/:id', controllers.getInstructorSchedule)
router.post('/instructorschedule', controllers.createInstructorSchedule)
router.put('/instructorschedule', controllers.editInstructorSchedule)
router.delete('/instructorschedule', controllers.deleteInstructorSchedule)

module.exports = router