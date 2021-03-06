# Copyright 1999-2009 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI="3"
inherit distutils

DESCRIPTION="A python library to implement a well-behaved Unix daemon process"
HOMEPAGE="http://pypi.python.org/pypi/python-daemon/"
SRC_URI="http://pypi.python.org/packages/source/p/python-daemon/${P}.tar.gz"

LICENSE="PSF-2.2"
SLOT="0"
KEYWORDS="~x86"
RESTRICT="mirror"
IUSE=""

DEPEND=">=dev-python/lockfile-0.7"
RDEPEND="${DEPEND}"
