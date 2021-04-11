const { Router } = require('express')
const controllers = require('../controllers/clients')
const router = Router()

router.get('/clients', controllers.getClients)
router.get('/clients/:id', controllers.getClient)
router.post('/clients', controllers.createClient)
router.put('clients/:id', controllers.editClient)
router.delete('/clients/:id', controllers.deleteClient)

module.exports = router