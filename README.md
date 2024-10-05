Code for my personal website.

## How-Tos for my own personal reference

### How to service the site locally using docker

Build image
```
docker build --tag github-io:latest .
```

Run using the default CMD as written in Dockerfile with port forwarding from 5000 in the container to localhost:4000 locally.
```
docker run -p 127.0.0.1:4000:5000 -it github-io
```

Then, inside the container run
```
bundle exec jekyll serve --host 0.0.0.0 --port 5000
```
to be able to view the page in browser at `127.0.0.1:4000` aka localhost.

Alternatively, run
```
docker run -p 127.0.0.1:4000:5000 -it github-io bundle exec jekyll serve --host 0.0.0.0 --port 5000
```
to run the `bundle exec` command in the container, effectively linking the two commands above.

Recommended: mount as follows:

```
docker run -p 127.0.0.1:4000:5000 -v ".:/jekyll/." -it github-io bundle exec jekyll serve --host 0.0.0.0 --port 5000
```

Note the `--rm` option of `docker run` removes the container after it has been exited.

Check ability to build with the following:
```
docker run --rm -it github-io bundle exec jekyll build
```

You can check the error code with
```
docker run --rm -it github-io bundle exec jekyll build; echo $?
```
