# WordPress Starter Kit

The starting place for building a website on the WordPress platform.

## Folder Structure

```
├── composer.json
├── config
│   ├── application.php
│   └── environments
│       ├── development.php
│       ├── staging.php
│       └── production.php
├── html
│   ├── app
│   │   ├── mu-plugins
│   │   ├── plugins
│   │   ├── themes
│   │   └── languages
│   ├── media
│   ├── wp-config.php
│   ├── index.php
│   └── wp
├── scripts
└── vendor
```

- In order not to expose sensitive files in the webroot, we move what's required into a `html/` directory including the vendor's `wp/` source, and the `wp-content` source.
- `wp-content` has been named `app` to better reflect its contents. It contains application code and not just "static content". It also matches up with other frameworks such as Symfony and Rails.
- `wp-config.php` remains in the `web/` because it's required by WordPress, but it only acts as a loader. The actual configuration files have been moved to `config/` for better separation.
- `vendor/` is where the Composer managed dependencies are installed to.
- `wp/` is where the WordPress core lives. It's also managed by Composer but can't be put under `vendor` due to WP limitations.
- `uploads` has been named `media` and moved outside the `app` folder to better separate code and "static" content.
- `scripts/` hold the bash scripts used for setting up and running tasks on the environment.
