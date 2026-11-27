# Restore X-Sim RV from this backup

The app, its server program and its source are in `backup/xsim-rv.tar.gz.age`, sealed with [age](https://age-encryption.org).
To open it you need the private key (kept outside this repo). Install age first: `brew install age` on a Mac,
`apt-get install age` on Linux.

## 1. Open it on a computer

```sh
mkdir xsim-rv
age -d -i /path/to/private-key.txt backup/xsim-rv.tar.gz.age | tar -xz -C xsim-rv
cd xsim-rv && python3 -m http.server 8000
```

Then visit `localhost:8000`, or open `xsim-rv/index.html` straight from the folder. The page needs a connection while it
opens, because the 3D engine (three.js) and the Inter font load from public CDNs. Outside claude.ai the Claude features are
hidden and files save as normal downloads. Never commit the opened files back into this repo.

## 2. Publish it as a website again

The **Publish site** workflow (`.github/workflows/publish.yml`) opens the backup, puts the app inside the sign-in page
and puts that page on GitHub Pages after every push to main, at `https://jerrin-v.github.io/xsim-rv/`. A new repo or
account needs the repository secret named in the workflow first, and one setting, made once: **Settings → Pages →
Build and deployment → Source: GitHub Actions**. Then **Actions → Publish site → Run workflow**, and put the new address on
the `Website:` line at the top of the README and in the repo's About box.

## 3. Rebuild the live app

`index.html` in the backup is the page exactly as published on claude.ai. Publish it as a new claude.ai artifact with the
`downloads`, `sample` and `mcp` capabilities: `downloads` saves the PDF report, the pictures and the simulation files,
`sample` is what the Claude features use, and `mcp` lets a run go to a server through a Claude connector (servers
`X-Sim RV Compute` and `host:xsim-rv`).

## 4. Change it and seal it again

Open the backup (step 1) in a folder outside this repo, change the source in `src/`, build it with `python3 build.py` and
run the checks listed in its `CLAUDE.md`. Then seal the folder into `backup/` and push:

```sh
sh tools/pack.sh /path/to/xsim-rv
```

Sealing needs only the public key in `keys/backup-recipient.txt`.

## Lost the key?

The backup can't be opened without it, so keep a copy of the key file. With a readable copy of the app folder still at
hand, make a new key pair, replace `keys/backup-recipient.txt`, seal the folder again and replace the matching repository
secret.
