const router = require('express').Router();
const path = require('path')

router.route('/').post((req, res) => {
    console.log(req.body)
        // res.sendFile(path.join(__dirname, 'pp.png'))
    res.send("Hello")
})

module.exports = router