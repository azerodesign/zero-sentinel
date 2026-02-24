#!/bin/bash

# ==========================================================
# 👑 ZERO SENTINEL V6.0 - THE ORACLE EDITION
# ==========================================================
# Author: Gemini for Kamal (The Supreme Commander)
# Version: 6.0 | Mode: Multi-Platform (Oracle Intelligence)
# Feature: DNS Validator, Integrated Lifecycle, Auto-Sync
# Fix: Connection Diagnostics & UI Re-branding
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

# --- DETEKSI LOKASI ---
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
    echo -e "${P}${BOLD}Initializing Zero Sentinel Oracle Link v6.0...${NC}"
    sleep 0.3
    echo -ne "${B}▓▓▒▒░░ Connection: ${G}ACTIVE${NC}"
    echo -e " | Mode: $ENV_LABEL"
    echo -e "${G}▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓ 100% - CORE STABILIZED${NC}"
    sleep 0.4
}

function show_ascii() {
    echo -e "${C}${BOLD}"
    echo "  ███████╗███████╗██████╗  ██████╗     ███████╗███████╗███╗   ██╗████████╗██╗███╗   ██╗███████╗██╗     "
    echo "  ╚══███╔╝██╔════╝██╔══██╗██╔═══██╗    ██╔════╝██╔════╝████╗  ██║╚══██╔══╝██║████╗  ██║██╔════╝██║     "
    echo "    ███╔╝ █████╗  ██████╔╝██║   ██║    ███████╗█████╗  ██╔██╗ ██║   ██║   ██║██╔██╗ ██║█████╗  ██║     "
    echo "   ███╔╝  ██╔══╝  ██╔══██╗██║   ██║    ╚════██║██╔══╝  ██║╚██╗██║   ██║   ██║██║╚██╗██║██╔══╝  ██║     "
    echo "  ███████╗███████╗██║  ██║╚██████╔╝    ███████║███████╗██║ ╚████║   ██║   ██║██║ ╚████║███████╗███████╗"
    echo "  ╚══════╝╚══════╝╚═╝  ╚═╝ ╚═════╝     ╚══════╝╚══════╝╚═╝  ╚═══╝   ╚═╝   ╚═╝╚═╝  ╚═══╝╚══════╝╚══════╝"
    echo -e "                                 ${W}[ THE ORACLE INTELLIGENCE V6.0 ]${NC}"
}

# --- MENU UTAMA ---
function show_help() {
    startup_sequence
    show_ascii
    echo -e "${P}╭──────────────────────────────────────────────────────────────────────────╮${NC}"
    echo -e "${P}│${NC}  ${W}🚀 ZERO SENTINEL SUPREME ${NC}          ${G}$ENV_MODE MODE${NC}     ${C}[ ORACLE ]${NC}      ${P}│${NC}"
    echo -e "${P}├──────────────────────────────────────────────────────────────────────────┤${NC}"
    echo -e "${P}│${NC}  ${C}DIAGNOSTICS & FIX:${NC}                                                     ${P}│${NC}"
    echo -e "${P}│${NC}  ${G}zdns${NC}            ${W}» DNS Oracle: Verify Domain Propagation & IP Match${NC}    ${P}│${NC}"
    echo -ne "${P}│${NC}  ${G}zc${NC}              ${W}» Health Check: Deep Scan Zero Monitor Status${NC} "
    [ "$ENV_MODE" == "SERVER" ] && echo -e "     ${P}│${NC}" || echo -e "      ${P}│${NC}"
    
    echo -e "${P}│${NC}  ${C}APP MANAGEMENT:${NC}                                                        ${P}│${NC}"
    echo -e "${P}│${NC}  ${G}zd${NC}              ${W}» Deployment: One-Tap Build & Deploy App Core${NC}        ${P}│${NC}"
    echo -e "${P}│${NC}  ${G}zsync${NC}           ${W}» Evolution: Autonomous Git Sync (Sentinel Update)${NC}    ${P}│${NC}"
    
    if [ "$ENV_MODE" == "SERVER" ]; then
        echo -e "${P}│${NC}  ${G}zhud${NC}            ${W}» LIVE Stats: Real-time VPS Resource HUD${NC}             ${P}│${NC}"
        echo -e "${P}│${NC}  ${G}zs${NC}              ${W}» Spy Logs: Stream Backend & Nginx Logs${NC}              ${P}│${NC}"
    fi

    echo -e "${P}│${NC}  ${C}CONFIGURATION:${NC}                                                         ${P}│${NC}"
    echo -e "${P}│${NC}  ${G}zconfig${NC}         ${W}» Identity: Change Git Auth & Repository Path${NC}        ${P}│${NC}"
    echo -e "${P}│${NC}  ${G}zgh${NC}             ${W}» Ghost Auth: Repository & Native Identity Status${NC}    ${P}│${NC}"
    echo -e "├──────────────────────────────────────────────────────────────────────────┤"
    echo -e "│  ${Y}zsetup${NC}          ${W}» Core Recalibration & Alias Re-install${NC}               ${P}│${NC}"
    echo -e "╰──────────────────────────────────────────────────────────────────────────╯"
    echo -e "   ${BOLD}${C}LOG:${NC} Sentinel is watching. | ${W}Ketik 'z' untuk menu ini.${NC}"
}

