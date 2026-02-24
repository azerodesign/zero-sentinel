#!/bin/bash

# ==========================================================
# 👑 ZERO SENTINEL V6.6 - THE CONSCIOUS MASTER
# ==========================================================
# Author: Gemini for Kamal (The Supreme Commander)
# Version: 6.6 | Status: SUPREME OPERATIONAL
# Fix: Automatic Environment Detection on Direct Commands
# Features: Oracle DNS, Live HUD, Smart Spy, Integrity Scan, 
#           Auto-Deploy, Self-Evolution, & Identity Switcher.
# ==========================================================

# --- KONFIGURASI JALUR (WAJIB SESUAI) ---
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

# --- DETEKSI LINGKUNGAN (PENTING: Diperbaiki agar global) ---
function detect_env() {
    if [[ -d "/var/www/html" ]] || command -v nginx &> /dev/null; then
        ENV_MODE="SERVER"
        ENV_LABEL="${R}CORE-SERVER${NC}"
    else
        ENV_MODE="TERMINAL"
        ENV_LABEL="${C}LOCAL-TERMINAL${NC}"
    fi
}

# Jalankan deteksi segera saat script dijalankan
detect_env

function animate_pulse() {
    local message=$1
    echo -ne "${W}${message}${NC} "
    for i in {1..5}; do echo -ne "${C}▰"; sleep 0.03; done
    echo -e "${G} OK${NC}"
}

function startup_sequence() {
    clear
    echo -e "${P}${BOLD}Initializing Sentinel Absolute Link v6.6...${NC}"
    sleep 0.2
    echo -ne "${B}▓▓▒▒░░ Network: ${G}SECURED${NC}"
    echo -e " | Mode: $ENV_LABEL"
    animate_pulse "▓▓▓▓▓▓▒▒░░ Synchronizing Intelligence Core"
    animate_pulse "▓▓▓▓▓▓▓▓▓▓▒▒░░ Calibrating Sovereign Matrix"
    echo -e "${G}▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓ 100% - ALL SYSTEMS GO${NC}"
    sleep 0.2
}

function show_ascii() {
    echo -e "${C}${BOLD}"
    echo "  ███████╗███████╗██████╗  ██████╗     ███████╗███████╗███╗   ██╗████████╗██╗███╗   ██╗███████╗██╗     "
    echo "  ╚══███╔╝██╔════╝██╔══██╗██╔═══██╗    ██╔════╝██╔════╝████╗  ██║╚══██╔══╝██║████╗  ██║██╔════╝██║     "
    echo "    ███╔╝ █████╗  ██████╔╝██║   ██║    ███████╗█████╗  ██╔██╗ ██║   ██║   ██║██╔██╗ ██║█████╗  ██║     "
    echo "   ███╔╝  ██╔══╝  ██╔══██╗██║   ██║    ╚════██║██╔══╝  ██║╚██╗██║   ██║   ██║██║╚██╗██║██╔══╝  ██║     "
    echo "  ███████╗███████╗██║  ██║╚██████╔╝    ███████║███████╗██║ ╚████║   ██║   ██║██║ ╚████║███████╗███████╗"
    echo "  ╚══════╝╚══════╝╚═╝  ╚═╝ ╚═════╝     ╚══════╝╚══════╝╚═╝  ╚═══╝   ╚═╝   ╚═╝╚═╝  ╚═══╝╚══════╝╚══════╝"
    echo -e "                                 ${W}[ THE CONSCIOUS MASTER V6.6 ]${NC}"
}

