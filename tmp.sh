#!/bin/bash

# Define color codes
RED='\033[31m'
GREEN='\033[32m'
BLUE='\033[34m'
WHITE='\033[37m'
YELLOW='\033[33m'
RESET='\033[0m'

# Function to run nmap scan
run_nmap() {
    echo "Scanning Target..."
    nmap -vvv www.bankmandiri.co.id  # Adjust the target network as needed
    echo "Target IPServer Scan completed."
}

# Run nmap scan before proceeding
run_nmap
#000000000000000000000000000000000000000000000000000000000000000000000000000000000000nmapabove
# Define URLs and credentials
WEBSITE_URL="https://www.bankmandiri.co.id"
LOGIN_URL="https://www.bankmandiri.co.id/login"
USERNAME="kongali1720"
PASSWORD="your_password"
COOKIE_FILE="cookies.txt"
PROTECTED_URL="https://www.bankmandiri.co.id/protected"

# Fetch the homepage
echo "Fetching homepage..."
curl -o homepage.html $WEBSITE_URL=www.bankmandiri.co.id
echo "Homepage saved as homepage.html"

# Log in to the website
echo "Logging in..."
curl -c $COOKIE_FILE -d "username=$USERNAME&password=$PASSWORD" -X POST $LOGIN_URL=www.bankmandiri.co.id
echo "Logged in and cookies saved to $COOKIE_FILE"
#000000000000000000000000000000000000000000000000000000000000000000 curl

