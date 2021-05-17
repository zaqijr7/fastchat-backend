const routes = require('express').Router()
const authController = require('../controllers/auth')

routes.post('/', authController.register)
routes.patch('/', authController.login)
// routes.delete('/', authController.logout)

module.exports = routes
