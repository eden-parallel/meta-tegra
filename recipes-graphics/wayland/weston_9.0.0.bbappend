FILESEXTRAPATHS:prepend := "${THISDIR}/${BP}:${THISDIR}/${BPN}:"

SRC_URI:append:tegra = " \
    file://0001-gl-renderer-Add-EGLDevice-enumeration-support.patch \
    file://0002-gl-renderer-Add-support-for-EGLDevice-composited-fra.patch \
    file://0003-gl-renderer-Add-EGL-client-support-for-EGLStream-fra.patch \
    file://0004-backend-drm-Gracefully-handle-vblank-and-flip-invali.patch \
    file://0005-backend-drm-Add-support-for-EGLDevice-EGLOutput.patch \
    file://0006-compositor-Process-stream-attach-requests-with-wl_eg.patch \
"
LIC_FILES_CHKSUM:tegra = "file://COPYING;md5=d79ee9e66bb0f95d3386a7acae780b70 \
                          file://libweston/compositor.c;endline=28;md5=866f3381d3f7d9e7035d6b2c895fb668"

DEPENDS:append:tegra = " egl-wayland"
PACKAGECONFIG:remove:tegra = "fbdev"
PACKAGE_ARCH:tegra = "${TEGRA_PKGARCH}"

RDEPENDS:${PN}:append:tegra = " egl-wayland tegra-udrm-probeconf"
