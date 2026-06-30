const express = require('express');
const app = express();
const port = 3000;

app.get('/verify', (req, res) => {
    // Đây là nơi bạn kiểm tra key
    const key = req.query.key;
    if (key === "QTIEN-VIP") {
        res.send("print('Key đúng! Đây là script của bạn...')");
    } else {
        res.status(403).send("print('Key sai!')");
    }
});

app.listen(port, () => console.log('Server đang chạy!'));
