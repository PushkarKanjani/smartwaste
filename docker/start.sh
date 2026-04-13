#!/bin/bash

# 🚀 SmartWaste Docker Quick Start Script
# Builds and runs all 4 containers with visible terminal output

echo "🚀 SmartWaste Quick Start"
echo "═══════════════════════════════════════════════════════"
echo ""

# Colors for output
GREEN='\033[0;32m'
BLUE='\033[0;34m'
YELLOW='\033[1;33m'
NC='\033[0m' # No Color

cd docker || { echo "Error: docker folder not found!"; exit 1; }

echo -e "${BLUE}Step 1: Building Docker images...${NC}"
echo "───────────────────────────────"

docker-compose build --no-cache

if [ $? -ne 0 ]; then
    echo -e "${YELLOW}❌ Build failed!${NC}"
    exit 1
fi

echo -e "${GREEN}✅ Images built successfully!${NC}"
echo ""

echo -e "${BLUE}Step 2: Starting containers...${NC}"
echo "───────────────────────────────"

docker-compose up -d

echo ""
echo -e "${GREEN}✅ Containers starting!${NC}"
echo ""

# Wait a moment for containers to start
sleep 5

echo "🔍 Container Status:"
echo "───────────────────────────────"
docker-compose ps

echo ""
echo -e "${GREEN}════════════════════════════════════════════════════════${NC}"
echo -e "${GREEN}✅ SmartWaste is running!${NC}"
echo -e "${GREEN}════════════════════════════════════════════════════════${NC}"
echo ""

echo "📍 Service URLs:"
echo "  Frontend:     http://localhost"
echo "  Backend API:  http://localhost:3000"
echo "  ML Service:   http://localhost:5000"
echo "  Database:     localhost:5432"
echo ""

echo "📋 Container names:"
echo "  - smartwaste-frontend"
echo "  - smartwaste-backend"
echo "  - smartwaste-ml"
echo "  - smartwaste-db"
echo ""

echo "🛠️  Useful commands:"
echo "  View logs:           docker-compose logs -f [service_name]"
echo "  Stop containers:     docker-compose stop"
echo "  Restart containers:  docker-compose restart [service_name]"
echo "  Remove containers:   docker-compose down"
echo ""

echo -e "${BLUE}✨ Ready to use! Try accessing http://localhost in your browser${NC}"
