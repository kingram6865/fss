const { Router } = require('express')
const controllers = require('../controllers/sessions')
const router = Router()

router.get('/sessions', controllers.getSessions)
router.get('/sessions/:id', controllers.getSession)
router.post('/sessions', controllers.createSession)
router.put('/sessions/:id', controllers.editSession)
router.delete('/sessions/:id', controllers.deleteSession)

module.exports = router