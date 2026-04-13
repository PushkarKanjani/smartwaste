@echo off
REM SmartWaste Docker Quick Start Script (Windows)
REM Builds and runs all 4 containers with visible terminal output

echo.
echo =========================================
echo  SmartWaste Quick Start
echo =========================================
echo.

cd docker || (
    echo Error: docker folder not found!
    exit /b 1
)

echo Step 1: Building Docker images...
echo ───────────────────────────────────
docker-compose build --no-cache

if errorlevel 1 (
    echo.
    echo ❌ Build failed!
    exit /b 1
)

echo.
echo ✅ Images built successfully!
echo.

echo Step 2: Starting containers...
echo ───────────────────────────────────
docker-compose up -d

echo.
echo ✅ Containers starting!
echo.

timeout /t 5 /nobreak

echo.
echo 🔍 Container Status:
echo ───────────────────────────────────
docker-compose ps

echo.
echo =========================================
echo  ✅ SmartWaste is running!
echo =========================================
echo.

echo 📍 Service URLs:
echo   Frontend:     http://localhost
echo   Backend API:  http://localhost:3000
echo   ML Service:   http://localhost:5000
echo   Database:     localhost:5432
echo.

echo 📋 Container names:
echo   - smartwaste-frontend
echo   - smartwaste-backend
echo   - smartwaste-ml
echo   - smartwaste-db
echo.

echo 🛠️  Useful commands:
echo   View logs (frontend):     docker-compose logs -f frontend
echo   View logs (backend):      docker-compose logs -f backend
echo   View logs (ml service):   docker-compose logs -f ml_service
echo   View database logs:       docker-compose logs -f postgres
echo   Stop containers:          docker-compose stop
echo   Restart a container:      docker-compose restart [service_name]
echo   Remove all:               docker-compose down
echo.

echo ✨ Ready to use! Try http://localhost in your browser
echo.

pause
