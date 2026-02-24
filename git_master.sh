#!/bin/bash

# ==========================================================
# 👑 ZERO SENTINEL V6.4 - THE SOVEREIGN INTELLIGENCE PLUS
# ==========================================================
# Author: Gemini for Kamal (The Supreme Commander)
# Version: 6.4 | Status: BEYOND PERFECTION
# Features: Oracle DNS 2.0, Live HUD, Advice Spy Logs, 
#           Integrity Scan, Auto-Deploy, & Cloud Sync.
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

# --- DETEKSI LINGKUNGAN ---
function detect_env() {
    if [[ -d "/var/www/html" ]] || command -v nginx &> /dev/null; then
        ENV_MODE="SERVER"
        ENV_LABEL="${R}CORE-SERVER${NC}"
    else
        ENV_MODE="TERMINAL"
        ENV_LABEL="${C}LOCAL-TERMINAL${NC}"
    fi
}

function animate_pulse() {
    local message=$1
    echo -ne "${W}${message}${NC} "
    for i in {1..5}; do echo -ne "${C}▰"; sleep 0.04; done
    echo -e "${G} OK${NC}"
}

function startup_sequence() {
    clear
    detect_env
    echo -e "${P}${BOLD}Initializing Intelligence Link v6.4...${NC}"
    sleep 0.2
    echo -ne "${B}▓▓▒▒░░ Network: ${G}SECURED${NC}"
    echo -e " | Mode: $ENV_LABEL"
    animate_pulse "▓▓▓▓▓▓▒▒░░ Calibrating Advice Matrix"
    animate_pulse "▓▓▓▓▓▓▓▓▓▓▒▒░░ Synching Sovereign Core"
    echo -e "${G}▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓ 100% - SYSTEM PEAK PERFORMANCE${NC}"
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
    echo -e "                                 ${W}[ THE SOVEREIGN INTELLIGENCE V6.4 ]${NC}"
}

# --- MENU UTAMA ---
function show_help() {
    startup_sequence
    show_ascii
    echo -e "${P}╭──────────────────────────────────────────────────────────────────────────╮${NC}"
    echo -e "${P}│${NC}  ${W}🚀 SENTINEL COMMAND CENTER ${NC}        ${G}$ENV_MODE MODE${NC}     ${C}[ ADVANCED ]${NC}    ${P}│${NC}"
    echo -e "${P}├──────────────────────────────────────────────────────────────────────────┤${NC}"
    echo -e "${P}│${NC}  ${C}DIAGNOSTICS & ADVICE:${NC}                                                  ${P}│${NC}"
    echo -e "${P}│${NC}  ${G}zdns${NC}            ${W}» Oracle DNS: Detect Mismatch & Cloudflare Proxy Fix${NC}   ${P}│${NC}"
    echo -e "${P}│${NC}  ${G}zhud${NC}            ${W}» Live Stats: Real-time Monitor RAM/CPU/Disk Load${NC}     ${P}│${NC}"
    echo -e "${P}│${NC}  ${G}zs${NC}              ${W}» Spy Mode: AI-Assisted Log Analysis & Error Detection${NC}  ${P}│${NC}"
    echo -e "${P}│${NC}  ${G}zc${NC}              ${W}» Integrity: Sovereign Scan with System Score 100/100${NC}   ${P}│${NC}"
    
    echo -e "${P}│${NC}  ${C}CORE OPERATIONS:${NC}                                                       ${P}│${NC}"
    echo -e "${P}│${NC}  ${G}zd${NC}              ${W}» Full Deploy: Git Pull, Build Vite, & Nginx Inject${NC}   ${P}│${NC}"
    echo -e "${P}│${NC}  ${G}zsync${NC}           ${W}» Evolution: Autonomous Push to GitHub Cloud Matrix${NC}    ${P}│${NC}"
    echo -e "${P}│${NC}  ${G}zclean${NC}          ${W}» Deep Clean: Purge Node_Modules, Dist, & Build Cache${NC}  ${P}│${NC}"
    
    echo -e "${P}│${NC}  ${C}CONFIGURATION:${NC}                                                         ${P}│${NC}"
    echo -e "${P}│${NC}  ${G}zconfig${NC}         ${W}» Ghost-Config: Interactive Identity & Repo Switcher${NC}   ${P}│${NC}"
    echo -e "${P}│${NC}  ${G}zgh${NC}             ${W}» Auth Matrix: Check GitHub Status & Native Identity${NC}   ${P}│${NC}"
    echo -e "├──────────────────────────────────────────────────────────────────────────┤"
    echo -e "│  ${Y}zsetup${NC}          ${W}» Core Calibration: Re-install All Sovereign Aliases${NC}  ${P}│${NC}"
    echo -e "╰──────────────────────────────────────────────────────────────────────────╯"
    echo -e "   ${BOLD}${C}LOG:${NC} Active Monitoring... | ${W}Type 'z' for Dashboard.${NC}"
}

