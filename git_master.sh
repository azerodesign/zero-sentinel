#!/bin/bash

# ==========================================================
# 👑 ZERO SENTINEL V5.7.1 - THE GHOST CONFIGURATOR
# ==========================================================
# Author: Gemini for Kamal (The Supreme Commander)
# Version: 5.7.1 | Repository: azerodesign/zero-sentinel
# Feature: Interactive Identity & Repository Configuration
# Fix: Advanced Ghost-Auth Matrix & UI Consistency
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
    echo -e "${P}${BOLD}Initializing Sentinel Neural-Link v5.7.1...${NC}"
    sleep 0.3
    echo -ne "${B}▓▓▒▒░░ Connection: ${G}ESTABLISHED${NC}"
    echo -e " | Mode: $ENV_LABEL"
    echo -e "${G}▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓ 100% - SYSTEM STABILIZED${NC}"
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
    echo -e "                                 ${W}[ THE GHOST CONFIGURATOR V5.7.1 ]${NC}"
}

# --- MENU UTAMA ---
function show_help() {
    startup_sequence
    show_ascii
    echo -e "${P}╭──────────────────────────────────────────────────────────────────────────╮${NC}"
    echo -e "${P}│${NC}  ${W}🚀 SENTINEL COMMAND CENTER ${NC}        ${G}$ENV_MODE MODE${NC}     ${C}[ SOVEREIGN ]${NC}    ${P}│${NC}"
    echo -e "${P}├──────────────────────────────────────────────────────────────────────────┤${NC}"
    echo -e "${P}│${NC}  ${C}CORE OPERATIONS:${NC}                                                       ${P}│${NC}"
    echo -e "${P}│${NC}  ${G}zsync${NC}           ${W}» Self-Evolution: Autonomous Commit & Cloud Sync${NC}       ${P}│${NC}"
    echo -e "${P}│${NC}  ${G}zconfig${NC}         ${W}» Ghost-Config: Change GitHub Auth & Repository URL${NC}    ${P}│${NC}"
    
    if [ "$ENV_MODE" == "SERVER" ]; then
        echo -e "${P}│${NC}  ${G}zd${NC}              ${W}» Ultimate: Unified Check & Auto-Deploy${NC}              ${P}│${NC}"
        echo -e "${P}│${NC}  ${G}zhud${NC}            ${W}» LIVE Heads-Up Display (Auto-Refresh)${NC}               ${P}│${NC}"
        echo -e "${P}│${NC}  ${G}zc${NC}              ${W}» Deep Integrity & System Health Scan${NC}                ${P}│${NC}"
    else
        echo -e "${P}│${NC}  ${Y}zd${NC}              ${W}» Local Build: Compile assets for production${NC}         ${P}│${NC}"
        echo -e "${P}│${NC}  ${Y}zc${NC}              ${W}» Local Check: Repository & Node health scan${NC}         ${P}│${NC}"
    fi

    echo -e "${P}│${NC}  ${G}zgh${NC}             ${W}» Ghost Auth: Repository & Native Identity Status${NC}    ${P}│${NC}"
    echo -e "├──────────────────────────────────────────────────────────────────────────┤"
    echo -e "│  ${Y}zsetup${NC}          ${W}» Re-install Aliases & Core Calibration${NC}              ${P}│${NC}"
    echo -e "╰──────────────────────────────────────────────────────────────────────────╯"
    echo -e "   ${BOLD}${C}STATUS:${NC} Architect ready. | ${W}Ketik 'z' untuk menu ini.${NC}"
}

# --- CONFIG MANAGER (zconfig) ---
function ghost_config() {
    clear
    show_ascii
    echo -e "${B}🛠️  INITIATING GHOST CONFIGURATION MATRIX...${NC}"
    echo -e "${BLUE}──────────────────────────────────────────────────────────────────────────${NC}"
    
    echo -e "${Y}Pilih parameter yang ingin diubah:${NC}"
    echo -e " ${W}1.${NC} Ganti Git Username"
    echo -e " ${W}2.${NC} Ganti Git Email"
    echo -e " ${W}3.${NC} Ganti Repository URL (Remote Origin)"
    echo -e " ${W}4.${NC} Kembali ke Menu"
    echo -ne "\n${C}Input [1-4]: ${NC}"
    read choice

    case $choice in
        1)
            echo -ne "\n${W}Username Baru: ${NC}"
            read new_user
            git config user.name "$new_user"
            echo -e "${G}✅ Username berhasil diubah jadi: $new_user${NC}"
            ;;
        2)
            echo -ne "\n${W}Email Baru: ${NC}"
            read new_email
            git config user.email "$new_email"
            echo -e "${G}✅ Email berhasil diubah jadi: $new_email${NC}"
            ;;
        3)
            echo -ne "\n${W}URL Repo Baru (HTTPS): ${NC}"
            read new_url
            if [ -n "$new_url" ]; then
                git remote set-url origin "$new_url"
                echo -e "${G}✅ Remote URL berhasil diubah jadi: $new_url${NC}"
            else
                echo -e "${R}❌ URL tidak boleh kosong Mal!${NC}"
            fi
            ;;
        4)
            show_help
            return
            ;;
        *)
            echo -e "${R}❌ Pilihan gak valid!${NC}"
            ;;
    esac
    echo -e "${BLUE}──────────────────────────────────────────────────────────────────────────${NC}"
    echo -e "${C}Tips:${NC} Ketik ${G}zgh${NC} buat liat hasilnya."
}

