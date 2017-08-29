# Varnish
[http://varnish-cache.org/](http://varnish-cache.org/)

# How to use this image
``$ docker run --name my-app-varnish -d -p 80:8080 mecrawlings/varnish``

# Docker Compose
You'll most likely use this Varnish image in a compose or stack file in-front of another service (Kirby, Wordpress, Drupal, etc), which will look something like this:

```
version: "2"
services:
  kirby:
    image: mecrawlings/kirby-starterkit
  varnish:
    image: mecrawlings/varnish
    ports:
      - "80:8080"
    environment:
      VARNISH_BACKEND_ADDRESS: kirby

```
This will run a Kirby container with a Varnish cache in-front. The varnish container responds on port 80, internally Kirby is running on port 80 and Varnish on 8080 then Docker maps the Varnish port back to 80 externally.
