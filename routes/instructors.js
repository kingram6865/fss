const { Router } = require('express')
const controllers = require('../controllers/instructors')
const router = Router()

router.get('/instructors', controllers.getInstructors)
router.get('/instructors/:id', controllers.getInstructor)
router.post('/instructors', controllers.createInstructor)
router.put('/instructors', controllers.editInstructor)
router.delete('/instructors', controllers.deleteInstructor)

module.exports = router