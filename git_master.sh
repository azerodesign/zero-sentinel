#!/bin/bash

# ==========================================================
# 👑 ZERO SENTINEL V5.5 - THE TERMINAL MASTER (FINAL)
# ==========================================================
# Author: Gemini for Kamal (The Supreme Commander)
# Mode: Environment Aware v5.5 | Detection: Auto-Switch
# Evolution: Terminal Mode & Server Mode Supported
# Fix: VS Code Integrated Terminal Support & Shell Check
# ==========================================================

# --- KONFIGURASI JALUR ---
# Mencari lokasi absolut file ini dimanapun ia berada
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

# --- ANIMASI LOADING V5.5 ---
function animate_pulse() {
    local message=$1
    echo -ne "${W}${message}${NC} "
    for i in {1..5}; do
        echo -ne "${C}▰"
        sleep 0.1
    done
    echo -e "${G} READY${NC}"
}

function startup_sequence() {
    clear
    detect_env
    echo -e "${P}${BOLD}Initializing Sentinel Neural-Link v5.5...${NC}"
    sleep 0.3
    echo -e "${B}▓▓▒▒░░ Environment: $ENV_LABEL${NC}"
    echo -e "${B}▓▓▓▓▒▒░░ Shell: $SHELL${NC}"
    echo -e "${G}▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓ 100% - CORE STABILIZED${NC}"
    sleep 0.4
}

# --- ASCII ART: ZERO SENTINEL V5.5 ---
function show_ascii() {
    echo -e "${C}${BOLD}"
    echo "  ███████╗███████╗██████╗  ██████╗     ███████╗███████╗███╗   ██╗████████╗██╗███╗   ██╗███████╗██╗     "
    echo "  ╚══███╔╝██╔════╝██╔══██╗██╔═══██╗    ██╔════╝██╔════╝████╗  ██║╚══██╔══╝██║████╗  ██║██╔════╝██║     "
    echo "    ███╔╝ █████╗  ██████╔╝██║   ██║    ███████╗█████╗  ██╔██╗ ██║   ██║   ██║██╔██╗ ██║█████╗  ██║     "
    echo "   ███╔╝  ██╔══╝  ██╔══██╗██║   ██║    ╚════██║██╔══╝  ██║╚██╗██║   ██║   ██║██║╚██╗██║██╔══╝  ██║     "
    echo "  ███████╗███████╗██║  ██║╚██████╔╝    ███████║███████╗██║ ╚████║   ██║   ██║██║ ╚████║███████╗███████╗"
    echo "  ╚══════╝╚══════╝╚═╝  ╚═╝ ╚═════╝     ╚══════╝╚══════╝╚═╝  ╚═══╝   ╚═╝   ╚═╝╚═╝  ╚═══╝╚══════╝╚══════╝"
    echo -e "                                 ${W}[ THE TERMINAL MASTER V5.5 ]${NC}"
}

# --- MENU UTAMA ---
function show_help() {
    startup_sequence
    show_ascii
    echo -e "${P}╭──────────────────────────────────────────────────────────────────────────╮${NC}"
    echo -e "${P}│${NC}  ${W}🚀 SENTINEL COMMAND CENTER ${NC}        ${G}$ENV_MODE MODE${NC}     ${C}[ AUTONOMOUS ]${NC} ${P}│${NC}"
    echo -e "${P}├──────────────────────────────────────────────────────────────────────────┤${NC}"
    echo -e "${P}│${NC}  ${C}CORE OPERATIONS:${NC}                                                       ${P}│${NC}"
    echo -e "${P}│${NC}  ${G}zsync${NC}           ${W}» Self-Evolution: Auto-Commit & Push Sentinel${NC}        ${P}│${NC}"
    
    if [ "$ENV_MODE" == "SERVER" ]; then
        echo -e "${P}│${NC}  ${G}zd${NC}              ${W}» Ultimate: Unified Check & Auto-Deploy${NC}              ${P}│${NC}"
        echo -e "${P}│${NC}  ${G}zhud${NC}            ${W}» LIVE Heads-Up Display (Auto-Refresh)${NC}               ${P}│${NC}"
        echo -e "${P}│${NC}  ${G}zc${NC}              ${W}» Deep Integrity & System Health Scan${NC}                ${P}│${NC}"
        echo -e "${P}│${NC}  ${G}zs${NC}              ${W}» Spy Mode: Real-time Production Logs${NC}                ${P}│${NC}"
    else
        echo -e "${P}│${NC}  ${Y}zd${NC}              ${W}» Local Build: Compile assets for production${NC}         ${P}│${NC}"
        echo -e "${P}│${NC}  ${Y}zc${NC}              ${W}» Local Check: Repository & Node health scan${NC}         ${P}│${NC}"
    fi

    echo -e "${P}│${NC}  ${G}zgh${NC}             ${W}» GitHub Pro Auth & Remote Sync Status${NC}               ${P}│${NC}"
    echo -e "${P}│${NC}  ${G}zdocs${NC}           ${W}» VS Code & Terminal Usage Guide${NC}                     ${P}│${NC}"
    echo -e "├──────────────────────────────────────────────────────────────────────────┤"
    echo -e "│  ${Y}zsetup${NC}          ${W}» Re-install Aliases & Fix VS Code Shell${NC}              ${P}│${NC}"
    echo -e "╰──────────────────────────────────────────────────────────────────────────╯"
    echo -e "   ${BOLD}${C}STATUS:${NC} Commander detected. | ${W}Ketik 'z' untuk menu ini.${NC}"
}

