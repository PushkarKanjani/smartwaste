# 🚀 START HERE - Run Your Containers

## Quick Start (Choose your OS)

### Windows Users:
Open PowerShell in the `docker` folder and run:
```powershell
.\start.bat
```

Or run the command directly:
```bash
docker-compose up -d
```

### Linux/Mac Users:
Navigate to `docker` folder and run:
```bash
chmod +x start.sh
./start.sh
```

Or run the command directly:
```bash
docker-compose build && docker-compose up -d
```

---

## What Gets Started

| Container | URL | Port |
|-----------|-----|------|
| **Frontend** (Nginx) | http://localhost | 80 |
| **Backend API** (Node.js) | http://localhost:3000 | 3000 |
| **ML Service** (Python/Flask) | http://localhost:5000 | 5000 |
| **Database** (PostgreSQL) | localhost | 5432 |

---

## Test Your Deployment

After containers are running, verify they work:

```bash
# Test frontend
curl http://localhost

# Test API
curl http://localhost:3000/api/health

# Test ML service
curl http://localhost:5000/health

# Test database
docker-compose exec postgres psql -U postgres -d smartwaste -c "SELECT 1;"
```

---

## View Live Logs

See what each container is doing:

```bash
# All logs
docker-compose logs -f

# Specific service logs
docker-compose logs -f frontend
docker-compose logs -f backend
docker-compose logs -f postgres
docker-compose logs -f ml_service
```

---

## Stop Everything

```bash
# Stop containers (keeps data)
docker-compose stop

# Remove containers (keeps volumes/data)
docker-compose down

# Remove everything including data
docker-compose down -v
```

---

✅ **All 4 containers organized in `smartwaste` folder**
✅ **Health checks configured for auto-restart**
✅ **Network isolation with smartwaste-network**
✅ **Ready for 1 PM deployment!**
