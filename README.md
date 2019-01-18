Workshop given by @dunglas 💗

# Install:

```
$ make install
```

Routes:

* `http://127.0.0.1:8080/` to open the Books list (web format).
* `http://127.0.0.1:8080/api` to access ApiPlatform page and manipulate books from here.
* `http://127.0.0.1:3000/` to open Mercure demo page.

# Use Mercure features

You can add a new Book object from the API by either using ApiPlatform with the web interface, but it's better to reproduce a somehow _real_ case of adding a POST object.

That's why I suggest you to directly simulate an external client creating a book with a simple CURL request:

```
curl -X POST "http://127.0.0.1:8080/api/books" -H "accept: application/json" -H "Content-Type: application/json" -d "{\"title\": \"Ubik, by Philip K. Dick\"}"
```

Feel free to change the Book title to add another one as you wish.
