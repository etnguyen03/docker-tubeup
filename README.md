# docker-tubeup
Docker container for Tubeup

![Docker Cloud Build Status](https://img.shields.io/docker/cloud/build/etnguyen03/tubeup) ![Docker Image Size (latest by date)](https://img.shields.io/docker/image-size/etnguyen03/tubeup) ![Docker Pulls](https://img.shields.io/docker/pulls/etnguyen03/tubeup) 

Environment variables:

|Name|Value|
:--|:--|
|`S3ACCESS`|S3 access key|
|`S3SECRET`|S3 secret key|

Get both `S3ACCESS` and `S3SECRET` from [this page](https://archive.org/account/s3.php) after registering/authenticating.

Example - if you're archiving [this video](https://www.youtube.com/watch?v=dQw4w9WgXcQ):

    docker run -it -e "S3ACCESS={{ S3 ACCESS KEY HERE }}" -e "S3SECRET={{ S3 SECRET KEY HERE }}" etnguyen03/tubeup dQw4w9WgXcQ

---

* `docker-entrypoint.sh`: entrypoint
* `ia.ini` - template for archive.org's S3 keys
* `requirements.txt` - pip requirements
