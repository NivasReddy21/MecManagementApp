var admin = require("../node_modules/firebase-admin");
var serviceAccount = require("./serviceAccountKey.json");
var db = admin.database();
var ref = db.ref("posts/").orderByChild("time")


const router = require('express').Router();
const path = require('path')

router
    .route("/")
    .get(function(req, res, err) {
        // Attach an asynchronous callback to read the data at our posts reference
        ref.once("value", function(snapshot) {
            var list = [];
            snapshot.forEach(function(elem) {
                list.push(elem.val());
            })

            res.json(list);

        }, function(errorObject) {
            console.log("The read failed: " + errorObject.code);
            res.status(500).send(errorObject.code);
        });
    });

module.exports = router