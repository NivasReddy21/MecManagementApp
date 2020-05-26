var admin = require("../node_modules/firebase-admin");
var serviceAccount = require("./serviceAccountKey.json");

var db = admin.database();

function submit(name, email, branch) {
    var d = new Date();
    var n = d.getTime();
    var ref = db.ref("form/");
    ref.push().set({
        name: name,
        time: n * -1,
        email: email,
        branch: branch,
    });

    console.log(`Form Submitted`);
}

module.exports = post;