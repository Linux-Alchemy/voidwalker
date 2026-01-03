#!/bin/bash
# Installation of the Black are repo and tools

set -e

cd ~

# Check if curl is installed, if not installing
if ! command -v curl &> /dev/null; then
  echo "Installing `curl`. You really should have done this first..."
  sudo pacman -S curl
fi

# Get the Black Arch repos
echo "Getting the Black Arch repos. Prepare yourself mortal..."
curl -o https://blackarch.org/start.sh
chmod +x strap.sh
sudo ./strap.sh

# Black Arch starter pack
black=(
  "nmap"
  "masscan"
  "amass"
  "subfinder"
  "ffuf"
  "gobuster"
  "dirsearch"
  "burpsuite"
  "metasploit"
  "bloodhound"
  "impacket"
  "mimikatz"
  "netexec"
  "hashcat"
  "john"
  "hydra"
  "medusa"
  "wireshark-qt"
  "bettercap"
  "aircracking-ng"
  "responder"
  "sqlmap"
  "maltego"
  "nikto"
  "wpscan"
  "sherlock"
  "chisel"
  "ligolo-ng"
  "proxychains-ng"
  "evil-winrm"
  "enum4linux"
  "exploitdb"
  "ghidra"
  "jwt-tool"
  "peass"
  "pwncat"
  "dirbuster-ng"
  "seclists"
  "tcpdump"
  "jq"
  "openbsd-netcat"
  )
