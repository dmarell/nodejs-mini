const express = require('express');
const router = express.Router();
const app = require('express')();

// console.log('Environment:', app.get('env'));

router.get('/', function (req, res) {
    res.json({
        message: 'nodejs-mini API'
    });
});

router.get('/version', function (req, res) {
    console.log('Received GET /version');
    res.json({
        value: process.env.VERSION,
        deployed: process.env.DEPLOY_TIMESTAMP
    });
});

// Register routes
app.use('/', router);

const port = 9090;
app.listen(port);
console.log('Server is up on port', port);

