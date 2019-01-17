# Docker Registry

## Installation

1. Create user: `sudo htpasswd -B ./nginx/registry.password new-user-name`
2. Modify configuration:

   - Add domains and email addresses to init-letsencrypt.sh
   - Replace all occurrences of example.org with primary domain (the first one you added to init-letsencrypt.sh) in nginx/registry.conf

3. Run init the script:

   ```bash
   chmod +x ./init-letsencrypt.sh
   ./init-letsencrypt.sh
   ```

4. Run server: `docker-compose up`

5. Optional: If this docker-comose do not start when startup.

   ```bash
   # step 1
   # Replace WorkingDirectory=/home/your-user-name/docker-registry with your user name
   # step 2
   sudo cp docker-registry.service /etc/systemd/system/docker-registry.service

   # step 3
   sudo systemctl daemon-reload
   sudo systemctl enable docker-registry
   sudo systemctl start docker-registry
   ```
