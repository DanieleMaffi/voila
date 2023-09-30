echo "[*] Creating Python venv if there isn't one yet..^."

if exist venv\ (
  echo "[*] Virtual environment found!^"
) else (
  echo "[-] Virtual environment not found, creating one...^"
  python3 -m venv venv
)

echo "[+] Virtual environment created!^"
echo "[*] Entering virtual environment...^"

call venv\scripts\activate

echo "[*] Isntalling requirements...^"
pip install -r requirements.txt

echo "[+] Requirements succesfully installed!^"
echo "[*] Initializing Voila...^"

voila opi.ipynb