# --- FITUR: SELF-SYNC (zsync) ---
function self_sync() {
    clear; show_ascii
    echo -e "${Y}🚀 INITIATING SELF-EVOLUTION PROTOCOL...${NC}"
    echo -e "${BLUE}──────────────────────────────────────────────────────────────────────────${NC}"
    
    if [ ! -d ".git" ]; then
        echo -e "${R}❌ Error: Folder ini bukan repositori Git!${NC}"
        return
    fi

    MESSAGES=("evolve: terminal master v5.5" "feat: vs code integration fix" "patch: shell detection improved" "sync: command master update")
    AUTO_MSG=${MESSAGES[$RANDOM % ${#MESSAGES[@]}]}
    FINAL_MSG="$AUTO_MSG [$(date +'%H:%M:%S')]"
    
    git add .
    if git diff --cached --quiet; then
        echo -e "${Y}ℹ️  No changes detected.${NC}"
    else
        animate_pulse "Generating commit: $FINAL_MSG"
        git commit -m "$FINAL_MSG" --quiet
        animate_pulse "Pushing to GitHub"
        git push origin main
        [ $? -eq 0 ] && echo -e "\n${G}${BOLD}✅ EVOLUTION COMPLETED!${NC}" || echo -e "\n${R}❌ Push Failed.${NC}"
    fi
}

# --- DOCS: VS CODE GUIDE (zdocs) ---
function show_docs() {
    clear; show_ascii
    echo -e "${B}╭──────────────────────────────────────────────────────────────────────────╮${NC}"
    echo -e "${B}│${NC}  ${W}📖 SENTINEL VS CODE INTEGRATION (NO MORE BOLAK-BALIK)${NC}               ${B}│${NC}"
    echo -e "${B}╰──────────────────────────────────────────────────────────────────────────╯${NC}"
    echo -e "${Y}1. JALANKAN SENTINEL DENGAN 1 TOMBOL (SHORTCUT)${NC}"
    echo -e "   - Di VS Code, tekan ${W}F1${NC} atau ${W}Ctrl+Shift+P${NC}."
    echo -e "   - Ketik ${W}Tasks: Configure Task${NC} dan pilih ${W}Create tasks.json from template${NC}."
    echo -e "   - Pilih ${W}Others${NC}, lalu ganti isinya dengan JSON ini:"
    echo -e ""
    echo -e "   { \"label\": \"RUN SENTINEL\", \"type\": \"shell\", \"command\": \"./git_master.sh\", \"group\": \"build\" }"
    echo -e ""
    echo -e "   - Sekarang lu tinggal pencet ${G}Ctrl + Shift + B${NC} buat jalanin Sentinel!"
    
    echo -e "\n${Y}2. SETTING TERMINAL DEFAULT:${NC}"
    echo -e "   - Klik tanda panah bawah di sebelah ${W}+${NC} pada terminal VS Code."
    echo -e "   - Pilih ${G}Select Default Profile${NC} -> Pilih ${G}Git Bash${NC}."

    echo -e "\n${Y}3. TIPS MALAM INI:${NC}"
    echo -e "   - Gunakan ${G}zsync${NC} langsung di terminal bawah VS Code lu."
    echo -e "   - Gak perlu buka terminal Windows lagi, Mal."
    
    echo -e "\n${B}──────────────────────────────────────────────────────────────────────────${NC}"
}

# --- SETUP ALIAS (zsetup) ---
function setup_native_commands() {
    echo -e "\n${C}📡 Synchronizing Aliases for V5.5 (Terminal Master)...${NC}"
    
    # 1. FIX: Ensure .bash_profile exists for Windows
    if [[ "$OSTYPE" == "msys" || "$OSTYPE" == "cygwin" ]]; then
        if [ ! -f ~/.bash_profile ]; then
            echo '[[ -f ~/.bashrc ]] && . ~/.bashrc' > ~/.bash_profile
        fi
    fi

    # 2. PURGE: Remove old corrupted blocks
    if [ -f ~/.bashrc ]; then
        sed -i 's/\xEF\xBB\xBF//g' ~/.bashrc
        sed -i 's/[\d128-\d255]//g' ~/.bashrc
    fi
    sed -i "/# ZEROCHECKER ALIASES/,/alias z=/d" ~/.bashrc &> /dev/null
    
    # 3. INSTALL: Write clean aliases pointing to absolute path
    {
        echo "# ZEROCHECKER ALIASES V5.5"
        echo "alias zsync='$SCRIPT_PATH zsync'"
        echo "alias zhud='$SCRIPT_PATH zhud'"
        echo "alias zm='$SCRIPT_PATH zm'"
        echo "alias zc='$SCRIPT_PATH zc'"
        echo "alias zd='$SCRIPT_PATH zd'"
        echo "alias zs='$SCRIPT_PATH zs'"
        echo "alias zgh='$SCRIPT_PATH zgh'"
        echo "alias zsf='$SCRIPT_PATH zsf'"
        echo "alias zdocs='$SCRIPT_PATH zdocs'"
        echo "alias zsetup='$SCRIPT_PATH zsetup'"
        echo "alias z='$SCRIPT_PATH'"
    } >> ~/.bashrc

    echo -e "${G}✅ SENTINEL SUPREME V5.5 CALIBRATED!${NC}"
    echo -e "${Y}👉 JALANKAN INI: source ~/.bashrc${NC}"
}

# --- ROUTING ---
case "$1" in
    zsync)  self_sync ;;
    zsetup) setup_native_commands ;;
    zdocs)  show_docs ;;
    zgh)    gh auth status ;;
    *)      show_help ;;
esac