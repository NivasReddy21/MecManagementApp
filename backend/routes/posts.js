var admin = require("../node_modules/firebase-admin");
var serviceAccount = require("./serviceAccountKey.json");
admin.initializeApp({
    credential: admin.credential.cert(serviceAccount),
    databaseURL: "https://mecmanagementapp.firebaseio.com/",
});
var db = admin.database();

function post(title, description, url) {
    var d = new Date();
    var n = d.getTime();
    var ref = db.ref("posts/");
    ref.push().set({
        title: title,
        time: n * -1,
        description: description,
        url: url,
    });

    console.log(`title posted ${title} , ${description}`);
}

module.exports = post;