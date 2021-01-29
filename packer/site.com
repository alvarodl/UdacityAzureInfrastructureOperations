server {
    listen 8080;
    listen [::]:8080;

    root /var/www/site.com;
    index index.html;

    location / {
        try_files $uri /index.html;
    }
}