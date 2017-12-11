
pkgname=teamviewer13host
pkgver=13.0.5641
pkgrel=1
pkgdesc='All-In-One Software for Remote Support and Online Meetings'
arch=('x86_64')
url='http://www.teamviewer.com'
license=('custom')
options=('!strip')
provides=('teamviewer')
conflicts=('teamviewer-beta')
depends_x86_64=('qt5-base' 'qt5-declarative' 'qt5-x11extras' 'qt5-webkit' 'hicolor-icon-theme' 'qt5-x11extras')
install=teamviewer.install
source_x86_64=("https://dl.tvcdn.de/download/linux/version_${pkgver%%.*}x/teamviewer-host_${pkgver}_amd64.deb")
sha256sums_x86_64=('49c8e1936a9d1329971752e99a0bdeb8f91bb521a457edffec735c10e318d9e9')

prepare() {
	warning "If the install fails, you need to uninstall previous major version of Teamviewer"
  mkdir data
  cd data
	tar -xf ../data.tar.xz
}

package() {
	# Install
	warning "If the install fails, you need to uninstall previous major version of Teamviewer"
	cp -dr --no-preserve=ownership ./data/{etc,opt,usr,var} "${pkgdir}"/

	# Additional files
	rm "${pkgdir}"/opt/teamviewer/tv_bin/xdg-utils/xdg-email
	install -D -m0644 "${pkgdir}"/opt/teamviewer/tv_bin/script/teamviewerd.service \
		"${pkgdir}"/usr/lib/systemd/system/teamviewerd.service
	install -d -m0755 "${pkgdir}"/usr/{share/applications,share/licenses/teamviewer}
	ln -s /opt/teamviewer/License.txt \
		"${pkgdir}"/usr/share/licenses/teamviewer/LICENSE
}
