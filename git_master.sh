#!/bin/bash

# ==========================================================
# 👑 ZERO SENTINEL V6.2 - THE ALL-SEEING SOVEREIGN
# ==========================================================
# Author: Gemini for Kamal (The Supreme Commander)
# Version: 6.2 | Status: PEAK PERFECTION
# Features: Oracle DNS, Live HUD, Spy Logs, Config Matrix,
#           Auto-Deploy, Self-Evolution, & System Purge.
# ==========================================================

# --- KONFIGURASI JALUR ---
SCRIPT_PATH="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)/$(basename "${BASH_SOURCE[0]}")"
REPO_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
NGINX_ROOT="/var/www/html/zero-monitor"
FRONTEND_DIR="$REPO_DIR/frontend"
BACKEND_DIR="$REPO_DIR/backend"
DOMAIN="api.azero.my.id"

# --- THEME COLORS (CYBER NEON) ---
R='\033[0;31m' G='\033[0;32m' Y='\033[1;33m' B='\033[0;34m' 
P='\033[0;35m' C='\033[0;36m' W='\033[1;37m' NC='\033[0m'
BOLD='\033[1m'

# --- DETEKSI LOKASI & LINGKUNGAN ---
function detect_env() {
    if [[ -d "/var/www/html" ]] || command -v nginx &> /dev/null; then
        ENV_MODE="SERVER"
        ENV_LABEL="${R}CORE-SERVER${NC}"
    else
        ENV_MODE="TERMINAL"
        ENV_LABEL="${C}LOCAL-TERMINAL${NC}"
    fi
}

function startup_sequence() {
    clear
    detect_env
    echo -e "${P}${BOLD}Initializing Zero Sentinel Neural-Link v6.2...${NC}"
    sleep 0.2
    echo -ne "${B}▓▓▒▒░░ Connection: ${G}ESTABLISHED${NC}"
    echo -e " | Mode: $ENV_LABEL"
    echo -e "${B}▓▓▓▓▓▓▒▒░░ Load: ${C}ORACLE DNS, HUD, SPY, CONFIG, PURGE...${NC}"
    echo -e "${G}▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓ 100% - SOVEREIGN STABILIZED${NC}"
    sleep 0.3
}

function show_ascii() {
    echo -e "${C}${BOLD}"
    echo "  ███████╗███████╗██████╗  ██████╗     ███████╗███████╗███╗   ██╗████████╗██╗███╗   ██╗███████╗██╗     "
    echo "  ╚══███╔╝██╔════╝██╔══██╗██╔═══██╗    ██╔════╝██╔════╝████╗  ██║╚══██╔══╝██║████╗  ██║██╔════╝██║     "
    echo "    ███╔╝ █████╗  ██████╔╝██║   ██║    ███████╗█████╗  ██╔██╗ ██║   ██║   ██║██╔██╗ ██║█████╗  ██║     "
    echo "   ███╔╝  ██╔══╝  ██╔══██╗██║   ██║    ╚════██║██╔══╝  ██║╚██╗██║   ██║   ██║██║╚██╗██║██╔══╝  ██║     "
    echo "  ███████╗███████╗██║  ██║╚██████╔╝    ███████║███████╗██║ ╚████║   ██║   ██║██║ ╚████║███████╗███████╗"
    echo "  ╚══════╝╚══════╝╚═╝  ╚═╝ ╚═════╝     ╚══════╝╚══════╝╚═╝  ╚═══╝   ╚═╝   ╚═╝╚═╝  ╚═══╝╚══════╝╚══════╝"
    echo -e "                                 ${W}[ THE ALL-SEEING SOVEREIGN V6.2 ]${NC}"
}

