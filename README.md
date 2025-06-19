# 🔍 Dark Web Threat Intelligence & Credential Leak Monitor

![OSINT](https://img.shields.io/badge/OSINT-Active-blue)
![DarkWeb](https://img.shields.io/badge/Dark%20Web-Monitoring-red)
![Built with Bash](https://img.shields.io/badge/Built%20with-Bash-yellow)
![License](https://img.shields.io/badge/License-Ethical--Use-green)

> Real-time monitoring of dark web paste sites for credential leaks, keywords, and threat mentions – powered by Tor and CLI.

---

## 📁 Project Overview

This tool is a simple yet powerful OSINT project that runs on Kali Linux to:
- 🌐 Monitor paste-like `.onion` dark web sites
- 🔑 Search for leaked credentials or sensitive keywords
- 📊 Display a CLI threat intelligence dashboard
- 📆 Automate scans and daily reports

---

## 🚀 Features

- 🔎 Scans public `.onion` pastebins for email leaks, passwords, domains, and keywords
- 🔐 Uses `torsocks` to route traffic through the Tor network
- 📁 Saves logs daily in timestamped files
- 📈 CLI-based dashboard to view new threats
- 📤 Easy to deploy via GitHub `git clone`

---

## ⚙️ Installation

### 🔧 Requirements

```bash
sudo apt update
sudo apt install tor torsocks curl jq git
sudo systemctl start tor
```

### ⬇️ Clone the Project

```bash
git clone https://github.com/YOUR_USERNAME/darkweb-monitor.git
cd darkweb-monitor
chmod +x *.sh
```

---

## 🛠 Usage

### 🔍 Scan for Credential Leaks
```bash
./leak-monitor.sh
```

This scans selected `.onion` paste sites over Tor and logs any keyword matches.

### 📊 View the Dashboard
```bash
./dashboard.sh
```

Summarizes leaks found for today and previously, with unique matches.

---

## 🕒 Automate with Cron

```bash
crontab -e
```

Add:
```bash
0 */6 * * * /path/to/leak-monitor.sh
0 20 * * * /path/to/dashboard.sh > /var/www/html/threat_dashboard.txt
```

---

## 📸 Screenshots

> *(Add screenshots here for the dashboard output, log files, or cron output)*

---

## ⚠️ Disclaimer

This project is for **educational and ethical** cybersecurity research only.
- Do not access illegal marketplaces or download any malware.
- Do not store or share any personally identifiable information (PII) from dark web sources.

---

## 📬 Contact

For feedback, contributions, or collaborations:

**Risco Mashete**  
🔗 [Your Website/Portfolio](https://riscomashete.com)  
📫 [Your Email or GitHub Contact]

---

## ⭐ Star This Project

If you find it helpful, please ⭐ star it on GitHub!
