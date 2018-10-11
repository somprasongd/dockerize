import express from 'express';
import morgan from 'morgan';

const PORT = process.env.AppName_PORT || 3000;
const app = express();

// use middlewares
if (app.get('env') === 'development') {
  app.use(morgan('dev'));
}

app.get('/', (req, res) => {
  console.log('handling GET request...');
  res.send('Hello from Express');
});

// start server
app.listen(PORT, () => {
  console.log(`Server start on port ${PORT}`);
});
