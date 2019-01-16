<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Document</title>
</head>
<body>

<script>
    const hubUrl = new URL('http://127.0.0.1:3000/hub');
    hubUrl.searchParams.append('topic', 'http://example.com/foo/bar');
    hubUrl.searchParams.append('topic', 'http://example.com/foo/bar2');
    hubUrl.searchParams.append('topic', 'http://example.com/books/{id}');

    const es = new EventSource(hubUrl.toString());
    es.onmessage = (data) => {};
</script>
</body>
</html>
