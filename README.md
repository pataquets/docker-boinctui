# docker-boinctui

Docker container for [boinctui][boinctui], a fullscreen text mode manager for
BOINC client.

```bash
docker run -it \
           --rm \
           --name boinctui \
           -e TERM='screen' \
           --net container:boinc-client \
                cristiancantoro/boinctui
```

## Credits

This image is based on [pataquets' docker-boinctui][docker-boinctui] image.

[boinctui]: https://sourceforge.net/projects/boinctui/
[docker-boinctui]: https://github.com/pataquets/docker-boinctui
