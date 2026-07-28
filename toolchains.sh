#!/bin/bash
set -eo pipefail

echo "don't add anything to path for rustup"
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
echo "don't add anything to path or enable completions for deno"
curl -fsSL https://deno.land/install.sh | sh
source $HOME/.bashrc || true
deno completions bash > $HOME/.bashrc.d/user/deno.bash
wget -qO- https://raw.githubusercontent.com/nvm-sh/nvm/v0.40.4/install.sh | bash
echo "remove lines added to .bashrc by nvm"