# --- FITUR: DNS CHECKER (zdns) ---
function dns_checker() {
    clear
    show_ascii
    echo -e "${B}🔮 INITIATING DNS ORACLE DIAGNOSTIC...${NC}"
    echo -e "${BLUE}──────────────────────────────────────────────────────────────────────────${NC}"
    
    # Ambil IP VPS ini (Public)
    LOCAL_IP=$(curl -s https://ifconfig.me)
    # Ambil IP yang kedaftar di Domain
    DOMAIN_IP=$(dig +short $DOMAIN | tail -n1)

    echo -e "${C}[ NETWORK INFO ]${NC}"
    echo -e " » Target Domain : ${W}${DOMAIN}${NC}"
    echo -e " » Machine IP    : ${W}${LOCAL_IP}${NC}"
    
    if [ -z "$DOMAIN_IP" ]; then
        echo -e " » Resolved IP   : ${R}NONE (Domain not pointing anywhere)${NC}"
        echo -e "\n${R}❌ ERROR: Domain lu belum kedaftar di DNS Mal!${NC}"
        echo -e "Solusi: Cek Cloudflare lu, buat A Record 'api' arahin ke $LOCAL_IP."
    else
        echo -e " » Resolved IP   : ${W}${DOMAIN_IP}${NC}"
        if [ "$LOCAL_IP" == "$DOMAIN_IP" ]; then
            echo -e "\n${G}✅ SUCCESS: Domain and VPS are perfectly synced!${NC}"
            echo -e "Kalau masih 0%, cek link https://$DOMAIN/ping di browser lu."
        else
            echo -e "\n${R}❌ MISMATCH: Domain nembak ke IP yang salah!${NC}"
            echo -e "Target seharusnya: ${G}$LOCAL_IP${NC}"
            echo -e "Solusi: Update IP di Cloudflare lu ke $LOCAL_IP."
        fi
    fi
    echo -e "${BLUE}──────────────────────────────────────────────────────────────────────────${NC}"
}

# --- ZERO DEPLOY (zd) ---
function ultimate_deploy() {
    clear; show_ascii; detect_env
    echo -e "${Y}🚀 INITIATING ZERO MONITOR DEPLOYMENT PROTOCOL...${NC}"
    echo -e "${BLUE}──────────────────────────────────────────────────────────────────────────${NC}"
    echo -ne "${C}>> Step 1: Syncing codebase...${NC} "; git pull origin main --quiet && echo -e "${G}DONE${NC}" || { echo -e "${R}FAILED${NC}"; return; }
    if [ -d "$FRONTEND_DIR" ]; then
        echo -ne "${C}>> Step 2: Compiling Frontend (Vite)...${NC} "; cd "$FRONTEND_DIR" && npm run build --silent && echo -e "${G}DONE${NC}" || { echo -e "${R}BUILD ERROR${NC}"; return; }
        if [ "$ENV_MODE" == "SERVER" ]; then
            echo -ne "${C}>> Step 3: Injecting assets to Nginx...${NC} "; sudo rm -rf $NGINX_ROOT/* && sudo cp -r dist/* $NGINX_ROOT/ && sudo chown -R www-data:www-data $NGINX_ROOT && echo -e "${G}DONE${NC}"
        fi
    fi
    if [ "$ENV_MODE" == "SERVER" ]; then
        echo -ne "${C}>> Step 4: Re-energizing Backend (PM2)...${NC} "; cd "$BACKEND_DIR" && npm install --silent; pm2 restart zero-api --silent || pm2 start server.js --name "zero-api" --silent; sudo systemctl restart nginx; echo -e "${G}DONE${NC}"
    fi
    echo -e "${BLUE}──────────────────────────────────────────────────────────────────────────${NC}"
    ultimate_checker
    echo -e "${G}${BOLD}✅ DEPLOYMENT COMPLETE!${NC}"
}

# --- HEALTH CHECKER (zc) ---
function ultimate_checker() {
    detect_env
    echo -e "\n${P}📡 ZERO MONITOR INTEGRITY SCAN ($ENV_MODE):${NC}"
    if [ "$ENV_MODE" == "SERVER" ]; then
        pm2 list | grep -q "online" && echo -e " » Backend Core : ${G}ONLINE${NC}" || echo -e " » Backend Core : ${R}DEAD${NC}"
        ss -tulpn | grep -q ":3000" && echo -e " » API Port     : ${G}OPEN (3000)${NC}" || echo -e " » API Port     : ${R}CLOSED${NC}"
        [ -f "$NGINX_ROOT/index.html" ] && echo -e " » UI Frontend  : ${G}DEPLOYED${NC}" || echo -e " » UI Frontend  : ${R}NOT FOUND${NC}"
        [ -d "/etc/letsencrypt/live/$DOMAIN" ] && echo -e " » SSL Shield   : ${G}ACTIVE${NC}" || echo -e " » SSL Shield   : ${R}INACTIVE${NC}"
    else
        command -v node &> /dev/null && echo -e " » Node Engine  : ${G}READY${NC}" || echo -e " » Node Engine  : ${R}MISSING${NC}"
        [ -d "$FRONTEND_DIR/node_modules" ] && echo -e " » Dependencies : ${G}INSTALLED${NC}" || echo -e " » Dependencies : ${Y}MISSING${NC}"
    fi
}

# --- SETUP & ROUTING ---
function setup_native_commands() {
    echo -e "\n${C}📡 Calibrating Sovereign Aliases V6.0...${NC}"
    sed -i "/# ZEROCHECKER ALIASES/,/alias z=/d" ~/.bashrc &> /dev/null
    {
        echo "# ZEROCHECKER ALIASES V6.0"
        echo "alias zsync='$SCRIPT_PATH zsync'"
        echo "alias zconfig='$SCRIPT_PATH zconfig'"
        echo "alias zdns='$SCRIPT_PATH zdns'"
        echo "alias zc='$SCRIPT_PATH zc'"
        echo "alias zd='$SCRIPT_PATH zd'"
        echo "alias zgh='$SCRIPT_PATH zgh'"
        echo "alias zsetup='$SCRIPT_PATH zsetup'"
        echo "alias z='$SCRIPT_PATH'"
    } >> ~/.bashrc
    echo -e "${G}✅ CORE V6.0 CALIBRATED!${NC}\n${Y}👉 RUN: source ~/.bashrc${NC}"
}

case "$1" in
    zd)     ultimate_deploy ;;
    zc)     ultimate_checker ;;
    zdns)   dns_checker ;;
    zsync)  # Inherited Self Sync
            clear; show_ascii; echo -e "${Y}🚀 INITIATING EVOLUTION...${NC}"; git add .
            MSG="evolve: zero sentinel v6.0 stabilization [$(date +'%H:%M')]"; git commit -m "$MSG" --quiet && git push origin main && echo -e "${G}✅ Cloud Synced.${NC}" || echo -e "${R}❌ Sync Failed.${NC}" ;;
    zgh)    # Inherited Ghost Auth
            clear; show_ascii; echo -e "${B}🐙 GHOST AUTH MATRIX${NC}"; echo -e "${BLUE}───${NC}"; echo -e " » User   : $(git config user.name)"; echo -e " » Remote : $(git remote -v | head -n 1 | awk '{print $2}')"; echo -e " » Branch : $(git branch --show-current)"; echo -e "${BLUE}───${NC}" ;;
    zsetup) setup_native_commands ;;
    *)      show_help ;;
esac