# 🚀 Production-Ready Multi-Site WordPress with Docker

Easily deploy and manage multiple isolated WordPress sites on a single VPS using Docker.

## 🔧 Features

- 🐳 Docker & Docker Compose
- 🌐 NGINX Reverse Proxy (with automatic virtual host routing)
- 🔐 Free SSL Certificates via Let’s Encrypt
- 🛢️ Isolated MySQL database per site
- 🚀 Simple deploy scripts per site
- 📂 Clean and scalable folder structure

---

## 🗺️ Roadmap

Here’s what’s coming next:

### ✅ v1.0 (Current)
- Multi-site WordPress deployment using Docker
- Automatic SSL via Let's Encrypt
- Individual MySQL databases per site
- Reverse proxy with NGINX
- Deployment scripts per site

### 🛠️ v1.1 (Upcoming)
- Admin dashboard for site management
- Automatic backups for WordPress files and databases
- CLI script for creating new sites in one command

### 🧪 v1.2 (Planned)
- Integrated monitoring and alerts for site health
- Fail2ban and enhanced firewall integration
- Optional Redis caching for performance

### 📦 v1.3 (Future)
- Email relay container for WordPress SMTP
- One-click upgrade for WordPress core and plugins
- Multi-server clustering support for high availability

Feel free to contribute or suggest features!

---

## 📌 Issue Tracking

We use GitHub Issues to track bugs, enhancements, and feature requests.

- [Report a Bug](https://github.com/codedsultan/wordpress-docker/issues/new?labels=bug&template=bug_report.md)
- [Request a Feature](https://github.com/codedsultan/wordpress-docker/issues/new?labels=enhancement&template=feature_request.md)
- [View All Issues](https://github.com/codedsultan/wordpress-docker/issues)

---

## 🎯 Milestones

Each milestone represents a stable version with key features:

- **v1.0**: Core infrastructure and multi-site setup ✅
- **v1.1**: Admin tools and backups 🔜
- **v1.2**: Security and monitoring tools 🔜
- **v1.3**: Extended features and performance boost 🔜

Track progress and releases here: [GitHub Milestones](https://github.com/codedsultan/wordpress-docker/milestones)

---

## 🤝 Contributing

We welcome contributions of all kinds. Here’s how you can help:

1. Fork the repo and create your branch.
2. Make your changes with clear commit messages.
3. Submit a Pull Request (PR) and describe your changes.

### Guidelines

- Follow the existing code and folder structure.
- Keep changes focused and relevant.
- Check for open issues or request new features before large changes.

---

## 📁 Folder Structure

```
wordpress-docker/
├── proxy/
│   └── docker-compose.yml
├── site1.com/
│   ├── .env
│   ├── docker-compose.yml
│   ├── deploy.sh
│   ├── html/
│   └── db/
├── site2.com/
│   ├── .env
│   ├── docker-compose.yml
│   ├── deploy.sh
│   ├── html/
│   └── db/
```

---

## 🌐 Step 1: Set Up Global Reverse Proxy

Create a shared Docker network and launch the reverse proxy.

```bash
docker network create web
cd wordpress-docker/proxy
docker-compose up -d
```

---

## 🌍 Step 2: Deploy Site 1

```bash
cd wordpress-docker/site1.com
./deploy.sh
```

---

## 🌍 Step 3: Deploy Site 2

```bash
cd wordpress-docker/site2.com
./deploy.sh
```

---

## 🔐 Important Notes

- Make sure **DNS records** for `site1.com` and `site2.com` point to your VPS IP.
- Ensure **ports 80 and 443 are open** on your firewall.
- SSL certificates will be generated automatically via Let’s Encrypt when the site is first deployed.

---

## 💡 Tips

- Use `.env` files per site to customise MySQL credentials, site URLs, and volumes.
- Keep each site's `html/` folder under version control for content tracking.
- You can add additional sites by copying the folder structure of an existing site.

---

## ☕ Support My Work

If this project saved you time or taught you something new, consider buying me a coffee!

**Olusegun Ibraheem (Codesultan)**  
[GitHub](https://github.com/codedsultan) • [Buy Me a Coffee](https://buymeacoffee.com/codesultan)

[![Buy Me a Coffee](https://img.shields.io/badge/Buy%20me%20a%20coffee-orange?logo=buy-me-a-coffee&style=for-the-badge)](https://buymeacoffee.com/codesultan)

---

## 📄 License

MIT License
