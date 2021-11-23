# Copyright 1999-2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit font

MY_P="IPAfont${PV/.}"

DESCRIPTION="TrueType fonts developed by Japanese Information-technology Promotion Agency"
HOMEPAGE="http://ipafont.ipa.go.jp/"
SRC_URI="http://dl.ipafont.ipa.go.jp/IPAfont/${MY_P}.zip"

LICENSE="IPAfont"
SLOT="0"
KEYWORDS="~alpha amd64 arm arm64 ~hppa ~ia64 ppc ppc64 ~riscv ~s390 sparc x86 ~amd64-linux ~x86-linux ~ppc-macos"
IUSE=""
RESTRICT="binchecks strip"

BDEPEND="app-arch/unzip"
S="${WORKDIR}/${MY_P}"

DOCS=( Readme_${MY_P}.txt )

FONT_CONF=( "${FILESDIR}"/66-${PN}.conf )
FONT_SUFFIX="ttf"
