# stack

## To run graphql + PWA locally, with a LIVE magento store:

### 1. Install git submodules

```bash
git submodule update --init
```

### 2. Copy `local.env.example` -> `local.env` 
Here you can update the host/user/password to match a magento store you have an admin password for.
 
```bash
cp local.env.example local.env
```

### 3. Run docker-compose, with the special setup file 'without-docker.yml'

```bash
docker-compose -f without-magento.yml up
```

### 4. Add pwa.m2 to your hosts file

```bash
sudo vim /etc/hosts

# add these lines
0.0.0.0 pwa.m2
0.0.0.0 shop.pwa.m2
```

**That's it!**, it will take some time the first time around as all of the images
will be built/downloaded.

You can now access:
 - graphql UI: http://0.0.0.0:8001/graphql
 - pwa: https://pwa.m2
