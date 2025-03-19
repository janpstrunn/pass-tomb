<img src="https://git.disroot.org/janpstrunn/images/raw/branch/main/pass.png" align="right" height="100"/>
<br>

# pass-tomb: The Crypto Undertaker for your passwords

`pass-tomb` is a `tomb` script, meant to be used alongside [pass](https://github.com/janpstrunn/pass) which tries to replace the [passwordstore](https://www.passwordstore.org/) keeping its core philosophies.

It's a CLI tool that tries to help securing your passwords by storing them inside a tomb.

## Features

- Create a dedicated tomb for `pass`, which is 10 MB sized by default
- Use GPG to encrypt a tomb key
- Import all passwords from `$PASS_STORE` to a tomb
- Add `PASS_TOMB_DIR` and `TOMB_KEY` to `.passrc` to automatize their locations
- Open a tomb using a GPG Key, or exhumed keys to `$PASS_STORE`

## Requirements

- [pass](https://github.com/janpstrunn/pass)

## Installation

```
git clone https://github.com/janpstrunn/pass-tomb
cd pass-tomb
chmod 700 src/pass-tomb
mv src/pass-tomb "$HOME/.local/bin"
```

## Usage

```
pass-tomb: The Crypto Undertaker for you passwords

Usage: $0 [options] <command> [arguments]

Options:
  -e             Exhume buried key to unlock a tomb
  -g             Create a tomb key using GPG ID
  -h             Display this help message and exit

Commands:
  dig [-g] <TOMB_KEY> <GPG-ID>
                          Create a tomb
  import <TOMB_KEY>       Move all passwords to your tomb
  open [-e -g] <TOMB_KEY>
                          Open a Tomb at $PASS_STORE
  version                 Display the current version number

Examples:
  $0 new dig -g my.tomb.key DA54ACB7D10
                          # Creates a new tomb using a GPG key
  $0 open -e -g my.tomb.key
                          # Open a tomb using a buried GPG key
  $0 import my.tomb.key   # Imports all passwords from $PASS_STORE
                          # tou your tomb, and closes it
```

> [!IMPORTANT]
> First time running `pass-tomb`, requires to use setup your [pass](https://github.com/janpstrunn/pass) first.

## Notes

This script has been only tested in a Linux Machine.

## License

This repository is licensed under the MIT License, a very permissive license that allows you to use, modify, copy, distribute and more.
