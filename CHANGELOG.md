# Changelog

## [1.0.0] 2025-03-19

### Added

- Create a dedicated tomb for `pass`, which is 10 MB sized by default
- Use GPG to encrypt a tomb key
- Import all passwords from `$PASS_STORE` to a tomb
- Add `PASS_TOMB_DIR` and `TOMB_KEY` to `.passrc` to automatize their locations
- Open a tomb using a GPG Key, or exhumed keys to `$PASS_STORE`
