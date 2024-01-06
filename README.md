<div align="center">

# asdf-xidel [![Build](https://github.com/stessaris/asdf-xidel/actions/workflows/build.yml/badge.svg)](https://github.com/stessaris/asdf-xidel/actions/workflows/build.yml) [![Lint](https://github.com/stessaris/asdf-xidel/actions/workflows/lint.yml/badge.svg)](https://github.com/stessaris/asdf-xidel/actions/workflows/lint.yml)

[Xidel](https://www.videlibri.de/xidel.html) plugin for the [asdf version manager](https://asdf-vm.com).

</div>

# Contents

- [asdf-xidel  ](#asdf-xidel--)
- [Contents](#contents)
- [Dependencies](#dependencies)
- [Install](#install)
- [Contributing](#contributing)
- [License](#license)

# Dependencies

**TODO: adapt this section**

- `bash`, `curl`, `tar`, and [POSIX utilities](https://pubs.opengroup.org/onlinepubs/9699919799/idx/utilities.html).
- `SOME_ENV_VAR`: set this environment variable in your shell config to load the correct version of tool x.

# Install

Plugin:

```shell
asdf plugin add xidel
# or
asdf plugin add xidel https://github.com/stessaris/asdf-xidel.git
```

xidel:

```shell
# Show all installable versions
asdf list-all xidel

# Install specific version
asdf install xidel latest

# Set a version globally (on your ~/.tool-versions file)
asdf global xidel latest

# Now xidel commands are available
xidel --help
```

Check [asdf](https://github.com/asdf-vm/asdf) readme for more instructions on how to
install & manage versions.

# Contributing

Contributions of any kind welcome! See the [contributing guide](contributing.md).

[Thanks goes to these contributors](https://github.com/stessaris/asdf-xidel/graphs/contributors)!

# License

See [LICENSE](LICENSE) © [Sergio Tessaris](https://github.com/stessaris/)