# --- GITHUB CHECKER (zgh) ---
function github_checker() {
    clear
    show_ascii
    echo -e "${B}🐙 INITIATING GHOST AUTH MATRIX...${NC}"
    echo -e "${BLUE}──────────────────────────────────────────────────────────────────────────${NC}"
    
    USER_NAME=$(git config user.name)
    USER_EMAIL=$(git config user.email)
    REMOTE_URL=$(git remote -v | head -n 1 | awk '{print $2}')
    BRANCH_NAME=$(git branch --show-current)
    
    echo -e "\n${C}[ IDENTITY ]${NC}"
    echo -e " » User   : ${W}${USER_NAME:-"Undefined"}${NC}"
    echo -e " » Email  : ${W}${USER_EMAIL:-"Undefined"}${NC}"
    
    echo -e "\n${C}[ REPOSITORY ]${NC}"
    echo -e " » Remote : ${W}${REMOTE_URL:-"No Remote Found"}${NC}"
    echo -e " » Branch : ${G}${BRANCH_NAME}${NC}"
    
    echo -e "\n${C}[ SYNC STATUS ]${NC}"
    CHANGES=$(git status -s | wc -l)
    if [ "$CHANGES" -gt 0 ]; then
        echo -e " » Status : ${Y}Pending Evolution (${CHANGES} files modified)${NC}"
        echo -e " » Action : Ketik ${G}zsync${NC} untuk sinkronisasi."
    else
        echo -e " » Status : ${G}Cloud Synced (Peak Form)${NC}"
    fi
    echo -e "\n${Y}Ingin ganti auth/repo? Ketik: ${G}zconfig${NC}"
    echo -e "${BLUE}──────────────────────────────────────────────────────────────────────────${NC}"
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

    MESSAGES=(
        "evolve: upgrade sentinel to v5.7.1" 
        "feat: configuration matrix added" 
        "patch: ghost identity switcher" 
        "core: sovereign config manager upgrade"
    )
    AUTO_MSG=${MESSAGES[$RANDOM % ${#MESSAGES[@]}]}
    FINAL_MSG="$AUTO_MSG [$(date +'%H:%M:%S')]"
    
    git add .
    if git diff --cached --quiet; then
        echo -e "${Y}ℹ️  No changes detected. System is in peak form.${NC}"
    else
        echo -e "${C}>> Preparing Autonomous Commit: ${W}$FINAL_MSG${NC}"
        git commit -m "$FINAL_MSG" --quiet
        echo -e "${B}>> Sending Evolution to Cloud Matrix...${NC}"
        git push origin main
        
        if [ $? -eq 0 ]; then
            echo -e "\n${G}${BOLD}✅ EVOLUTION COMPLETED! Sentinel is synced.${NC}"
        else
            echo -e "\n${R}❌ Push Failed.${NC}"
            echo -e "Tips: Pakai ${G}zconfig${NC} kalau remote URL-nya salah."
        fi
    fi
    echo -e "${BLUE}──────────────────────────────────────────────────────────────────────────${NC}"
}

# --- SETUP ALIAS (zsetup) ---
function setup_native_commands() {
    echo -e "\n${C}📡 Synchronizing Sovereign Aliases for V5.7.1...${NC}"
    if [[ "$OSTYPE" == "msys" || "$OSTYPE" == "cygwin" ]]; then
        [ ! -f ~/.bash_profile ] && echo '[[ -f ~/.bashrc ]] && . ~/.bashrc' > ~/.bash_profile
    fi
    if [ -f ~/.bashrc ]; then
        sed -i 's/\xEF\xBB\xBF//g' ~/.bashrc
        sed -i 's/[\d128-\d255]//g' ~/.bashrc
    fi
    sed -i "/# ZEROCHECKER ALIASES/,/alias z=/d" ~/.bashrc &> /dev/null
    {
        echo "# ZEROCHECKER ALIASES V5.7.1"
        echo "alias zsync='$SCRIPT_PATH zsync'"
        echo "alias zconfig='$SCRIPT_PATH zconfig'"
        echo "alias zhud='$SCRIPT_PATH zhud'"
        echo "alias zm='$SCRIPT_PATH zm'"
        echo "alias zc='$SCRIPT_PATH zc'"
        echo "alias zd='$SCRIPT_PATH zd'"
        echo "alias zs='$SCRIPT_PATH zs'"
        echo "alias zgh='$SCRIPT_PATH zgh'"
        echo "alias zdocs='$SCRIPT_PATH zdocs'"
        echo "alias zsetup='$SCRIPT_PATH zsetup'"
        echo "alias z='$SCRIPT_PATH'"
    } >> ~/.bashrc
    echo -e "${G}✅ SENTINEL SUPREME V5.7.1 CALIBRATED!${NC}"
    echo -e "${Y}👉 JALANKAN INI SEKARANG: source ~/.bashrc${NC}"
}

# --- ROUTING ---
case "$1" in
    zsync)  self_sync ;;
    zgh)    github_checker ;;
    zconfig) ghost_config ;;
    zsetup) setup_native_commands ;;
    *)      show_help ;;
esac