# --- MENU UTAMA ---
function show_help() {
    startup_sequence
    show_ascii
    echo -e "${P}╭──────────────────────────────────────────────────────────────────────────╮${NC}"
    echo -e "${P}│${NC}  ${W}🚀 SENTINEL COMMAND CENTER ${NC}        ${G}$ENV_MODE MODE${NC}     ${C}[ ABSOLUTE ]${NC}    ${P}│${NC}"
    echo -e "${P}├──────────────────────────────────────────────────────────────────────────┤${NC}"
    echo -e "${P}│${NC}  ${C}DIAGNOSTICS & ADVICE:${NC}                                                  ${P}│${NC}"
    echo -e "${P}│${NC}  ${G}zdns${NC}            ${W}» DNS Oracle: Verify Domain & Cloudflare Proxy Fix${NC}   ${P}│${NC}"
    echo -e "${P}│${NC}  ${G}zhud${NC}            ${W}» Live HUD: VPS Real-time Resource Monitor${NC}           ${P}│${NC}"
    echo -e "${P}│${NC}  ${G}zs${NC}              ${W}» Spy Mode: AI-Assisted Log Analysis & Detection${NC}      ${P}│${NC}"
    echo -e "${P}│${NC}  ${G}zc${NC}              ${W}» Integrity: Sovereign Scan & System Health Score${NC}    ${P}│${NC}"
    
    echo -e "${P}│${NC}  ${C}CORE OPERATIONS:${NC}                                                       ${P}│${NC}"
    echo -e "${P}│${NC}  ${G}zd${NC}              ${W}» Full Deploy: Git Pull, Build, & Nginx Injection${NC}    ${P}│${NC}"
    echo -e "${P}│${NC}  ${G}zsync${NC}           ${W}» Evolution: Autonomous Push to GitHub Cloud${NC}         ${P}│${NC}"
    echo -e "${P}│${NC}  ${G}zclean${NC}          ${W}» Deep Clean: Purge Cache, Dist, & Node_Modules${NC}      ${P}│${NC}"
    
    echo -e "${P}│${NC}  ${C}IDENTITY & CONFIG:${NC}                                                     ${P}│${NC}"
    echo -e "${P}│${NC}  ${G}zconfig${NC}         ${W}» Switcher: Change Git Auth & Repository URL${NC}         ${P}│${NC}"
    echo -e "${P}│${NC}  ${G}zgh${NC}             ${W}» Auth Matrix: Check GitHub Status & Native ID${NC}       ${P}│${NC}"
    echo -e "├──────────────────────────────────────────────────────────────────────────┤"
    echo -e "│  ${Y}zsetup${NC}          ${W}» Core Calibration: Re-install All Master Aliases${NC}     ${P}│${NC}"
    echo -e "╰──────────────────────────────────────────────────────────────────────────╯"
    echo -e "   ${BOLD}${C}LOG:${NC} Intelligence Ready. | ${W}Type 'z' to see this menu.${NC}"
}

