# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

DESCRIPTION="Find the system CA bundle or fall back to the Mozilla one"
HOMEPAGE="https://github.com/composer/ca-bundle"
SRC_URI="https://github.com/composer/${PN}/archive/${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~x86"

RDEPEND="
	dev-lang/php:*
	dev-php/fedora-autoloader"

src_install() {
	insinto "/usr/share/php/Composer/CaBundle"
	doins -r src/. "${FILESDIR}"/autoload.php
	dodoc README.md
}
