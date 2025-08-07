
# Project Report: Containerized Web Server with Monitoring
 ************************ GROUP 2 *********************
 ----------------------------------------------------------
 |Acheampong Rockson Opoku        052441360213    ||
 |Emmanuel Quayson                052441770002    ||
 |Beatrice Frimpong               052441360231    ||
 |Elijah Danso Amankwah           052441360289    ||
 |Baligi Simon Yaw                052441360215    ||
 |Benjamin Dapaah                 052441360268    ||
 |Jessica Adjei-Poku              052441360261    ||
 |Tetteh Raphael Tawiah           052441360245    ||
 |Bandim Isaac                    052441360304    ||
 |                                052441360292    |
  
###  Project Folder: `~/myproject`  
### Tested On: Ubuntu 20.04 VM (or WSL)

---

## 1. Project Overview

This project implements a **containerized web server using Docker and NGINX**, combined with a **monitoring script** to track server health (uptime, memory, and CPU). The goal is to integrate scripting, containerization, and basic system security into one beginner-friendly, testable project.

---

## 2. Why This Project Was Chosen

I chose this project because:
- I’m interested in both **web technologies** and **system administration**
- It combines **real-world DevOps skills** (Docker, Bash, UFW)
- It gives me a practical way to learn how **containers and monitoring** work together

---

## 3. Tools & Skills Used

| Skill Area     | Implementation                                  |
|----------------|--------------------------------------------------|
| **Scripting**  | Bash monitoring script (`monitor_web.sh`)       |
| **Containers** | Docker running NGINX server                      |
| **Security**   | UFW firewall configured to allow HTTP (port 80) |
| **Documentation** | `project_readme.md`, log files, screenshots  |
| **Optional**   | GitHub for sharing the project                  |

---

##  4. Implementation Details

###  A. Dockerized Web Server
- Used Docker to run the **NGINX** server with:
  ```bash
  docker run -d -p 80:80 nginx
  ```
- Verified by accessing `http://localhost` in a browser.

###  B. Monitoring Script (`monitor_web.sh`)
- Logs server **uptime**, **memory**, and **CPU usage**.
- Outputs stored in `~/myproject/logs/web.log`.

```bash
#!/bin/bash
LOG_FILE=~/myproject/logs/web.log
echo "------ $(date) ------" >> "$LOG_FILE"
uptime >> "$LOG_FILE"
free -m >> "$LOG_FILE"
top -bn1 | grep "Cpu(s)" >> "$LOG_FILE"
```

###  C. Security Measures
- Enabled UFW and allowed only port 80:
  ```bash
  sudo ufw allow 80
  sudo ufw enable
  ```
- (Optional) Disabled SSH root login for cloud deployment.

---

##  5. Testing Process

1. Ran the monitoring script manually:
   ```bash
   ~/myproject/scripts/monitor_web.sh
   ```
2. Verified logs:
   ```bash
   cat ~/myproject/logs/web.log
   ```
3. Accessed the web server via `http://localhost`.
4. Used `docker ps` to confirm the container status.

---

##  6. Screenshots Included
- Docker container running
- NGINX welcome page in browser
- `web.log` file with monitoring output
- Project file structure in terminal

All screenshots are stored in: `~/myproject/screenshots/`

---

##  7. What I Learned

- How to use **Docker** to run services quickly.
- How to write Bash scripts for **automated monitoring**.
- Basic use of **UFW firewall** for securing ports.
- Importance of **logging**, **testing**, and **documentation** in system projects.
- How to organize and share a project professionally via **GitHub**.

---

## 8. Deliverables

| Item                    | Path                            |
|-------------------------|----------------------------------|
| Script                  | `~/myproject/scripts/monitor_web.sh` |
| Log Output              | `~/myproject/logs/web.log`       |
| Documentation           | `~/myproject/docs/project_readme.md` |
| Screenshots             | `~/myproject/screenshots/`       |
| Report                  | `~/myproject/docs/project_report.md` (this file) |


GitHub link:htt://github.com/Raphael8898/cntainerized-web-server-
