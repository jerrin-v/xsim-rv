# Jerrin Varghese — X-Sim RV (CFD + FEA simulation)

Website: **https://jerrin-v.github.io/xsim-rv/**

X-Sim RV is a browser app for CFD and FEA simulation of 3D models. It runs on the computer's own processor cores.

## Latest updates

The last 3 updates pushed here, newest first.

<!-- latest-updates:start -->
| Updated | Change | Version | Commit |
| --- | --- | --- | --- |
| Thu 26 Nov 2026, 6:02:47 PM UAE<br><sub>Thu 26 Nov 2026, 2:02:47 PM UTC</sub> | cloud files in your own Supabase (folders, Files page, home Cloud tab), set up in Settings as in X-Jobs; audit fixes | v1.1.7 | [`bd5f760`](https://github.com/jerrin-v/xsim-rv/commit/bd5f760f9ab82c915148df70f8de2c3f7c4e3ca2) |
| Sat 21 Nov 2026, 8:54:42 PM UAE<br><sub>Sat 21 Nov 2026, 4:54:42 PM UTC</sub> | full audit: phone and dark-theme layout fixes, accessibility (contrast, targets, landmarks, focus), code cleanup | v1.1.1 | [`f5307bd`](https://github.com/jerrin-v/xsim-rv/commit/f5307bd93fc5623a53b428bbcd6f6f5ad7a0bd85) |
| Sat 21 Nov 2026, 6:10:34 PM UAE<br><sub>Sat 21 Nov 2026, 2:10:34 PM UTC</sub> | camera button on the view cube: perspective or a flat view without depth | v1.1.0 | [`09866fd`](https://github.com/jerrin-v/xsim-rv/commit/09866fd1c92bd7739294e89d53ff40a0bd39e5cb) |
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
