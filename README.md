# nginx ModSecurity Update

Bash script to update nginx ModSecurity module with installed nginx version

## Usage

This script is to update an existing nginx ModSecurity configuration when the nginx version is updated on the server. If you need to set up a new ModSecurity configuration on nginx you can follow the guide at https://www.linuxjournal.com/content/modsecurity-and-nginx

## Requirements

Expects the ModSecurity nginx connector to be available in `/opt/ModSecurity-nginx`

If not currently available you can clone the repo into your `/opt` directory:

```
git clone https://github.com/SpiderLabs/ModSecurity-nginx
```

