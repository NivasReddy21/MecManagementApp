const router = require("express").Router();
const path = require("path");
const post = require("./submitForm");

router.route("/").post((req, res) => {
    var name = req.body.name;
    var email = req.body.email;
    var branch = req.body.branch;
    submit(name, email, branch);
    res.send(`Form Submitted`);
});

module.exports = router;