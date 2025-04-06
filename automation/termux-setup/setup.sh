#!/bin/bash

# Termux Dev Protocol Full Bootstrap Script

echo "Initializing Termux Dev Protocol..."

# 1. Create directory structure
mkdir -p docs scripts alias deploy examples screenshots html

# 2. Populate README and LICENSE
echo "# Termux Dev Protocol" > readme.md
echo "MIT License" > LICENSE

# 3. Documentation files
echo "# Terminal workflow and shortcuts" > docs/shortcuts.md

# 4. Example repo
mkdir -p examples/xenith_protocol
echo "# Example symbolic AI protocol" > examples/xenith_protocol/README.md

# 5. Deploy scripts
echo "# Auto-deploy GitHub Pages" > deploy/gh_pages.sh
touch deploy/gdeploy.sh
chmod +x deploy/gdeploy.sh

# 6. Screenshot reference
echo "# Screenshot gallery" > screenshots/README.md

# 7. HTML rituals
echo "# HTML rituals" > html/index.html

# 8. Git aliases
mkdir -p alias
cat <<EOF > alias/git_aliases.sh
alias gp='git pull'
alias gpush='git push'
alias gstat='git status'
alias gdeploy='git add . && git commit -m "update" && git push'
EOF
chmod +x alias/git_aliases.sh

# 9. Auto-source aliases in bashrc if not already present
if ! grep -q "alias/git_aliases.sh" ~/.bashrc; then
    echo "source ~/Termux-Dev-Protocol/alias/git_aliases.sh" >> ~/.bashrc
    echo "[+] Aliases added to .bashrc"
fi

echo "✅ Termux Dev Protocol structure initialized successfully."
