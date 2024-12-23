const html = await Bun.file('./index.html').text()
const css = await Bun.file('./styles.css').text()
const svg = await Bun.file('./curly-brackets.svg').text()

Bun.serve({
  port: Bun.env.SERVER_PORT,
  static: {
    '/': new Response(html),
    '/styles.css': new Response(css),
    '/curly-brackets.svg': new Response(svg),
  },
  fetch(req) {
    // const url = new URL(req.url)

    // if (url.pathname === '/') {
    //   return new Response(Bun.file('./index.html'))
    // }

    // if (url.pathname === '/styles.css') {
    //   return new Response(Bun.file('./styles.css'))
    // }

    return new Response('404!')
  },
})

console.log('Server running on port', Bun.env.SERVER_PORT)
