<div align="center">

# asdf-xidel [![Build](https://github.com/stessaris/asdf-xidel/actions/workflows/build.yml/badge.svg)](https://github.com/stessaris/asdf-xidel/actions/workflows/build.yml) [![Lint](https://github.com/stessaris/asdf-xidel/actions/workflows/lint.yml/badge.svg)](https://github.com/stessaris/asdf-xidel/actions/workflows/lint.yml)

[Xidel](https://www.videlibri.de/xidel.html) plugin for the [asdf version manager](https://asdf-vm.com). This plugin fetches availablee `Xidel` binaries from different sources: for the latest stable release (0.9.8) uses the official repo [benibela/xidel](https://github.com/benibela/xidel), while the up to date 0.9.9 version (aligned with the documentation) is retrieved from the fork [deep-soft/xidel](https://github.com/deep-soft/xidel) (version is tagged with `0.9.9-beta`). The reason is that the official download page provides only nightly builds (see [Xidel - Downloads](https://www.videlibri.de/xidel.html#downloads) for details). For OSX, only Intel builds are available.

</div>

# Contents

- [asdf-xidel  ](#asdf-xidel--)
- [Contents](#contents)
- [Dependencies](#dependencies)
- [Install](#install)
- [Contributing](#contributing)
- [License](#license)

# Dependencies

- `bash >= 4.0` (**beware** that OSX is shipped with a 3.x version!), `curl`, `tar` (supporting [XZ compression](https://en.wikipedia.org/wiki/XZ_Utils)), and [POSIX utilities](https://pubs.opengroup.org/onlinepubs/9699919799/idx/utilities.html).

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
