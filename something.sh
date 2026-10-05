#!/bin/bash

# Something - Terminal Idea Generator
# Compatible with Android Linux Terminal (Termux)

# Color support
if [[ "$TERM" != "dumb" ]]; then
  PURPLE='\033[1;35m'
  BLUE='\033[1;34m'
  GRAY='\033[1;30m'
  GREEN='\033[1;32m'
  WHITE='\033[1;37m'
  RESET='\033[0m'
  BG_PURPLE='\033[45m'
  BG_DARK='\033[40m'
else
  PURPLE=''
  BLUE=''
  GRAY=''
  GREEN=''
  WHITE=''
  RESET=''
  BG_PURPLE=''
  BG_DARK=''
fi

# Ideas array
ideas=(
  "Build a tiny weather diary for your neighborhood."
  "Create a digital postcard generator for your favorite places."
  "Design a habit tracker that rewards tiny wins."
  "Make a local map of hidden cafes, parks, and sunsets."
  "Turn a family recipe into a playful storybook app."
  "Build a tiny app that helps you remember good ideas."
  "Make a visual journal for everyday small joys."
  "Create a tiny music playlist generator from the weather."
  "Design a to-do list that celebrates progress instead of guilt."
  "Build a something generator for people who need inspiration."
)

# Function to display idea
display_idea() {
  local idea="${ideas[$RANDOM % ${#ideas[@]}]}"
  clear
  echo -e "${PURPLE}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━${RESET}"
  echo -e "${PURPLE}  Something - Idea Generator${RESET}"
  echo -e "${PURPLE}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━${RESET}"
  echo ""
  echo -e "${BLUE}Make something cool.${RESET}"
  echo ""
  echo -e "${GRAY}Idea:${RESET}"
  echo -e "${WHITE}$idea${RESET}"
  echo ""
  echo -e "${GRAY}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━${RESET}"
  echo ""
}

# Main loop
while true; do
  display_idea
  echo -e "${GREEN}[G]${RESET} Generate new idea | ${GREEN}[Q]${RESET} Quit"
  echo ""
  read -p "Choose: " choice
  
  case "$choice" in
    [Gg])
      continue
      ;;
    [Qq])
      clear
      echo -e "${PURPLE}Thanks for using Something!${RESET}"
      exit 0
      ;;
    *)
      continue
      ;;
  esac
done