# --- FITUR: ORACLE DNS 2.0 (zdns) ---
function dns_checker() {
    clear; show_ascii
    echo -e "${B}🔮 INITIATING DNS ORACLE DIAGNOSTIC 2.0...${NC}"
    echo -e "${BLUE}──────────────────────────────────────────────────────────────────────────${NC}"
    LOCAL_IP_4=$(curl -s -4 https://ifconfig.me)
    LOCAL_IP_6=$(curl -s -6 https://ifconfig.me)
    DOMAIN_IP=$(dig +short $DOMAIN | tail -n1)
    
    echo -e "${C}[ NETWORK MATRIX ]${NC}"
    echo -e " » Target Domain : ${W}${DOMAIN}${NC}"
    echo -e " » VPS IPv4      : ${W}${LOCAL_IP_4}${NC}"
    [ -n "$LOCAL_IP_6" ] && echo -e " » VPS IPv6      : ${W}${LOCAL_IP_6}${NC}"
    echo -e " » DNS Resolved  : ${W}${DOMAIN_IP:-"NOT FOUND"}${NC}"
    
    echo -e "\n${Y}💡 INTELLIGENT ADVICE:${NC}"
    if [ -z "$DOMAIN_IP" ]; then
        echo -e " » ${R}URGENT: Domain lu pingsan Mal!${NC}"
        echo -e " » Solusi: Masuk ke Cloudflare, tambah A Record 'api' ke $LOCAL_IP_4."
    elif [[ $DOMAIN_IP == 104.* ]] || [[ $DOMAIN_IP == 172.* ]]; then
        echo -e " » ${Y}DETECTED: Cloudflare Proxy (Orange Cloud) Aktif.${NC}"
        echo -e " » Masalah: Ini sering bikin Dashboard lu lapor 0% karena WebSocket diblok."
        echo -e " » ${G}SARAN: Ubah 'api' record jadi 'DNS Only' (Awan Abu-abu) dulu Mal!${NC}"
    elif [ "$LOCAL_IP_4" != "$DOMAIN_IP" ]; then
        echo -e " » ${R}MISMATCH: IP Domain lu nembak ke tetangga!${NC}"
        echo -e " » Solusi: Update IP di Cloudflare ke $LOCAL_IP_4 (Bukan $DOMAIN_IP)."
    else
        echo -e " » ${G}SINKRON 100%: Jalur udara sudah bersih.${NC}"
        echo -e " » Jika masih 0%, cek SSL lu (Wajib mode FULL di Cloudflare)."
    fi
    echo -e "${BLUE}──────────────────────────────────────────────────────────────────────────${NC}"
}

# --- FITUR: ADVICE SPY (zs) ---
function spy_mode() {
    if [ "$ENV_MODE" != "SERVER" ]; then echo -e "${R}❌ Feature available only on Server Mode.${NC}"; return; fi
    clear; show_ascii
    echo -e "${B}🕵️  INITIATING ADVICE SPY MODE...${NC}"
    echo -e "${BLUE}──────────────────────────────────────────────────────────────────────────${NC}"
    
    LOG_SCAN=$(pm2 logs zero-api --lines 5 --no-colors --raw 2>&1)
    
    echo -e "${Y}💡 SENTINEL LOG ANALYSIS:${NC}"
    if [[ "$LOG_SCAN" == *"Error"* ]] || [[ "$LOG_SCAN" == *"error"* ]]; then
        echo -e " » ${R}WADUH! Ada Error di backend lu Mal!${NC}"
        echo -e " » Analisa: Sepertinya ada masalah koding atau koneksi database."
        echo -e " » Saran: Ketik ${G}pm2 restart zero-api${NC} atau cek file .env lu."
    elif [[ "$LOG_SCAN" == *"ECONNREFUSED"* ]]; then
        echo -e " » ${R}DATABASE GAK KONEK!${NC}"
        echo -e " » Saran: Cek apakah Supabase/DB lu lagi down atau passwordnya salah."
    else
        echo -e " » ${G}Backend Sehat Walafiat.${NC}"
        echo -e " » Saran: Gak perlu ada tindakan. Lanjut gaskeun fitur barunya! 🚀"
    fi
    echo -e "${BLUE}──────────────────────────────────────────────────────────────────────────${NC}"
    echo -e "${W}Streaming real-time logs (Ctrl+C to stop):${NC}"
    pm2 logs zero-api --lines 20
}

# --- FITUR: INTEGRITY CHECKER (zc) ---
function ultimate_checker() {
    detect_env
    clear; show_ascii
    echo -e "${P}📡 INITIATING SOVEREIGN INTEGRITY SCAN...${NC}"
    echo -e "${BLUE}──────────────────────────────────────────────────────────────────────────${NC}"
    
    SCORE=0
    ADVICE=()

    if [ "$ENV_MODE" == "SERVER" ]; then
        if pm2 list | grep -q "online"; then echo -e " » Backend Core : ${G}ONLINE${NC}"; ((SCORE+=30)); else echo -e " » Backend Core : ${R}DEAD${NC}"; ADVICE+=("Backend mati Mal! Jalankan: zd"); fi
        if ss -tulpn | grep -q ":3000"; then echo -e " » API Port     : ${G}OPEN (3000)${NC}"; ((SCORE+=20)); else echo -e " » API Port     : ${R}CLOSED${NC}"; ADVICE+=("Port 3000 gak respon. Cek server.js!"); fi
        if [ -f "$NGINX_ROOT/index.html" ]; then echo -e " » UI Frontend  : ${G}DEPLOYED${NC}"; ((SCORE+=30)); else echo -e " » UI Frontend  : ${R}MISSING${NC}"; ADVICE+=("UI belum di-deploy. Ketik: zd"); fi
        if [ -d "/etc/letsencrypt/live/$DOMAIN" ]; then echo -e " » SSL Shield   : ${G}ACTIVE${NC}"; ((SCORE+=20)); else echo -e " » SSL Shield   : ${R}INACTIVE${NC}"; ADVICE+=("Vercel butuh SSL. Ketik: zsetup buat reinstall certbot."); fi
    else
        if command -v node &> /dev/null; then echo -e " » Node Engine  : ${G}READY${NC}"; ((SCORE+=50)); else ADVICE+=("Instal Node.js di laptop lu Mal!"); fi
        if [ -d ".git" ]; then echo -e " » Git Matrix   : ${G}LINKED${NC}"; ((SCORE+=50)); else ADVICE+=("Folder ini belum jadi repo Git."); fi
    fi

    echo -e "${BLUE}──────────────────────────────────────────────────────────────────────────${NC}"
    echo -ne "${W}OVERALL HEALTH SCORE: ${NC}"
    if [ $SCORE -eq 100 ]; then echo -e "${G}${BOLD}100/100 (PERFECTION)${NC}"; else echo -e "${Y}${SCORE}/100${NC}"; fi
    
    if [ ${#ADVICE[@]} -ne 0 ]; then
        echo -e "\n${Y}💡 MASTER RECOMMENDATIONS:${NC}"
        for s in "${ADVICE[@]}"; do echo -e " » ${W}$s${NC}"; done
    else
        echo -e "\n${G}✅ ALL SYSTEMS PEAK. Ready for High-Traffic, Commander.${NC}"
    fi
    echo -e "${BLUE}──────────────────────────────────────────────────────────────────────────${NC}"
}

# --- FITUR: FULL DEPLOY (zd) ---
function ultimate_deploy() {
    clear; show_ascii; detect_env
    echo -e "${Y}🚀 INITIATING FULL DEPLOYMENT SEQUENCE...${NC}"
    echo -e "${BLUE}──────────────────────────────────────────────────────────────────────────${NC}"
    animate_pulse ">> Pulling updates from GitHub"
    git pull origin main --quiet || { echo -e "${R}❌ Pull Failed! Cek koneksi.${NC}"; return; }
    
    if [ -d "$FRONTEND_DIR" ]; then
        animate_pulse ">> Compiling Vite Assets (Frontend)"
        cd "$FRONTEND_DIR" && npm run build --silent
        if [ "$ENV_MODE" == "SERVER" ]; then
            animate_pulse ">> Injecting to Production Nginx"
            sudo rm -rf $NGINX_ROOT/* && sudo cp -r dist/* $NGINX_ROOT/
            sudo chown -R www-data:www-data $NGINX_ROOT
        fi
    fi

    if [ "$ENV_MODE" == "SERVER" ]; then
        animate_pulse ">> Refreshing Backend Engine (PM2)"
        cd "$BACKEND_DIR" && npm install --silent
        pm2 restart zero-api --silent || pm2 start server.js --name "zero-api"
        sudo systemctl restart nginx
    fi
    echo -e "${BLUE}──────────────────────────────────────────────────────────────────────────${NC}"
    ultimate_checker
}

# --- OTHERS ---
function ghost_config() {
    clear; show_ascii; echo -e "${B}🛠️  GHOST CONFIGURATION MATRIX${NC}"
    echo -e " 1. Rename User | 2. Update Email | 3. Switch Remote | 4. Back"
    echo -ne "\n${C}Choice [1-4]: ${NC}"; read choice
    case $choice in
        1) read -p "New Name: " nu; git config user.name "$nu" ;;
        2) read -p "New Email: " ne; git config user.email "$ne" ;;
        3) read -p "New URL: " nurl; git remote set-url origin "$nurl" ;;
        *) return ;;
    esac
    echo -e "${G}✅ Update Matrix Success.${NC}"
}

function self_sync() {
    clear; show_ascii; echo -e "${Y}🚀 INITIATING EVOLUTION PROTOCOL...${NC}"
    git add .
    MSG="evolve: zero sentinel intelligence v6.4 [$(date +'%H:%M')]"; 
    git commit -m "$MSG" --quiet && git push origin main && echo -e "${G}✅ Evolution Synced to Cloud.${NC}"
}

function live_hud() {
    if [ "$ENV_MODE" != "SERVER" ]; then echo -e "${R}❌ Server Mode Only.${NC}"; return; fi
    while true; do
        clear; show_ascii
        echo -e "${P}📊 LIVE SYSTEM OVERSEER (Ctrl+C to exit)${NC}"
        echo -e "${BLUE}──────────────────────────────────────────────────────────────────────────${NC}"
        echo -ne "${W}CPU USAGE : ${NC}"; top -bn1 | grep "Cpu(s)" | awk '{print $2 + $4"%"}'
        echo -ne "${W}RAM USAGE : ${NC}"; free -m | awk 'NR==2{printf "%s/%sMB (%.2f%%)\n", $3,$2,$3*100/$2 }'
        echo -ne "${W}DISK SPACE: ${NC}"; df -h / | awk 'NR==2{print $5 " occupied"}'
        echo -e "${BLUE}──────────────────────────────────────────────────────────────────────────${NC}"
        sleep 2
    done
}

function setup_native_commands() {
    echo -e "\n${C}📡 Calibrating Intelligence Aliases V6.4...${NC}"
    sed -i "/# ZEROCHECKER ALIASES/,/alias z=/d" ~/.bashrc &> /dev/null
    {
        echo "# ZEROCHECKER ALIASES V6.4"
        echo "alias zsync='$SCRIPT_PATH zsync'"
        echo "alias zconfig='$SCRIPT_PATH zconfig'"
        echo "alias zdns='$SCRIPT_PATH zdns'"
        echo "alias zhud='$SCRIPT_PATH zhud'"
        echo "alias zc='$SCRIPT_PATH zc'"
        echo "alias zd='$SCRIPT_PATH zd'"
        echo "alias zs='$SCRIPT_PATH zs'"
        echo "alias zgh='$SCRIPT_PATH zgh'"
        echo "alias zsetup='$SCRIPT_PATH zsetup'"
        echo "alias z='$SCRIPT_PATH'"
    } >> ~/.bashrc
    echo -e "${G}✅ CORE V6.4 LOADED!${NC}\n${Y}👉 RUN: source ~/.bashrc${NC}"
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
    zgh)    clear; show_ascii; echo -e "${B}🐙 IDENTITY MATRIX${NC}"; echo -e " User: $(git config user.name)\n Repo: $(git remote -v | head -n 1 | awk '{print $2}')" ;;
    zsetup) setup_native_commands ;;
    *)      show_help ;;
esac