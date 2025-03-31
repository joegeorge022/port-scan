# Port Scanner Script

This is a simple Bash script to scan a range of ports on a given IP address using `netcat` (`nc`).

## Usage

Run the script with the following syntax:

```bash
bash scan.sh <IP_ADDRESS> <START_PORT> <END_PORT>
```

### Example

To scan ports 20 to 25 on `127.0.0.1`:

```bash
bash scan.sh 127.0.0.1 20 25
```

### Output Example

```
Scanning ports 20 to 25 on 127.0.0.1...
Port 21 is OPEN
Port 22 is OPEN
Scan complete.
```

## Requirements

- A Unix-based system (Linux/macOS)
- `netcat` (`nc`) installed
  - Install on Debian-based systems:
    ```bash
    sudo apt install netcat
    ```
  - Install on macOS:
    ```bash
    brew install netcat
    ```
  - Install on Red Hat-based systems:
    ```bash
    sudo dnf install nmap-ncat
    ```

## Notes

- Some ports might be blocked by a firewall.
- If you don't see any open ports, try running with `sudo`:
  ```bash
  sudo bash scan.sh <IP_ADDRESS> <START_PORT> <END_PORT>
  ```

## License

This script is free to use and modify.
