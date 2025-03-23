<img src="https://git.disroot.org/janpstrunn/images/raw/branch/main/pass.png" align="right" height="100"/>
<br>

# pass-tomb: The Crypto Undertaker for Your Passwords

`pass-tomb` is a sophisticated `tomb` script designed to complement [pass](https://github.com/janpstrunn/pass), which aims to replace the [passwordstore](https://www.passwordstore.org/) while maintaining its core principles. This CLI tool enhances the security of your passwords by storing them within an encrypted tomb, ensuring robust protection.

## Features

- **Dedicated Tomb Creation**: Create a 10 MB tomb specifically for `pass`.
- **GPG Encryption**: Use GPG to encrypt the tomb key.
- **Seamless Import**: Import all passwords from `$PASS_STORE` to the tomb.
- **Automated Configuration**: Add `PASS_TOMB_DIR` and `TOMB_KEY` to `.passrc` for automated management.
- **Effortless Access**: Open the tomb using a GPG key or exhumed keys to `$PASS_STORE`.

## Requirements

- [pass](https://github.com/janpstrunn/pass)
- `tomb`

## Installation

```bash
curl -sSL https://github.com/janpstrunn/pass-tomb/raw/main/install.sh | bash
```

## Usage

```
  ---------------------------------------------------
  ---------------------pass-tomb---------------------
  ---------------------------------------------------
  ------The Crypto Undertaker for Your Passwords-----
  ---------------------------------------------------

Usage: pass-tomb [options] <command> [arguments]

Options:
  -e             Exhume buried key to unlock a tomb
  -g             Create a tomb key using GPG ID
  -h             Display this help message and exit
  -n             Enable notifications

Commands:
  dig [-g] <TOMB_KEY> <GPG-ID>
                          Create a tomb
  import <TOMB_KEY>       Move all passwords to your tomb
  help, usage             Display this message and exits
  open [-e -g] <TOMB_KEY>
                          Open a Tomb at $PASS_STORE
  version                 Display the current version number

Examples:
  pass-tomb new dig -g my.tomb.key DA54ACB7D10
                          # Creates a new tomb using a GPG key
  pass-tomb open -e -g my.tomb.key
                          # Open a tomb using a buried GPG key
  pass-tomb import my.tomb.key
                          # Imports all passwords from $PASS_STORE
                          # tou your tomb, and closes it
```

> [!IMPORTANT]
> First-time users must set up [pass](https://github.com/janpstrunn/pass) before using `pass-tomb`.

## Notes

This script has been tested exclusively on a Linux machine.

## License

This repository is licensed under the MIT License, allowing for extensive use, modification, copying, and distribution.