# --- MENU UTAMA ---
function show_help() {
    startup_sequence
    show_ascii
    echo -e "${P}╭──────────────────────────────────────────────────────────────────────────╮${NC}"
    echo -e "${P}│${NC}  ${W}🚀 ZERO SENTINEL SUPREME ${NC}          ${G}$ENV_MODE MODE${NC}     ${C}[ SOVEREIGN ]${NC}    ${P}│${NC}"
    echo -e "${P}├──────────────────────────────────────────────────────────────────────────┤${NC}"
    echo -e "${P}│${NC}  ${C}DIAGNOSTICS & MONITORING:${NC}                                              ${P}│${NC}"
    echo -e "${P}│${NC}  ${G}zdns${NC}            ${W}» DNS Oracle: Verify Domain & IPv4/v6 Logic${NC}          ${P}│${NC}"
    echo -e "${P}│${NC}  ${G}zhud${NC}            ${W}» Live HUD: VPS Real-time Resource Monitor${NC}           ${P}│${NC}"
    echo -e "${P}│${NC}  ${G}zs${NC}              ${W}» Spy Mode: Stream Backend & Nginx Access Logs${NC}       ${P}│${NC}"
    echo -e "${P}│${NC}  ${G}zc${NC}              ${W}» Health Check: Deep Scan Zero Monitor Status${NC}        ${P}│${NC}"
    
    echo -e "${P}│${NC}  ${C}CORE MANAGEMENT:${NC}                                                       ${P}│${NC}"
    echo -e "${P}│${NC}  ${G}zd${NC}              ${W}» Deployment: One-Tap Build & Nginx Injection${NC}        ${P}│${NC}"
    echo -e "${P}│${NC}  ${G}zsync${NC}           ${W}» Evolution: Autonomous Git Sync & Push Matrix${NC}       ${P}│${NC}"
    echo -e "${P}│${NC}  ${G}zclean${NC}          ${W}» Purge: Clean Node_Modules, Dist, & Build Cache${NC}     ${P}│${NC}"
    
    echo -e "${P}│${NC}  ${C}IDENTITY & CONFIGURATION:${NC}                                              ${P}│${NC}"
    echo -e "${P}│${NC}  ${G}zconfig${NC}         ${W}» Ghost-Switcher: Change Git Auth & Repository URL${NC}   ${P}│${NC}"
    echo -e "${P}│${NC}  ${G}zgh${NC}             ${W}» Ghost Identity: Native Auth & Repo Status${NC}          ${P}│${NC}"
    echo -e "├──────────────────────────────────────────────────────────────────────────┤"
    echo -e "│  ${Y}zsetup${NC}          ${W}» Core Recalibration & Sovereign Alias Install${NC}        ${P}│${NC}"
    echo -e "╰──────────────────────────────────────────────────────────────────────────╯"
    echo -e "   ${BOLD}${C}LOG:${NC} Commander Kamal detected. | ${W}Ketik 'z' untuk menu ini.${NC}"
}

