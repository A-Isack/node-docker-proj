require('dotenv').config()
const express = require('express');
const app = express()
app.use('/public', express.static('public'))

app.get('/', async (req, res, next) => {
    res.send('this is the homepage')
})

app.get('*', (req, res) => {
    res.send('this route does not exist <a href="/">GO HOME</a>')
})

const PORT = parseInt(process.env.PORT) || 8080

app.listen(PORT, () => {
    console.table({ status: 'listening', PORT })
})