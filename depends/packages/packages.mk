packages:=qrencode bdb protobuf miniupnpc boost openssl qt
native_packages := native_protobuf native_ccache  native_comparisontool

linux_packages=libxcb xcb_proto libXau xproto dbus expat freetype fontconfig libX11 xextproto libXext xtrans

ifneq ($(build_os),darwin)
darwin_native_packages=native_libuuid native_openssl native_cctools native_cdrkit native_libdmg-hfsplus
endif
