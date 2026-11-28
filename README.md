# Jerrin Varghese — X-Sim RV (CFD + FEA simulation)

Website: **https://jerrin-v.github.io/xsim-rv/**

X-Sim RV is a browser app for CFD and FEA simulation of 3D models. It runs on the computer's own processor cores.

## Latest updates

The last 3 updates pushed here, newest first.

<!-- latest-updates:start -->
| Updated | Change | Version | Commit |
| --- | --- | --- | --- |
| Sat 28 Nov 2026, 4:36:12 PM UAE<br><sub>Sat 28 Nov 2026, 12:36:12 PM UTC</sub> | sign-in slides back, pill switches, Settings foot, green connection state, reworked file rows, even text sizes | v1.1.20 | [`6ae601c`](https://github.com/jerrin-v/xsim-rv/commit/6ae601caba389e28bfaea01a5a8ed98b26713f3c) |
| Sat 28 Nov 2026, 3:20:02 PM UAE<br><sub>Sat 28 Nov 2026, 11:20:02 AM UTC</sub> | home and sign-in measured against X-Jobs, file browser on the start screen, yellow primary, no container shadows | v1.1.18 | [`2f87fab`](https://github.com/jerrin-v/xsim-rv/commit/2f87fabefb56eff72e92444c6dc1cab3228423dc) |
| Sat 28 Nov 2026, 1:20:59 PM UAE<br><sub>Sat 28 Nov 2026, 9:20:59 AM UTC</sub> | X-Jobs look element by element, X Lab yellow, new home page, Lucide icons, Barlow, Profile settings, confirmations | v1.1.17 | [`b10fb9d`](https://github.com/jerrin-v/xsim-rv/commit/b10fb9dfa467d12b5b3d316679077277808ae284) |
<!-- latest-updates:end -->

## Open it

1. **Open the website** above in Chrome, Edge, Firefox or Safari.
2. **Pick a simulation**, add a model, set the parameters and run. The examples on the first screen fill everything in.
3. **Save your work** as a `.sb` file from the File menu (click the logo).

## Update it

1. **Ask Claude for the change.** The version goes up by 1 in the last place (v1.0.1 → v1.0.2 → …).
2. **Say "Push".** Nothing is pushed here before that.
3. The update shows in the table above, and on the website a minute or two later.

## What's in this repo

- `backup/` — the app, sealed with [age](https://age-encryption.org), and the version it holds.
- `keys/backup-recipient.txt` — the public key the backup is sealed with.
- `tools/` — seals a new version and keeps the table above up to date.
- `.github/workflows/` — publish the website and update the table after every push.

**If the website is ever gone, see [RESTORE.md](RESTORE.md).**

Note: the results are for comparing designs, not certified values.

---

© 2026 Jerrin Varghese. All rights reserved — see [LICENSE](LICENSE).
