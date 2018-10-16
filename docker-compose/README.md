# Running docker-compose as a systemd service

## Files

- /path/to/docker-compose-dot-yml/docker-compose.yml
- /path/to/docker-compose-dot-yml/docker-compose.service

## Installation

```bash
# step 1
sudo cp /path/to/docker-compose-dot-yml/docker-compose.service /etc/systemd/system/docker-compose.service

# step 2
sudo systemctl daemon-reload
sudo systemctl enable docker-compose
sudo systemctl start docker-compose
```
