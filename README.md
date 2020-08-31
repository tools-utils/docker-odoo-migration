# docker-odoo-migration
Run odoo database migration in docker-compose

# About
This repository is a `docker-compose` to mirgate `odoo` `9.0` to `odoo` `13.0` based on the following resources published by [dhruvadave5297](https://medium.com/@dhruvadave5297):

- [Odoo Database Migration](https://medium.com/@dhruvadave5297/odoo-database-migration-3df0050a231c)
- [migrate.py](https://gist.github.com/DhruvaDave/67be77caf492aa09cdb84c7c51d5ee39)

# Migrate odoo `9.0` to `10.0`

- Edit `.env`
```
DB_NAME=odoo9
TARGET_VERSION=10.0
PIP=pip
```

- Start migration

```
docker-compose up openupgrade
```

# Migrate odoo `10.0` to `11.0`

- Edit `.env`
```
DB_NAME=odoo10
TARGET_VERSION=11.0
PIP=pip3
```

- Start migration

```
docker-compose up openupgrade
```

# Migrate odoo `11.0` to `12.0`

- Edit `.env`
```
DB_NAME=odoo11
TARGET_VERSION=12.0
PIP=pip3
```

- Start migration

```
docker-compose up openupgrade
```

# Migrate odoo `12.0` to `13.0`

- Edit `.env`
```
DB_NAME=odoo12
TARGET_VERSION=13.0
PIP=pip3
```

- Start migration

```
docker-compose up openupgrade
```
