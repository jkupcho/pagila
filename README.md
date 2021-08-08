# Pagila Pre-Built Docker

Uses the [Pagila][1] repository which is a Postgres implementation of the MySQL sample database Sakila. The enhancement added is data is loaded at startup rather than adding it at runtime.

## Building and running locally

The pagila schema relies on a database named `pagila` to be created. Rather than touching the SQL itself, use the environment variable `POSTGRES_DB` to have the image create the database at startup.

```bash
$ docker build . -t pagila:13.3
$ docker run -p 5432:5432 -e POSTGRES_PASSWORD=password -e POSTGRES_DB=pagila pagila:13.3
```

## Using the database

Given the above configuration, data should be populated in the `pagila` database and connections over port `5432` with username `postgres` and password `password` should be available.

## Other stuff

Files built into the image should be placed in the `include` directory with the path after `include` being the absolute path within the image.

For example, given `include/etc/some/path/some.file` the convention would be to add these images as follows:

```
ADD include/etc/some/path/some.file /etc/some/path/some.file
```

[1]: https://github.com/devrimgunduz/pagila