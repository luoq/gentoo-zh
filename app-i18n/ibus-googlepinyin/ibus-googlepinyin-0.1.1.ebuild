# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=3

HOMEPAGE="http://libgooglepinyin,googlecode.com/"

inherit googlecode cmake-utils

SRC_URI="http://libgooglepinyin.googlecode.com/files/${P}.tar.bz2"

DESCRIPTION="wrapper libgooglepinyin for IBus"

LICENSE="Apache-2.0"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

COMM_DEPEND="
>=app-i18n/libgooglepinyin-0.1.1
>=app-i18n/ibus-1.3.99
dev-lang/python
"
#app-i18n/opencc"

DEPEND="${COMM_DEPEND}
	dev-util/cmake"
RDEPEND="${COMM_DEPEND}"

src_prepare(){
	epatch "${FILESDIR}/${PN}-pagesizepatch.patch"
	cmake-utils_src_prepare
}
