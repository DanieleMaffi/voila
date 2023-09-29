echo "[*] Creating Python venv if there isn't one yet..\n."

if [ -d venv ]; then
  echo "[*] Virtual environment found!\n"
else
  echo "[-] Virtual environment not found, creating one...\n"
  python3 -m venv venv
fi

echo "[+] Virtual environment created!\n"
echo "[*] Entering virtual environment...\n"

source venv/bin/activate

echo "[*] Isntalling requirements...\n"
pip install -r requirements.txt

echo "[+] Requirements succesfully installed!\n"
echo "[*] Initializing Voila...\n"

voila opi.ipynb

trap 'echo Bye!' EXIT
