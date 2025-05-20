const axios = require('axios');

app.post('/chat', async (req, res) => {
  const { message } = req.body;

  try {
    const response = await axios.post('https://api.openai.com/v1/chat/completions', {
      model: 'gpt-3.5-turbo',
      messages: [{ role: 'user', content: message }]
    }, {
      headers: {
        'Authorization': `Bearer YOUR_OPENAI_API_KEY`
      }
    });

    res.json({ response: response.data.choices[0].message.content });
  } catch (err) {
    res.status(500).json({ response: 'Terjadi kesalahan.' });
  }
});
