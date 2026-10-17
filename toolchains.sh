#!/bin/bash
set -eo pipefail

echo "don't add anything to path for rustup"
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh

wget -qO- https://raw.githubusercontent.com/nvm-sh/nvm/v0.40.8/install.sh | bash
echo "remove lines added to .bashrc by nvm"
