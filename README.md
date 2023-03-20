# Cloudflare Dynamic IP Updater

This is a simple bash script that updates a Cloudflare A record with the current dynamic IP address using the Cloudflare API. It is intended to be run as a cron job on a Linux server or workstation.

## Prerequisites

- A Cloudflare account with an API key and email address
- The `curl` command-line tool

## Installation

1. Clone this repository or download the `update-cloudflare-a-record.sh` script.
2. Replace the placeholders in the script with your own Cloudflare API credentials, zone ID, and record ID.
3. Make the script executable with the command `chmod +x update-cloudflare-a-record.sh`.
4. Test the script by running `./update-cloudflare-a-record.sh`. The A record for your domain should be updated with your current IP address.
5. Add a cron job to run the script periodically. For example, you can run the script every 5 minutes with the following crontab entry:

## Deploy this as a crontab
```bash
*/5 * * * * /path/to/update-cloudflare-a-record.sh
```

## Configuration

The following variables in the `update-cloudflare-a-record.sh` script should be replaced with your own values:

- `CF_API_KEY`: Your Cloudflare API key.
- `CF_API_EMAIL`: Your Cloudflare account email address.
- `ZONE_ID`: The ID of the Cloudflare zone containing the A record you want to update.
- `RECORD_ID`: The ID of the A record you want to update.
- `DOMAIN_NAME`: The domain name of the A record you want to update.

## License

This script is licensed under the MIT License. See the `LICENSE` file for more information.

<br/>

---

# Internet Bandwidth Measurement

This repository contains a Bash script for measuring internet bandwidth using `speedtest-cli` or `wget`.

## Usage

1. Clone the repository:

```bash
git clone https://github.com/Paul1404/bash-scripts.git
cd internet-bandwidth-measurement
```

2. Make the Bash script executable:

```bash
chmod +x bandwidth_test.sh
```

3. Run the script
```bash
./bandwidth_test.sh
```

## Dependencies

- `speedtest-cli` (optional)
- `wget`

## License

This project is licensed under the MIT License. See the LICENSE file for details.