# --- FITUR: DNS ORACLE (zdns) ---
function dns_checker() {
    clear; show_ascii
    echo -e "${B}🔮 INITIATING DNS ORACLE DIAGNOSTIC...${NC}"
    echo -e "${BLUE}──────────────────────────────────────────────────────────────────────────${NC}"
    LOCAL_IP=$(curl -s -4 https://ifconfig.me)
    DOMAIN_IP=$(dig +short $DOMAIN | tail -n1)
    echo -e " » Target Domain : ${W}${DOMAIN}${NC}"
    echo -e " » Machine IP    : ${W}${LOCAL_IP}${NC}"
    if [ -z "$DOMAIN_IP" ]; then
        echo -e " » Resolved IP   : ${R}NONE (Domain not pointing anywhere)${NC}"
    else
        echo -e " » Resolved IP   : ${W}${DOMAIN_IP}${NC}"
        [[ $DOMAIN_IP == 104.* ]] || [[ $DOMAIN_IP == 172.* ]] && echo -e "${Y}ℹ️  INFO: Cloudflare Proxy Active.${NC}"
        [ "$LOCAL_IP" == "$DOMAIN_IP" ] && echo -e "\n${G}✅ SUCCESS: Domain and VPS are synced!${NC}" || echo -e "\n${R}❌ MISMATCH: Check Cloudflare A-Record!${NC}"
    fi
    echo -e "${BLUE}──────────────────────────────────────────────────────────────────────────${NC}"
}

# --- FITUR: LIVE HUD (zhud) ---
function live_hud() {
    if [ "$ENV_MODE" != "SERVER" ]; then echo "Feature available only on Server Mode."; return; fi
    while true; do
        clear; show_ascii
        echo -e "${P}📊 LIVE VPS RESOURCE HUD (Press Ctrl+C to exit)${NC}"
        echo -e "${BLUE}──────────────────────────────────────────────────────────────────────────${NC}"
        echo -ne "${W}CPU USAGE: ${NC}"; top -bn1 | grep "Cpu(s)" | awk '{print $2 + $4"%"}'
        echo -ne "${W}RAM USAGE: ${NC}"; free -m | awk 'NR==2{printf "%s/%sMB (%.2f%%)\n", $3,$2,$3*100/$2 }'
        echo -ne "${W}DISK SPACE: ${NC}"; df -h | grep '^/dev/' | awk '{print $5 " used on " $1}'
        echo -e "${BLUE}──────────────────────────────────────────────────────────────────────────${NC}"
        sleep 2
    done
}

# --- FITUR: SPY MODE (zs) ---
function spy_mode() {
    if [ "$ENV_MODE" != "SERVER" ]; then echo "Feature available only on Server Mode."; return; fi
    clear; show_ascii
    echo -e "${B}🕵️  INITIATING SPY MODE: STREAMING RELEVANT LOGS...${NC}"
    echo -e "${BLUE}──────────────────────────────────────────────────────────────────────────${NC}"
    pm2 logs zero-api --lines 20
}

# --- FITUR: ZERO DEPLOY (zd) ---
function ultimate_deploy() {
    clear; show_ascii; detect_env
    echo -e "${Y}🚀 INITIATING ZERO MONITOR DEPLOYMENT PROTOCOL...${NC}"
    echo -e "${BLUE}──────────────────────────────────────────────────────────────────────────${NC}"
    echo -ne "${C}>> Step 1: Syncing codebase...${NC} "; git pull origin main --quiet && echo -e "${G}DONE${NC}" || { echo -e "${R}FAILED${NC}"; return; }
    if [ -d "$FRONTEND_DIR" ]; then
        echo -ne "${C}>> Step 2: Compiling Frontend...${NC} "; cd "$FRONTEND_DIR" && npm run build --silent && echo -e "${G}DONE${NC}"
        if [ "$ENV_MODE" == "SERVER" ]; then
            echo -ne "${C}>> Step 3: Injecting to Nginx...${NC} "; sudo rm -rf $NGINX_ROOT/* && sudo cp -r dist/* $NGINX_ROOT/ && sudo chown -R www-data:www-data $NGINX_ROOT && echo -e "${G}DONE${NC}"
        fi
    fi
    if [ "$ENV_MODE" == "SERVER" ]; then
        echo -ne "${C}>> Step 4: Re-energizing Backend...${NC} "; cd "$BACKEND_DIR" && npm install --silent; pm2 restart zero-api --silent || pm2 start server.js --name "zero-api"; sudo systemctl restart nginx; echo -e "${G}DONE${NC}"
    fi
    echo -e "${BLUE}──────────────────────────────────────────────────────────────────────────${NC}"
    ultimate_checker
}

# --- FITUR: GHOST CONFIG (zconfig) ---
function ghost_config() {
    clear; show_ascii
    echo -e "${B}🛠️  GHOST CONFIGURATION MATRIX${NC}"
    echo -e " 1. Change Username | 2. Change Email | 3. Change Remote URL | 4. Back"
    echo -ne "\n${C}Choice: ${NC}"; read choice
    case $choice in
        1) read -p "New Username: " nu; git config user.name "$nu" ;;
        2) read -p "New Email: " ne; git config user.email "$ne" ;;
        3) read -p "New Repo URL: " nurl; git remote set-url origin "$nurl" ;;
        *) return ;;
    esac
    echo -e "${G}✅ Success.${NC}"
}

# --- FITUR: PURGE (zclean) ---
function system_purge() {
    clear; show_ascii
    echo -e "${R}☢️  INITIATING SYSTEM PURGE...${NC}"
    echo -e "${BLUE}──────────────────────────────────────────────────────────────────────────${NC}"
    echo -ne "${W}Cleaning Build Cache & Dist... ${NC}"
    rm -rf "$FRONTEND_DIR/dist" "$FRONTEND_DIR/.vite" &> /dev/null
    echo -e "${G}DONE${NC}"
    read -p "Deep Clean (Remove node_modules)? [y/N]: " deep
    if [[ $deep == "y" ]]; then
        echo -ne "${W}Removing node_modules... ${NC}"
        rm -rf "$FRONTEND_DIR/node_modules" "$BACKEND_DIR/node_modules"
        echo -e "${G}DONE${NC}"
    fi
}

# --- STANDARDS ---
function ultimate_checker() {
    detect_env
    echo -e "\n${P}📡 SYSTEM INTEGRITY SCAN:${NC}"
    if [ "$ENV_MODE" == "SERVER" ]; then
        pm2 list | grep -q "online" && echo -e " » Backend Core : ${G}ONLINE${NC}" || echo -e " » Backend Core : ${R}DEAD${NC}"
        ss -tulpn | grep -q ":3000" && echo -e " » API Port     : ${G}OPEN (3000)${NC}" || echo -e " » API Port     : ${R}CLOSED${NC}"
    else
        command -v node &> /dev/null && echo -e " » Node Engine  : ${G}READY${NC}" || echo -e " » Node Engine  : ${R}MISSING${NC}"
    fi
}

function self_sync() {
    clear; show_ascii; echo -e "${Y}🚀 INITIATING EVOLUTION...${NC}"
    git add .
    MSG="evolve: zero sentinel sovereign v6.2 [$(date +'%H:%M')]"; git commit -m "$MSG" --quiet && git push origin main && echo -e "${G}✅ Cloud Synced.${NC}"
}

function setup_native_commands() {
    echo -e "\n${C}📡 Calibrating Sovereign Aliases V6.2...${NC}"
    sed -i "/# ZEROCHECKER ALIASES/,/alias z=/d" ~/.bashrc &> /dev/null
    {
        echo "# ZEROCHECKER ALIASES V6.2"
        echo "alias zsync='$SCRIPT_PATH zsync'"
        echo "alias zconfig='$SCRIPT_PATH zconfig'"
        echo "alias zdns='$SCRIPT_PATH zdns'"
        echo "alias zhud='$SCRIPT_PATH zhud'"
        echo "alias zc='$SCRIPT_PATH zc'"
        echo "alias zd='$SCRIPT_PATH zd'"
        echo "alias zs='$SCRIPT_PATH zs'"
        echo "alias zclean='$SCRIPT_PATH zclean'"
        echo "alias zgh='$SCRIPT_PATH zgh'"
        echo "alias zsetup='$SCRIPT_PATH zsetup'"
        echo "alias z='$SCRIPT_PATH'"
    } >> ~/.bashrc
    echo -e "${G}✅ CORE V6.2 CALIBRATED!${NC}\n${Y}👉 RUN: source ~/.bashrc${NC}"
}

# --- ROUTING ---
case "$1" in
    zd)     ultimate_deploy ;;
    zc)     ultimate_checker ;;
    zdns)   dns_checker ;;
    zhud)   live_hud ;;
    zs)     spy_mode ;;
    zsync)  self_sync ;;
    zconfig) ghost_config ;;
    zclean) system_purge ;;
    zgh)    clear; show_ascii; echo -e "${B}🐙 GHOST IDENTITY${NC}"; echo -e " User: $(git config user.name)\n Repo: $(git remote -v | head -n 1 | awk '{print $2}')" ;;
    zsetup) setup_native_commands ;;
    *)      show_help ;;
esac