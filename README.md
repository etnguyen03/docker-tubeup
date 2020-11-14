# docker-tubeup
Docker container for Tubeup

![Docker Build Status](https://github.com/etnguyen03/docker-tubeup/workflows/Docker/badge.svg) ![Docker Image Size (latest by date)](https://img.shields.io/docker/image-size/etnguyen03/tubeup) ![Docker Pulls](https://img.shields.io/docker/pulls/etnguyen03/tubeup) 

Environment variables:

|Name|Value|
:--|:--|
|`S3ACCESS`|S3 access key|
|`S3SECRET`|S3 secret key|

Get both `S3ACCESS` and `S3SECRET` from [this page](https://archive.org/account/s3.php) after registering/authenticating.

Example - if you're archiving [this video](https://www.youtube.com/watch?v=dQw4w9WgXcQ):

    docker run -it --rm -e "S3ACCESS={{ S3 ACCESS KEY HERE }}" -e "S3SECRET={{ S3 SECRET KEY HERE }}" etnguyen03/tubeup dQw4w9WgXcQ

## Listing of Files

* `docker-entrypoint.sh`: entrypoint
* `ia.ini` - template for archive.org's S3 keys
* `requirements.txt` - pip requirements

---

Copyright © 2020 Ethan Nguyen and contributors. All rights reserved.

This program is free software: you can redistribute it and/or modify it under the terms
of the GNU General Public License as published by the Free Software Foundation, either
version 3 of the License, or (at your option) any later version.

This program is distributed in the hope that it will be useful, but WITHOUT ANY WARRANTY;
without even the implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.
See the GNU General Public License for more details.

You should have received a copy of the GNU General Public License along with this program.
If not, see https://www.gnu.org/licenses/.

