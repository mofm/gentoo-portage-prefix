# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

MY_PN="php-timer"

DESCRIPTION="Utility class for timing"
HOMEPAGE="http://phpunit.de"
SRC_URI="https://github.com/sebastianbergmann/${MY_PN}/archive/${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="~amd64 ~hppa ~x86"
IUSE=""

S="${WORKDIR}/${MY_PN}-${PV}"

RDEPEND="dev-php/fedora-autoloader
	>=dev-lang/php-5.6:*"

src_install() {
	insinto /usr/share/php/PHP/Timer
	doins -r src/Timer.php
	doins "${FILESDIR}/autoload.php"
}

pkg_postinst() {
	ewarn "This library now loads via /usr/share/php/PHP/Timer/autoload.php"
	ewarn "Please update any scripts to require the autoloader"
}
