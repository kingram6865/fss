const { Router } = require('express')
const controllers = require('../controllers/lessons')
const router = Router()

router.get('/lessondetails', controllers.getLessonDetails)
router.get('/lessondetails/:id', controllers.getLessonDetail)

module.exports = router