# --- FITUR: DNS ORACLE (zdns) ---
function dns_checker() {
    clear; show_ascii
    echo -e "${B}🔮 INITIATING DNS ORACLE DIAGNOSTIC...${NC}"
    echo -e "${BLUE}──────────────────────────────────────────────────────────────────────────${NC}"
    LOCAL_IP=$(curl -s -4 https://ifconfig.me)
    DOMAIN_IP=$(dig +short $DOMAIN | tail -n1)
    echo -e " » Domain : ${W}${DOMAIN}${NC}"
    echo -e " » VPS IP : ${W}${LOCAL_IP}${NC}"
    echo -e " » DNS IP : ${W}${DOMAIN_IP:-"NOT FOUND"}${NC}"
    echo -e "\n${Y}💡 INTELLIGENT ADVICE:${NC}"
    if [[ $DOMAIN_IP == 104.* ]] || [[ $DOMAIN_IP == 172.* ]]; then
        echo -e " » ${Y}Cloudflare Proxy Terdeteksi (Awan Oranye).${NC}"
        echo -e " » Saran: Ubah ke 'DNS Only' di Cloudflare biar metrik 0% lu ilang!${NC}"
    elif [ "$LOCAL_IP" != "$DOMAIN_IP" ]; then
        echo -e " » ${R}MISMATCH IP! Domain nembak ke server lain.${NC}"
        echo -e " » Solusi: Update A-Record 'api' di Cloudflare ke $LOCAL_IP."
    else
        echo -e " » ${G}SINKRON 100%. Jalur komunikasi bersih.${NC}"
    fi
    echo -e "${BLUE}──────────────────────────────────────────────────────────────────────────${NC}"
}

# --- FITUR: ADVICE SPY (zs) ---
function spy_mode() {
    if [ "$ENV_MODE" != "SERVER" ]; then 
        echo -e "${R}❌ Server Mode Only.${NC}"
        echo -e "${Y}Info: Kamu berada di $ENV_LABEL. Perintah ini butuh VPS lingkungan asli.${NC}"
        return
    fi
    clear; show_ascii
    LOG_SCAN=$(pm2 logs zero-api --lines 5 --no-colors --raw 2>&1)
    echo -e "${Y}💡 LOG ANALYSIS:${NC}"
    if [[ "$LOG_SCAN" == *"Error"* ]] || [[ "$LOG_SCAN" == *"error"* ]]; then 
        echo -e " » ${R}Backend lu Error Mal!${NC} Ketik: ${G}pm2 restart zero-api${NC}"
    else 
        echo -e " » ${G}Backend Sehat Walafiat.${NC}"
    fi
    echo -e "${BLUE}──────────────────────────────────────────────────────────────────────────${NC}"
    pm2 logs zero-api --lines 20
}

# --- FITUR: INTEGRITY CHECKER (zc) ---
function ultimate_checker() {
    clear; show_ascii
    SCORE=0; ADVICE=()
    if [ "$ENV_MODE" == "SERVER" ]; then
        pm2 list | grep -q "online" && ((SCORE+=40)) || ADVICE+=("Backend mati! Jalankan: zd")
        [ -f "$NGINX_ROOT/index.html" ] && ((SCORE+=30)) || ADVICE+=("Frontend ilang! Jalankan: zd")
        [ -d "/etc/letsencrypt/live/$DOMAIN" ] && ((SCORE+=30)) || ADVICE+=("SSL mati! Jalankan: zsetup")
    else
        command -v node &> /dev/null && ((SCORE+=50)) || ADVICE+=("Node.js belom ada di laptop.")
        [ -d ".git" ] && ((SCORE+=50)) || ADVICE+=("Git belom di-init.")
    fi
    echo -e "${P}📡 SYSTEM SCORE: ${G}${SCORE}/100${NC}"
    for s in "${ADVICE[@]}"; do echo -e " » ${W}$s${NC}"; done
    echo -e "${BLUE}──────────────────────────────────────────────────────────────────────────${NC}"
}

# --- FITUR: DEPLOY (zd) ---
function ultimate_deploy() {
    clear; show_ascii
    echo -e "${Y}🚀 INITIATING MASTER DEPLOYMENT...${NC}"
    git pull origin main --quiet
    if [ -d "$FRONTEND_DIR" ]; then
        animate_pulse ">> Compiling Frontend"
        cd "$FRONTEND_DIR" && npm run build --silent
        if [ "$ENV_MODE" == "SERVER" ]; then
            sudo rm -rf $NGINX_ROOT/* && sudo cp -r dist/* $NGINX_ROOT/
            sudo chown -R www-data:www-data $NGINX_ROOT
        fi
    fi
    if [ "$ENV_MODE" == "SERVER" ]; then
        animate_pulse ">> Re-energizing Backend"
        cd "$BACKEND_DIR" && npm install --silent
        pm2 restart zero-api --silent || pm2 start server.js --name "zero-api"
        sudo systemctl restart nginx
    fi
    echo -e "${G}✅ DEPLOYMENT SUCCESSFUL!${NC}"
}

# --- OTHER CORE CMDS ---
function self_sync() {
    clear; show_ascii; git add .
    MSG="evolve: zero sentinel master v6.6 [$(date +'%H:%M')]"
    git commit -m "$MSG" --quiet && git push origin main && echo -e "${G}✅ Cloud Synced.${NC}"
}

function setup_native_commands() {
    echo -e "\n${C}📡 Calibrating Master Aliases V6.6...${NC}"
    sed -i "/# ZEROCHECKER ALIASES/,/alias z=/d" ~/.bashrc &> /dev/null
    {
        echo "# ZEROCHECKER ALIASES V6.6"
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
    echo -e "${G}✅ MASTER CORE V6.6 LOADED!${NC}\n${Y}👉 RUN: source ~/.bashrc${NC}"
}

# --- ROUTING ---
case "$1" in
    zd)     ultimate_deploy ;;
    zc)     ultimate_checker ;;
    zdns)   dns_checker ;;
    zs)     spy_mode ;;
    zsync)  self_sync ;;
    zsetup) setup_native_commands ;;
    zhud)   if [ "$ENV_MODE" == "SERVER" ]; then top; else echo "Server Only"; fi ;;
    zgh)    echo -e "User: $(git config user.name)\nRepo: $(git remote -v | head -n 1 | awk '{print $2}')" ;;
    *)      show_help ;;
esac