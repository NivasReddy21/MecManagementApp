const router = require('express').Router();
const path = require('path')
const post = require('./posts')

router.route('/').post((req, res) => {
    var title = req.body.title
    var description = req.body.description
    post(title, description)
    res.send(`Title Posted ${title}`)
})

module.exports = router