# Typewriter effect function
typewrite() {
    local DELAY=0.03
    for sentence in "$@"; do
        for (( i=0; i<${#sentence}; i++ )); do
            echo -n "${sentence:$i:1}"
            sleep "$DELAY"
        done
        echo ""
        sleep "$DELAY"
    done
}

# Function to print colored text
color_text() {
    echo -e "${1}${2}${RESET}"
}

# Loading animation function
dot_loading() {
    local duration=$1
    local interval=0.5
    local max_dots=10
    local end_time=$((SECONDS + duration))
    
    while [ $SECONDS -lt $end_time ]; do
        for (( i=0; i<=max_dots; i++ )); do
            echo -ne "\rLoading$(printf '.%.0s' $(seq 1 $i))$(printf ' %.0s' $(seq $i $max_dots))"
            sleep "$interval"
        done
    done
    echo -ne "\rLoading$(printf '.%.0s' $(seq 1 $max_dots))\n"
}

# Progress bar function
progress_bar() {
    local iteration=$1
    local total=$2
    local length=50
    local fill="█"
    
    local percent=$((iteration * 100 / total))
    local filled_length=$((length * iteration / total))
    
    printf "\rProgress: |"
    for (( i=0; i<filled_length; i++ )); do
        printf "$fill"
    done
    for (( i=filled_length; i<length; i++ )); do
        printf " "
    done
    printf "| %s%%" "$percent"
}

# Get current date and time
current_date_time=$(date "+%Y-%m-%d %H:%M:%S")
#============================================================================================================
# Define the text content
text="----------Welcome to Cloud Cyber Security GlobalServer Software ©2024-All Rights Reserved.-----------"
# Define the background color code (yellow) and text color code (white)
background_color_code="\033[43m"  # Yellow background
text_color_code="\033[97m"         # White text

# Define the reset code (to reset the formatting)
reset_code="\033[0m"

# Create the block-colored text
block_colored_text="${background_color_code}${text_color_code}${text}${reset_code}"

# Print the block-colored text with surrounding lines for emphasis
echo "====================================================================================================="
echo -e "$block_colored_text"
echo "====================================================================================================="
#============================================================================================================

# User input for login
GREEN="\033[42m"  # Green background
RESET="\033[0m"   # Reset formatting
read -p "Enter Username: " username
if [ "$username" == "admin" ]; then
    sleep 2
fi

read -p "Enter Password: " password
sleep 1

dot_loading 5
# Example message to display after the progress bar completes
echo -e "${GREEN}ACCESS GRANTED!${RESET}"
sleep 3
# ===========================================================================================================
# Define the text content
text="------------------------------------------- WELCOME ADMIN ------------------------------------------ "

# URL of the FTP server and the file to download
URL="ftp://sso.corp.bankmandiri.co.id/path/to/file"

# Download the file
wget "$URL"


# URL of the FTP server and the file to download
URL="ftp://sso.corp.bankmandiri.co.id/path/to/file"
# Download files listed in urls.txt

# FTP server details
FTP_URL="ftp://sso.corp.bankmandiri.co.id/path/to/file"
DOWNLOAD_DIR="/path/to/download/directory"

# Download the file to the specified directory
wget -P "$DOWNLOAD_DIR" "$FTP_URL"

wget -i urls.txt
# Download the file
wget "$URL"
#0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000wget ftp
# Define the background color code (yellow) and text color code (white)
background_color_code="\033[43m"  # Yellow background
text_color_code="\033[97m"         # White text

# Define the reset code (to reset the formatting)
reset_code="\033[0m"

# Create the block-colored text
block_colored_text="${background_color_code}${text_color_code}${text}${reset_code}"

# Print the block-colored text with surrounding lines for emphasis
echo "====================================================================================================="
echo -e "$block_colored_text"
echo "====================================================================================================="
echo "https://www.bankmandiri.co.id/sso.corp.bankmandiri.co.id<<<clients>>>database<<<<bruteforce//connecting... $current_date_time"
sleep 5
echo "https://www.bankmandiri.co.id/contentAsset/raw-data/8976976865/cipher98709-oiubjk(lkjgh86ro7uyhlui65)- connecting...!!!"
sleep 10

#===========================================================================================================
# Define colors
GREEN="\033[42m"  # Green background
RESET="\033[0m"   # Reset formatting

# Function to display the progress bar
progress_bar() {
    local progress=$1
    local total=$2
    local bar_length=100
    local filled_length=$(( (progress * bar_length) / total ))
    local empty_length=$(( bar_length - filled_length ))
    
    # Create the progress bar string
    local bar=""
    for (( i=0; i<filled_length; i++ )); do
        bar+="${GREEN}█${RESET}"
    done
    for (( i=0; i<empty_length; i++ )); do
        bar+=" "
    done

    # Print the progress bar
    printf "\r[${bar}] %d%%" $(( (progress * 100) / total ))
}

# Progress bar example
total=100
for i in $(seq 0 $total); do
    progress_bar "$i" "$total"
    sleep 0.05
done
echo

# Example message to display after the progress bar completes
echo -e "${GREEN}CONNECTED!${RESET}"
echo
#===========================================================================================================
# Progress bar example
#total=100
#or i in $(seq 0 $total); do
#    progress_bar "$i" "$total"
#    sleep 0.5
#done
#echo
#color_text "$GREEN" "CONNECTED!"

# URL of the website
WEBSITE_URL="https://www.bankmandiri.co.id"

echo "Fetching homepage from $WEBSITE_URL..."
total=100
for i in $(seq 0 $total); do
    progress_bar "$i" "$total"
    sleep 0.5
done
echo

# Fetch the homepage and save it
curl -L -o bankmandiri_homepage.html $WEBSITE_URL
echo -e "${GREEN}Unknow Username and Login, Access Recordding to Homepage fetched and saved as bankmandiri_homepage.html${RESET}"

# If there's a login process
LOGIN_URL="https://www.bankmandiri.co.id/login"   # Update this with the correct login URL
USERNAME="your_username"                  # Replace with your actual username
PASSWORD="your_password"                  # Replace with your actual password
COOKIE_FILE="cookies.txt"                 # File to store cookies

echo "Start login..."
total=500
for i in $(seq 0 $total); do
    progress_bar "$i" "$total"
    sleep 0.05
done
echo
# Now login (if applicable)
curl -c $COOKIE_FILE -d "username=$USERNAME&password=$PASSWORD" -X POST $LOGIN_URL
echo -e "${GREEN}Illegal Authentication Login with username! WARNING $USERNAME${RESET}"

# Access a protected page after login
PROTECTED_PAGE_URL="https://www.bankmandiri.co.id/some_protected_page"  # Update with actual protected page URL
echo "Fetching protected page from $PROTECTED_PAGE_URL..."
total=100
for i in $(seq 0 $total); do
    progress_bar "$i" "$total"
    sleep 1
done
echo

curl -b $COOKIE_FILE -o protected_page.html $PROTECTED_PAGE_URL
echo -e "${GREEN}Protected page fetched and saved as protected_page.html${RESET}"

for i in {10..1}; do
  echo -ne "\rStarting in $i seconds"
  sleep 1
done
echo -e "\nDataFound!"

sleep 10
typewrite ">>ACC_HOLDER_NUM        : 1390071171171" \
          ">>Name                  : Sonogiri_Tampomas_PT" \
          ">>Acc_Holder_Address    : Karajan_RT_001/002_Jatiwangi_Kabupaten_Karawang" \
          "                          Jawa_Barat_Indonesia" \
          ">>CIF_Num               : 13443321613" \
          ">>Acc_Branch            : KCP_CIJANTUNG_12910" \
          ">>Acc_Status_UPD        : Full_Blockade_Access_Passive" \
          ">>Layer_1_Acc_Num       : N/A" \
          ">>Layer_8_Num           : N/A" \
          ">>UBC                   : CUB08_customer" \
          ">>NSE_Amount            : 0,00 IDR" \
          ">>Available_Fund        : 0,00 IDR" \
          ">>Blockade_Fund         : 7,984,999,677,995.35  IDR" \
          ">>Amount_Converted      : 7,984,999,677,995.35  IDR" \
          ">>Layer 1               : 0,00 IDR" \
          ">>Layer 2               : 0,00 IDR" \
          ">>Layer 3               : 0,00 IDR" \
          ">>Layer 4               : 0,00 IDR" \
          ">>Layer 5               : 0,00 IDR" \
          ">>Layer 6               : 0,00 IDR" \
          ">>Layer 7               : 7,984,999,677,995.35  IDR" \
          ">>Layer 8               : 0,00 IDR" \
          ">>BLockade_Fund         : 7,984,999,677,995.35  IDR" \
          ">>Amount_Converted      : 7,984,999,677,995.35  IDR"
typewrite "====================================================================================================" \
# Confirmation to proceed
read -p "PROCEED CONTINUE? YES/NO: " doyouwanttocontinue
if [[ "$doyouwanttocontinue" =~ ^[Yy][Ee][Ss]$ ]]; then
    echo "ILLEGAL ACESSS...!!!"
else
    echo "disconnected"
    exit 0
fi

# End of the script
color_text "$RED" "Get Access Permission PT.Bank Mandiri Indoesia, TBK. Otherwise International Cyber Crime Law Department Authority."
color_text "$RED" "Bank Mandiri is fully committed to preventing unauthorized or accidental access, processing, or deletion of data by any party."
color_text "$RED" "This commitment is upheld by implementing comprehensive data security management, encompassing asset management " 
color_text "$RED" "monitoring activities, protection of data transfers and data destruction."
# Target URL
URL="www.sso.corp.bankmandiri.co.id"

# Run httping with a specific number of pings
httping -c 500 "$URL"