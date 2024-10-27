Code for my personal website.

## How-Tos for my own personal reference

### How to service the site locally using docker

Build image
```
docker compose build
```

Run using the default CMD as written in Dockerfile with port forwarding from 5000 in the container to localhost:4000 locally. The site can then viewed in browser at `127.0.0.1:4000` aka localhost.
```
docker compose up
```

The container can be removed by running `docker compose down`.

The compose file configures the following when launching a container:
- The correct port is exposed
- The command to `serve` has the correct `--host` option set.
- The required Gemfile and `.bundle` directory are mounted.

Check ability to build with the following:
```
docker compose run --rm jekyll bundle exec jekyll build
```

You can check the error code with
```
docker compose run --rm jekyll bundle exec jekyll build; echo $?
```
