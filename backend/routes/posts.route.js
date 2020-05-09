const router = require('express').Router();
const path = require('path')
const post = require('./posts')

router.route('/').post((req, res) => {
    var title = req.body.title
    var description = req.body.description
    var url = req.body.url
    post(title, description, url)
    res.send(`Title Posted ${title}`)
})

module.exports = router