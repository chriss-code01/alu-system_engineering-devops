# Firewall

This project covers the configuration of the UFW (Uncomplicated Firewall) on Ubuntu servers.

## Task 0: Block all incoming traffic but

Configure UFW on `7260-web-01` to block all incoming traffic by default while allowing the following TCP ports:

- **22:** SSH
- **80:** HTTP
- **443:** HTTPS

Outgoing traffic is allowed by default.

The firewall rules are configured using UFW commands in `0-block_all_incoming_traffic_but`.
