# shellcheck shell=bash
# List of Xidel releases and download url

declare -A RELEASES
export RELEASES

# shellcheck disable=SC2120
function list_releases() {
	local os_arch
	os_arch=${1:-"$(uname -s)-$(uname -m)"}
	printf "%s\n" "${!RELEASES[@]}" | grep -i -e "\\|$os_arch\$" | sed 's/|.*$//'
}

function release_url() {
	local version os_arch
	version="$1"
	os_arch=${2:-"$(uname -s)-$(uname -m)"}
	echo "${RELEASES["${version}|${os_arch,,}"]:=}"
}

# Database of available releases

RELEASES["0.9.8|linux-x86_64"]="https://github.com/benibela/xidel/releases/download/Xidel_0.9.8/xidel-0.9.8.linux64.tar.gz"
RELEASES["0.9.8|linux-x86"]="https://github.com/benibela/xidel/releases/download/Xidel_0.9.8/xidel-0.9.8.linux32.tar.gz"
RELEASES["0.9.8|linux-i686"]="https://github.com/benibela/xidel/releases/download/Xidel_0.9.8/xidel-0.9.8.linux32.tar.gz"
RELEASES["0.9.8|linux-i386"]="https://github.com/benibela/xidel/releases/download/Xidel_0.9.8/xidel-0.9.8.linux32.tar.gz"
RELEASES["0.9.9-beta|linux-x86"]="https://github.com/deep-soft/xidel/releases/download/Xidel_0.9.9-beta/xidel.linux32-0.9.9.tar.xz"
RELEASES["0.9.9-beta|linux-i686"]="https://github.com/deep-soft/xidel/releases/download/Xidel_0.9.9-beta/xidel.linux32-0.9.9.tar.xz"
RELEASES["0.9.9-beta|linux-i386"]="https://github.com/deep-soft/xidel/releases/download/Xidel_0.9.9-beta/xidel.linux32-0.9.9.tar.xz"
RELEASES["0.9.9-beta|linux-aarch64"]="https://github.com/deep-soft/xidel/releases/download/Xidel_0.9.9-beta/xidel.linuxarm64-0.9.9.tar.xz"
RELEASES["0.9.9-beta|linux-arm64"]="https://github.com/deep-soft/xidel/releases/download/Xidel_0.9.9-beta/xidel.linuxarm64-0.9.9.tar.xz"
RELEASES["0.9.9-beta|linux-x86_64"]="https://github.com/deep-soft/xidel/releases/download/Xidel_0.9.9-beta/xidel.linux64-0.9.9.tar.xz"
RELEASES["0.9.9-beta|darwin-x86_64"]="https://github.com/deep-soft/xidel/releases/download/Xidel_0.9.9-beta/xidel.mac-0.9.9.tar.xz"
