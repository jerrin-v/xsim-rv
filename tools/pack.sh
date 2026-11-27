#!/bin/sh
# Seals an X-Sim RV folder (the app, its server program, source, tests and notes) into backup/xsim-rv.tar.gz.age
# with the public key in keys/backup-recipient.txt, and notes its version in backup/BUILD.txt. Sealing needs no
# secret: only the private key can open the backup again. Pushing a new backup starts the "Publish site" workflow.
#
#   sh tools/pack.sh <xsim-rv-folder>      a folder opened from the backup, outside this repo
set -e
[ -n "$1" ] || { echo "usage: sh tools/pack.sh <xsim-rv-folder>" >&2; exit 2; }
src=$(cd "$1" && pwd)
cd "$(dirname "$0")/.."
command -v age >/dev/null 2>&1 || { echo "age is not installed: apt-get install -y age (Linux) or brew install age (Mac)" >&2; exit 1; }
for f in index.html xsim-rv-server.js package.json build.py src/login.html tools/site-build.mjs; do
  [ -f "$src/$f" ] || { echo "$src is not an X-Sim RV folder: $f is missing." >&2; exit 1; }
done
case "$src/" in "$(pwd)/"*) echo "Open the backup outside this repo, not inside it." >&2; exit 1 ;; esac
ver=$(python3 -c 'import json, sys; print(json.load(open(sys.argv[1]))["version"])' "$src/package.json")
mkdir -p backup
tar -C "$src" --exclude=.git --exclude=node_modules --exclude=_site --exclude=tests/browser/out --exclude=__pycache__ \
  --exclude=.DS_Store -czf - . | age -R keys/backup-recipient.txt -o backup/xsim-rv.tar.gz.age
printf 'app: X-Sim RV v%s · packed %s\n' "$ver" "$(date -u +%Y-%m-%dT%H:%M:%SZ)" > backup/BUILD.txt
echo "sealed $src (v$ver) into backup/xsim-rv.tar.gz.age"
