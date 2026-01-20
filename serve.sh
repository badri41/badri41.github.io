#!/bin/bash

# Portfolio Local Server Script
# Simple HTTP server for local development

set -e

PORT="${1:-8000}"
GREEN='\033[0;32m'
BLUE='\033[0;34m'
NC='\033[0m' # No Color

echo -e "${BLUE}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━${NC}"
echo -e "${GREEN}  Badri Bishal Das - Portfolio Server${NC}"
echo -e "${BLUE}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━${NC}"
echo ""

# Check if port is already in use
if lsof -Pi :$PORT -sTCP:LISTEN -t >/dev/null 2>&1 ; then
    echo "⚠️  Port $PORT is already in use."
    echo "Try running: ./serve.sh <different-port>"
    exit 1
fi

echo "📂 Serving from: $(pwd)"
echo "🌐 Local URL: http://localhost:$PORT"
echo "🌐 Network URL: http://$(ipconfig getifaddr en0 2>/dev/null || hostname):$PORT"
echo ""
echo -e "${GREEN}✨ Server is running!${NC}"
echo "   Press Ctrl+C to stop"
echo ""
echo -e "${BLUE}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━${NC}"
echo ""

# Start Python HTTP server
python3 -m http.server $PORT

# Cleanup message
echo ""
echo -e "${GREEN}Server stopped.${NC}"
