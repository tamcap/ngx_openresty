README
======

This repository is basically a place for me to store the latest OpenResty + Nginx combinations so that I can use them to provision new servers using Ansible. Feel free to use it directly or fork it.

Contains:
---------
* OpenResty 1.9.3.2
* Nginx 1.9.3
* LuaJit

Built-in modules:
-----------------
* GeoIP
* Gzip static
* Real IP
* Secure Link
* SPDY
* SSL
* Status

Third party modules:
--------------------
* Upload Progress
* Auth Digest
* ngx_pagespeed 1.9.32.10
* Upstream Fair Load Balancer
* Mod Zip

This is how you configure it:

    ./configure --prefix=/etc \
    --with-luajit \
    --with-http_ssl_module \
    --with-http_realip_module \
    --with-http_gzip_static_module \
    --with-http_spdy_module \
    --with-http_stub_status_module \
    --with-http_secure_link_module \
    --with-http_geoip_module \
    --add-module=packages/nginx-upload-progress-module-0.9.1 \
    --add-module=packages/nginx-http-auth-digest-master \
    --add-module=packages/ngx_pagespeed-release-1.9.32.10 \
    --add-module=packages/nginx-upstream-fair-master \
    --add-module=packages/mod_zip-master \
    -j4

Name
====

ngx_openresty - Turning Nginx into a full-fledged Web App Server

Table of Contents
=================

* [Name](#name)
* [Description](#description)
    * [For Users](#for-users)
    * [For Bundle Maintainers](#for-bundle-maintainers)
* [Mailing List](#mailing-list)
* [Report Bugs](#report-bugs)
* [Copyright & License](#copyright--license)

Description
===========

ngx_openresty is a full-fledged web application server by bundling the standard nginx core,
lots of 3rd-party nginx modules, as well as most of their external dependencies.

This bundle is maintained Yichun Zhang (agentzh).

Because most of the nginx modules are developed by the bundle maintainers, it can ensure
that all these modules are played well together.

The bundled software components are copyrighted by the respective copyright holders.

The homepage for this project is http://openresty.org.

For Users
---------

Visit http://openresty.org/#Download to download the latest bundle tarball, and
follow the installation instructions in the page http://openresty.org/#Installation.

For Bundle Maintainers
----------------------

The bundle's source is at the following git repository:

https://github.com/openresty/ngx_openresty

To reproduce the bundle tarball, just do

```bash
make
```

at the top of the bundle source tree.

<<<<<<< HEAD
=======
Please note that you may need to install some extra dependencies, like `perl`, `dos2unix` and
the Perl CPAN mdoule `Markdown::Pod`. On Fedora 22, for example, installing the dependencies
is as simple as running the following commands:

```bash
sudo dnf install perl dos2unix
sudo cpan Markdown::Pod
```

>>>>>>> upstream/master
[Back to TOC](#table-of-contents)

Mailing List
============

You're very welcome to join the English OpenResty mailing list hosted on Google Groups:

https://groups.google.com/group/openresty-en

The Chinese mailing list is here:

https://groups.google.com/group/openresty

[Back to TOC](#table-of-contents)

Report Bugs
===========

You're very welcome to report issues on GitHub:

https://github.com/agentzh/ngx_openresty/issues

[Back to TOC](#table-of-contents)

Copyright & License
===================

The bundle itself is licensed under the 2-clause BSD license.

Copyright (c) 2011-2015, Yichun "agentzh" Zhang (章亦春) <agentzh@gmail.com>, CloudFlare Inc.

This module is licensed under the terms of the BSD license.

Redistribution and use in source and binary forms, with or without
modification, are permitted provided that the following conditions are
met:

* Redistributions of source code must retain the above copyright notice, this list of conditions and the following disclaimer.
* Redistributions in binary form must reproduce the above copyright notice, this list of conditions and the following disclaimer in the documentation and/or other materials provided with the distribution.

THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS
IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED
TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A
PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT
HOLDER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL,
SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED
TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR
PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF
LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING
NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS
SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.

[Back to TOC](#table-of-contents)

