# Web stack debugging 4

Fixes an Nginx server that fails many requests under load by raising its open file limit with Puppet.

## Files
- `0-the_sky_is_the_limit_not.pp`: Puppet manifest that raises the Nginx file descriptor limit and restarts Nginx.
