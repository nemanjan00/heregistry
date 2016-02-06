# heregistry

Tool for building docker container using Herokuish and pushing it to private docker registry.

## Usage: 

```bash
./build.sh container-name registry.example.org:5000 /path/to/app
```

## Example: 

```
root@ubuntu:~# ./build.sh php-example registry.example.org:5000 /root/php-getting-started
-----> PHP app detected
-----> Bootstrapping...
-----> Installing system packages...
       NOTICE: No runtime required in composer.json; requirements
       from dependencies in composer.lock will be used for selection
       - php (7.0.2)
       - Apache (2.4.16)
       - Nginx (1.8.0)
-----> Enabling PHP extensions...
       - ext-zend-opcache (automatic)
-----> Installing dependencies...
       Composer version 1.0.0-alpha11 2015-11-14 16:21:07
       
       NOTICE: You've reached the GitHub API's request rate limit.
       Composer will try and fall back to slower downloads from source.
       It's strongly recommended you use a custom OAuth token; see
       http://devcenter.heroku.com/articles/php-support#custom-github-oauth-tokens
       
       Loading composer repositories with package information
       Installing dependencies from lock file
       - Installing psr/log (1.0.0)
       Downloading: Connecting...    Failed to download psr/log from dist: Could not authenticate against github.com
       Now trying to download from source
       - Installing psr/log (1.0.0)
       Cloning fe0936ee26643249e916849d48e3a51d5f5e278b
       
       - Installing monolog/monolog (1.16.0)
       Downloading: Connecting...    Failed to download monolog/monolog from dist: Could not authenticate against github.com
       Now trying to download from source
       - Installing monolog/monolog (1.16.0)
       Cloning c0c0b4bee3aabce7182876b0d912ef2595563db7
       
       - Installing symfony/routing (v2.7.3)
       Downloading: Connecting...    Failed to download symfony/routing from dist: Could not authenticate against github.com
       Now trying to download from source
       - Installing symfony/routing (v2.7.3)
       Cloning ea9134f277162b02e5f80ac058b75a77637b0d26
       
       - Installing symfony/http-foundation (v2.7.3)
       Downloading: Connecting...    Failed to download symfony/http-foundation from dist: Could not authenticate against github.com
       Now trying to download from source
       - Installing symfony/http-foundation (v2.7.3)
       Cloning 863af6898081b34c65d42100c370b9f3c51b70ca
       
       - Installing symfony/event-dispatcher (v2.7.3)
       Downloading: Connecting...    Failed to download symfony/event-dispatcher from dist: Could not authenticate against github.com
       Now trying to download from source
       - Installing symfony/event-dispatcher (v2.7.3)
       Cloning 9310b5f9a87ec2ea75d20fec0b0017c77c66dac3
       
       - Installing symfony/debug (v2.7.3)
       Downloading: Connecting...    Failed to download symfony/debug from dist: Could not authenticate against github.com
       Now trying to download from source
       - Installing symfony/debug (v2.7.3)
       Cloning 9daa1bf9f7e615fa2fba30357e479a90141222e3
       
       - Installing symfony/http-kernel (v2.7.3)
       Downloading: Connecting...    Failed to download symfony/http-kernel from dist: Could not authenticate against github.com
       Now trying to download from source
       - Installing symfony/http-kernel (v2.7.3)
       Cloning 405d3e7a59ff7a28ec469441326a0ac79065ea98
       
       - Installing pimple/pimple (v1.1.1)
       Downloading: Connecting...    Failed to download pimple/pimple from dist: Could not authenticate against github.com
       Now trying to download from source
       - Installing pimple/pimple (v1.1.1)
       Cloning 2019c145fe393923f3441b23f29bbdfaa5c58c4d
       
       - Installing silex/silex (v1.3.1)
       Downloading: Connecting...    Failed to download silex/silex from dist: Could not authenticate against github.com
       Now trying to download from source
       - Installing silex/silex (v1.3.1)
       Cloning 0507b772519ab0d9dd258bb39748921229ad5c46
       
       - Installing twig/twig (v1.19.0)
       Downloading: Connecting...    Failed to download twig/twig from dist: Could not authenticate against github.com
       Now trying to download from source
       - Installing twig/twig (v1.19.0)
       Cloning edbeaf43b0a606cdaadc32a11d2673614a377b90
       
       - Installing symfony/twig-bridge (v2.7.3)
       Downloading: Connecting...    Failed to download symfony/twig-bridge from dist: Could not authenticate against github.com
       Now trying to download from source
       - Installing symfony/twig-bridge (v2.7.3)
       Cloning 1d7c50fc20f89c5ca4d440ed54abf049dc882c6e
       
       Generating optimized autoload files
-----> Preparing runtime environment...
-----> Checking for additional extensions to install...
-----> Discovering process types
       Procfile declares types -> web
The push refers to a repository [registry.example.org:5000/php-example]
8cff901218dd: Pushed 
102dbdca4aef: Pushed 
10eafbdbea89: Layer already exists 
d7cedfe077fd: Layer already exists 
d5c129c79dde: Layer already exists 
e2aeac43accb: Layer already exists 
5f70bf18a086: Layer already exists 
45befd8a8901: Layer already exists 
latest: digest: sha256:a0209d14d84c8708ca1dfe2497806b0e06e67e751157d637df00d05ca7a284a6 size: 1976
```

