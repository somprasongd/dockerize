# Docker Registry

## Installation

1. Modify configuration:

   - Add domains and email addresses to init-letsencrypt.sh
   - Replace all occurrences of example.org with primary domain (the first one you added to init-letsencrypt.sh) in config/nginx.conf

2. Run init the script:

   ```bash
   chmod +x ./init-letsencrypt.sh
   ./init-letsencrypt.sh
   ```

3. Run server: `docker-compose up`
