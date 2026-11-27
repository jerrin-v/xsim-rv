# X-Sim RV (jerrin-v/xsim-rv) — notes for Claude

The app and the repo had another name until 20 Nov 2026 (renamed in v1.0.91 and v1.0.92; the repo renamed by Jerrin). Simulation files are `.xrv` (older `.sb` files still open).

Jerrin's browser app for CFD and FEA simulation of 3D models. Since 15 Nov 2026 ("anyone can download and use the software … add the private key to the app also") this public repo holds the app **only sealed**, like his other repos:

- `backup/xsim-rv.tar.gz.age` — the whole app folder: `index.html` (the page exactly as on claude.ai), `xsim-rv-server.js`, `src/`, `tests/`, `docs/`, `tools/site-build.mjs`, `site.json`, `build.py`, `package.json`, `LICENSE` and the detailed app notes in its own `CLAUDE.md`. Sealed with age to `keys/backup-recipient.txt`.
- `backup/BUILD.txt` — `app: X-Sim RV vX.Y.Z · packed <time>`; `tools/update-log.py` reads the Version column from it.
- Public files only: README.md, RESTORE.md, LICENSE, this file, `.github/workflows/` (publish, update-log, test), `tools/pack.sh`, `tools/update-log.py`, `keys/`. `.gitignore` blocks the opened app's paths and any `*key*.txt`. Never commit an opened file, a key or a password.
- History: every commit holds only sealed versions; the kept ones are v1.0.17 to v1.0.19 (15 Nov 2026).

## Working on X-Sim RV
1. The private key is Jerrin's, kept outside the repo. A session gets it only from him (the file, with his approval, through the linked computer, or attached to the chat). Never print it, commit it or keep it after the work.
2. Open the backup outside the repo: `mkdir -p /home/claude/xsim-src && age -d -i <key file> backup/xsim-rv.tar.gz.age | tar -xz -C /home/claude/xsim-src`. Read its `CLAUDE.md`: layout, build, tests, version rules and the app's notes are there.
3. Change, build and test there; publish `index.html` to the claude.ai artifact as before.
4. Seal it: `sh tools/pack.sh /home/claude/xsim-src` (public key only; writes `backup/xsim-rv.tar.gz.age` and `backup/BUILD.txt`). Delete the key file from the session when done.

## Website
`.github/workflows/publish.yml` opens the backup with the `SITE_BACKUP_KEY` secret, builds the sign-in page with the app inside it using the backup's own `tools/site-build.mjs`, and publishes that one page to https://jerrin-v.github.io/xsim-rv/ (Pages source: GitHub Actions). Since v1.1.8 signing in is checked by Jerrin's own Supabase project (email and password; the project's address and publishable key are in `site.json` inside the sealed app): there is no list of users in GitHub any more, and the `SITE_USERS` secret is unused (his to delete under Settings). A session cannot read or set secrets.

## Tests on GitHub
`.github/workflows/test.yml` (added with v1.0.97) runs the app's own checks on every push to main and from Actions › Tests › Run workflow: three jobs (solvers, physics, browser), each opening the backup with the same secret as the site workflow. It publishes nothing and does not hold the site back. After a push, check its run beside the Publish site run.

## Working rules (from Jerrin)
- **Push to GitHub only when Jerrin says "Push".**
- **No security details in the README** (15 Nov 2026): no secret names, password or user steps, sign-in behaviour, example logins or IDs.
- Every app update raises the version by 1 in the last place (`version` in `package.json` inside the backup), as the app's own notes say.
- README in the style of his other repos: short, no pictures, no feature details (19 Nov 2026).
- The design system is his own: no other owner's name anywhere (19 Nov 2026).

## When Jerrin says "Push"
1. `git pull --rebase origin main` (the Update log workflow may have committed a README update).
2. Seal the new version (above) and commit `backup/` as `vX.Y.Z: what changed`. That line is the Change column of the table.
3. `python3 tools/update-log.py`, then commit `README.md` alone as "README: latest updates".
4. Push both commits to `main`. Check the Publish site run, then open the address and read the version label.
