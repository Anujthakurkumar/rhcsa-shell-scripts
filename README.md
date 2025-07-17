# 🔧 RHCSA Shell Scripting Assignment – RHEL 9

This repository contains five shell scripts created as part of my **Red Hat Certified System Administrator (RHCSA)** coursework. These scripts automate common Linux system administration tasks on **RHEL 9**, helping improve efficiency, reliability, and auditability.

---

## 📁 Repository Contents

| Script Name                  | Description |
|-----------------------------|-------------|
| `task2_old_file_archiver.sh` | Archives files older than 30 days from a target directory to a backup directory. |
| `task25_dynamic_motd.sh`     | Generates a dynamic MOTD (`/etc/motd`) displaying hostname, IP address, uptime, and last login. |
| `task43_extract_usernames.sh`| Extracts all usernames from `/etc/passwd`. |
| `task44_boot_history.sh`     | Displays recent boot logs using `journalctl`. |
| `task45_failed_logins.sh`    | Parses `/var/log/secure` to find failed SSH login attempts. |

---

## 🚀 Getting Started

Follow the steps below to clone and use this repository on a RHEL system.

### 📦 Clone the Repository

```bash
git clone https://github.com/Anujthakurkumar/rhcsa-shell-scripts.git
cd rhcsa-shell-scripts
```

### 🛠️ Make Scripts Executable

```bash
chmod +x task*.sh
```

---

## ⚙️ How to Use Each Script

### 1. `task2_old_file_archiver.sh`
Archives files older than 30 days in a given directory:
```bash
sudo ./task2_old_file_archiver.sh
```
> Make sure to edit the script to specify your source and archive directories, or pass as arguments.

### 2. `task25_dynamic_motd.sh`
Generates a custom welcome message with system info:
```bash
sudo ./task25_dynamic_motd.sh
cat /etc/motd
```

### 3. `task43_extract_usernames.sh`
Lists all usernames from the system:
```bash
./task43_extract_usernames.sh
```

### 4. `task44_boot_history.sh`
Displays previous boot records:
```bash
./task44_boot_history.sh
```

### 5. `task45_failed_logins.sh`
Audits failed SSH login attempts:
```bash
sudo ./task45_failed_logins.sh
```
> Requires access to `/var/log/secure`.

---

## ⏰ Automation with Cron

To schedule any script (e.g., daily at midnight), use:
```bash
crontab -e
```
Add an entry like:
```cron
0 0 * * * /path/to/task2_old_file_archiver.sh
```

---

## 🧰 Dependencies

Most scripts rely on standard Linux utilities:
- `find`, `awk`, `grep`, `hostname`, `uptime`, `journalctl`
- `cron`, `cat`, `last`

---

## 👨‍🏫 Acknowledgments

Special thanks to my instructors:
- **Pushpendra Kumar Pateriya**
- **Awadhesh Shukla**

For their guidance and mentorship throughout the RHCSA coursework.

---

## 📌 Author

**Anuj Thakur**  
BCA (Hons.) Cyber Security – Lovely Professional University  
🔗 [LinkedIn](https://www.linkedin.com/in/anuj-kumar-bb19542b0/)  
📁 [GitHub](https://github.com/Anujthakurkumar)

---

## 📃 License

This project is licensed under the **MIT License** – see the `LICENSE` file for details.

---

