# Foundry VTT

The best tabletop for virtual partygaming :) 

---

## What is it?

Dockerized Foundry VTT server for ease local use and server deployment.

The best alternative of this simple project:
- [FoundryVTT-Docker](https://github.com/felddy/foundryvtt-docker)

---

## Use

Fill `.env` (by `.env.example`) and start

```bash
docker compose up -d --build
```

If you want to restart with new params:

```bash
docker compose down
docker compose build --no-cache
docker compose start -d
```

---

## How to Deploy?

>[!info] TL;DR
> The best way for hosting foundry is VPN tunneling from your PC to VPS

Prerequisites:

1. Your PC
2. VPS + domain + ip (aws, heroku, timeweb)
3. VPN for tunneling 
4. Caddy for free let's encrypt SSL

Open issue for:

1. Expand deploy guide
2. Deploy to docker hub
3. Deploy helmchart

---

## 📝 License

This project distributes by MIT. 
Foundry VTT needs Foundry Gaming LLC license.

---

<p style="text-align: center">
  Created with love ❤️ for VTTRPG community
</p>
