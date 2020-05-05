const express = require('express')
const app = express()
const port = 4444;
const cors = require('cors')

app.use(express.json())
app.use(cors())

const usersRouter = require('./routes/users')
const postsRouter = require('./routes/posts.route')
const homeRouter = require('./routes/home')
const showPosts = require('./routes/show.posts')

app.use('/users', usersRouter)
app.use('/posts', postsRouter)
app.use('/', homeRouter)
app.use('/showposts', showPosts)


app.listen(port, () => console.log("On port: 4444"))