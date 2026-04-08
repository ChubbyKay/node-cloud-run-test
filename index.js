const express = require('express');
const app = express();

// Cloud Run 會自動注入 PORT 環境變數，預設通常是 8080
const port = process.env.PORT || 8080;

app.get('/', (req, res) => {
  res.json({ message: 'Hello World from Cloud Run!', status: 'success' });
});

app.listen(port, () => {
  console.log(`App listening on port ${port}`);
});