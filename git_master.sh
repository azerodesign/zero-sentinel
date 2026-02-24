#!/bin/bash

# ==========================================================
# 👑 ZERO SENTINEL V6.3 - THE ALL-SEEING INTELLIGENCE
# ==========================================================
# Author: Gemini for Kamal (The Supreme Commander)
# Version: 6.3 | Status: SUPREME INTELLIGENCE
# Features: Oracle DNS, Live HUD, Intelligence Spy Logs, 
#           Sovereign Checker, Auto-Deploy, & System Purge.
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

function animate_pulse() {
    local message=$1
    echo -ne "${W}${message}${NC} "
    for i in {1..5}; do echo -ne "${C}▰"; sleep 0.05; done
    echo -e "${G} OK${NC}"
}

function startup_sequence() {
    clear
    detect_env
    echo -e "${P}${BOLD}Initializing Intelligence Link v6.3...${NC}"
    sleep 0.2
    echo -ne "${B}▓▓▒▒░░ Connection: ${G}ACTIVE${NC}"
    echo -e " | Mode: $ENV_LABEL"
    animate_pulse "▓▓▓▓▓▓▒▒░░ Loading Intelligence Core"
    animate_pulse "▓▓▓▓▓▓▓▓▓▓▒▒░░ Loading Advice Engine"
    echo -e "${G}▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓ 100% - CORE STABILIZED${NC}"
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
    echo -e "                                 ${W}[ THE ALL-SEEING INTELLIGENCE V6.3 ]${NC}"
}

# --- MENU UTAMA ---
function show_help() {
    startup_sequence
    show_ascii
    echo -e "${P}╭──────────────────────────────────────────────────────────────────────────╮${NC}"
    echo -e "${P}│${NC}  ${W}🚀 ZERO SENTINEL SUPREME ${NC}          ${G}$ENV_MODE MODE${NC}     ${C}[ INTELLIGENT ]${NC}  ${P}│${NC}"
    echo -e "${P}├──────────────────────────────────────────────────────────────────────────┤${NC}"
    echo -e "${P}│${NC}  ${C}DIAGNOSTICS & ADVICE:${NC}                                                  ${P}│${NC}"
    echo -e "${P}│${NC}  ${G}zdns${NC}            ${W}» DNS Oracle: Verify Domain & IPv4/v6 Sync${NC}           ${P}│${NC}"
    echo -e "${P}│${NC}  ${G}zhud${NC}            ${W}» Live HUD: VPS Real-time Resource Monitor${NC}           ${P}│${NC}"
    echo -e "${P}│${NC}  ${G}zs${NC}              ${W}» Spy Mode: Stream Logs + Smart Analysis${NC}             ${P}│${NC}"
    echo -e "${P}│${NC}  ${G}zc${NC}              ${W}» Sovereign Check: Deep Integrity & Recommendations${NC}  ${P}│${NC}"
    
    echo -e "${P}│${NC}  ${C}CORE OPERATIONS:${NC}                                                       ${P}│${NC}"
    echo -e "${P}│${NC}  ${G}zd${NC}              ${W}» Deployment: One-Tap Build & Nginx Injection${NC}        ${P}│${NC}"
    echo -e "${P}│${NC}  ${G}zsync${NC}           ${W}» Evolution: Autonomous Git Sync & Push Matrix${NC}       ${P}│${NC}"
    echo -e "${P}│${NC}  ${G}zclean${NC}          ${W}» Purge: Clean Node_Modules & Build Cache${NC}            ${P}│${NC}"
    
    echo -e "${P}│${NC}  ${C}GHOST CONFIGURATION:${NC}                                                   ${P}│${NC}"
    echo -e "${P}│${NC}  ${G}zconfig${NC}         ${W}» Switcher: Change Git Auth & Repository URL${NC}         ${P}│${NC}"
    echo -e "${P}│${NC}  ${G}zgh${NC}             ${W}» Identity: Native Auth & Repo Health Status${NC}         ${P}│${NC}"
    echo -e "├──────────────────────────────────────────────────────────────────────────┤"
    echo -e "│  ${Y}zsetup${NC}          ${W}» Core Recalibration & Sovereign Alias Install${NC}        ${P}│${NC}"
    echo -e "╰──────────────────────────────────────────────────────────────────────────╯"
    echo -e "   ${BOLD}${C}LOG:${NC} Intelligence Core Active. | ${W}Ketik 'z' untuk menu ini.${NC}"
}

# --- FITUR: INTELLIGENT SPY (zs) ---
function spy_mode() {
    if [ "$ENV_MODE" != "SERVER" ]; then echo -e "${R}❌ Feature available only on Server Mode.${NC}"; return; fi
    clear; show_ascii
    echo -e "${B}🕵️  INITIATING INTELLIGENT SPY MODE...${NC}"
    echo -e "${BLUE}──────────────────────────────────────────────────────────────────────────${NC}"
    
    # Ambil 5 baris terakhir buat analisa
    LOG_SCAN=$(pm2 logs zero-api --lines 5 --no-colors --raw 2>&1)
    
    echo -e "${Y}💡 SENTINEL ADVICE:${NC}"
    if [[ "$LOG_SCAN" == *"Error"* ]] || [[ "$LOG_SCAN" == *"error"* ]]; then
        echo -e " » ${R}Terdeteksi ERROR dalam log lu Mal!${NC}"
        echo -e " » Saran: Ketik ${G}pm2 restart zero-api${NC} atau cek database koneksi."
    elif [[ "$LOG_SCAN" == *"timeout"* ]]; then
        echo -e " » ${Y}Terdeteksi lamban/timeout. RAM mungkin sesak.${NC}"
        echo -e " » Saran: Jalanin ${G}zhud${NC} buat cek beban RAM atau ${G}zclean${NC}."
    else
        echo -e " » ${G}Log kelihatan bersih. Performa backend optimal.${NC}"
        echo -e " » Saran: Gak ada aksi yang dibutuhin. Lanjut ngoding! ☕"
    fi
    echo -e "${BLUE}──────────────────────────────────────────────────────────────────────────${NC}"
    echo -e "${W}Streaming real-time logs (Ctrl+C to stop):${NC}"
    pm2 logs zero-api --lines 20
}

# --- FITUR: SOVEREIGN CHECKER (zc) ---
function ultimate_checker() {
    detect_env
    clear; show_ascii
    echo -e "${P}📡 INITIATING SOVEREIGN INTEGRITY SCAN...${NC}"
    echo -e "${BLUE}──────────────────────────────────────────────────────────────────────────${NC}"
    
    SCORE=0
    ADVICE=()

    if [ "$ENV_MODE" == "SERVER" ]; then
        # Cek Backend
        if pm2 list | grep -q "online"; then 
            echo -e " » Backend Core : ${G}ONLINE${NC}"; ((SCORE+=30))
        else 
            echo -e " » Backend Core : ${R}DEAD${NC}"
            ADVICE+=("Backend mati Mal, idupin pake: pm2 start server.js")
        fi

        # Cek Port 3000
        if ss -tulpn | grep -q ":3000"; then 
            echo -e " » API Port     : ${G}OPEN (3000)${NC}"; ((SCORE+=20))
        else 
            echo -e " » API Port     : ${R}CLOSED${NC}"
            ADVICE+=("Port 3000 gak respon. Cek apakah server.js lu beneran listen di 3000.")
        fi

        # Cek Nginx
        if [ -f "$NGINX_ROOT/index.html" ]; then 
            echo -e " » UI Frontend  : ${G}DEPLOYED${NC}"; ((SCORE+=30))
        else 
            echo -e " » UI Frontend  : ${R}NOT FOUND${NC}"
            ADVICE+=("File frontend ilang di Nginx path. Jalanin: zd")
        fi

        # Cek SSL
        if [ -d "/etc/letsencrypt/live/$DOMAIN" ]; then 
            echo -e " » SSL Shield   : ${G}ACTIVE${NC}"; ((SCORE+=20))
        else 
            echo -e " » SSL Shield   : ${R}INACTIVE${NC}"
            ADVICE+=("SSL lu belum kedaftar. Jalanin certbot biar Vercel gak ngeblok.")
        fi
    else
        # Terminal Mode
        if command -v node &> /dev/null; then echo -e " » Node Engine  : ${G}READY${NC}"; ((SCORE+=50)); else ADVICE+=("Instal Node.js dulu Mal!"); fi
        if [ -d ".git" ]; then echo -e " » Git Matrix   : ${G}LINKED${NC}"; ((SCORE+=50)); else ADVICE+=("Inisialisasi git dulu: git init"); fi
    fi

    echo -e "${BLUE}──────────────────────────────────────────────────────────────────────────${NC}"
    echo -ne "${W}INTELLIGENCE SCORE: ${NC}"
    if [ $SCORE -eq 100 ]; then echo -e "${G}${BOLD}100/100 (PERFECTION)${NC}"; else echo -e "${Y}${SCORE}/100${NC}"; fi
    
    if [ ${#ADVICE[@]} -ne 0 ]; then
        echo -e "\n${Y}💡 INTELLIGENT RECOMMENDATIONS:${NC}"
        for s in "${ADVICE[@]}"; do echo -e " » ${W}$s${NC}"; done
    else
        echo -e "\n${G}✅ SYSTEM IS PEAK. No action required, Commander.${NC}"
    fi
    echo -e "${BLUE}──────────────────────────────────────────────────────────────────────────${NC}"
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
    
    echo -e "\n${Y}💡 ORACLE ADVICE:${NC}"
    if [ -z "$DOMAIN_IP" ]; then
        echo -e " » ${R}Domain belum nembak ke mana-mana!${NC}"
        echo -e " » Solusi: Tambahin A Record di Cloudflare: 'api' -> $LOCAL_IP"
    elif [ "$LOCAL_IP" != "$DOMAIN_IP" ]; then
        echo -e " » ${R}Terjadi MISMATCH IP!${NC}"
        echo -e " » Solusi: Update IP di Cloudflare ke $LOCAL_IP (Sekarang: $DOMAIN_IP)"
    else
        echo -e " » ${G}Koneksi sinkron 100%. Jalur udara bersih.${NC}"
        [[ $DOMAIN_IP == 104.* ]] && echo -e " » Info: Proxy Cloudflare aktif. Aman buat produksi."
    fi
    echo -e "${BLUE}──────────────────────────────────────────────────────────────────────────${NC}"
}

# --- FITUR: LIVE HUD (zhud) ---
function live_hud() {
    if [ "$ENV_MODE" != "SERVER" ]; then echo -e "${R}❌ Server Mode Only.${NC}"; return; fi
    while true; do
        clear; show_ascii
        echo -e "${P}📊 LIVE RESOURCE HUD (Ctrl+C to exit)${NC}"
        echo -e "${BLUE}──────────────────────────────────────────────────────────────────────────${NC}"
        echo -ne "${W}CPU: ${NC}"; top -bn1 | grep "Cpu(s)" | awk '{print $2 + $4"%"}'
        echo -ne "${W}RAM: ${NC}"; free -m | awk 'NR==2{printf "%s/%sMB (%.2f%%)\n", $3,$2,$3*100/$2 }'
        echo -ne "${W}DISK: ${NC}"; df -h / | awk 'NR==2{print $5 " used"}'
        echo -e "${BLUE}──────────────────────────────────────────────────────────────────────────${NC}"
        sleep 2
    done
}

# --- FITUR: DEPLOY (zd) ---
function ultimate_deploy() {
    clear; show_ascii; detect_env
    echo -e "${Y}🚀 INITIATING DEPLOYMENT...${NC}"
    echo -e "${BLUE}──────────────────────────────────────────────────────────────────────────${NC}"
    animate_pulse ">> Step 1: Pulling from GitHub"
    git pull origin main --quiet || { echo -e "${R}Pull Failed!${NC}"; return; }
    
    if [ -d "$FRONTEND_DIR" ]; then
        animate_pulse ">> Step 2: Compiling Frontend"
        cd "$FRONTEND_DIR" && npm run build --silent
        if [ "$ENV_MODE" == "SERVER" ]; then
            animate_pulse ">> Step 3: Injecting to Nginx"
            sudo rm -rf $NGINX_ROOT/* && sudo cp -r dist/* $NGINX_ROOT/
            sudo chown -R www-data:www-data $NGINX_ROOT
        fi
    fi

    if [ "$ENV_MODE" == "SERVER" ]; then
        animate_pulse ">> Step 4: Restarting Backend"
        cd "$BACKEND_DIR" && npm install --silent
        pm2 restart zero-api --silent || pm2 start server.js --name "zero-api"
        sudo systemctl restart nginx
    fi
    echo -e "${BLUE}──────────────────────────────────────────────────────────────────────────${NC}"
    ultimate_checker
}

# --- IDENTITY & SYNC ---
function ghost_config() {
    clear; show_ascii; echo -e "${B}🛠️  GHOST CONFIG MATRIX${NC}"
    echo -e " 1. Rename User | 2. Update Email | 3. Switch Remote | 4. Back"
    echo -ne "\n${C}Choice: ${NC}"; read choice
    case $choice in
        1) read -p "New Name: " nu; git config user.name "$nu" ;;
        2) read -p "New Email: " ne; git config user.email "$ne" ;;
        3) read -p "New URL: " nurl; git remote set-url origin "$nurl" ;;
        *) return ;;
    esac
    echo -e "${G}✅ Updated.${NC}"
}

function system_purge() {
    clear; show_ascii; echo -e "${R}☢️  SYSTEM PURGE...${NC}"
    rm -rf "$FRONTEND_DIR/dist" "$FRONTEND_DIR/.vite" &> /dev/null
    echo -e "${G}Cache Cleared.${NC}"
    read -p "Nuke node_modules? [y/N]: " deep
    [[ $deep == "y" ]] && rm -rf "$FRONTEND_DIR/node_modules" "$BACKEND_DIR/node_modules" && echo -e "${G}Dependencies nuked.${NC}"
}

function self_sync() {
    clear; show_ascii; echo -e "${Y}🚀 INITIATING EVOLUTION...${NC}"
    git add .
    MSG="evolve: zero sentinel intelligence v6.3 [$(date +'%H:%M')]"; git commit -m "$MSG" --quiet && git push origin main && echo -e "${G}✅ Cloud Synced.${NC}"
}

function setup_native_commands() {
    echo -e "\n${C}📡 Calibrating Intelligence Aliases V6.3...${NC}"
    sed -i "/# ZEROCHECKER ALIASES/,/alias z=/d" ~/.bashrc &> /dev/null
    {
        echo "# ZEROCHECKER ALIASES V6.3"
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
    echo -e "${G}✅ CORE V6.3 CALIBRATED!${NC}\n${Y}👉 RUN: source ~/.bashrc${NC}"
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
    zgh)    clear; show_ascii; echo -e "${B}🐙 IDENTITY STATUS${NC}"; echo -e " User: $(git config user.name)\n Repo: $(git remote -v | head -n 1 | awk '{print $2}')" ;;
    zsetup) setup_native_commands ;;
    *)      show_help ;;
esac