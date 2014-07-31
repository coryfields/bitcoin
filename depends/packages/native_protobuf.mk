package=native_protobuf
$(package)_version=2.5.0
$(package)_download_path=https://protobuf.googlecode.com/files
$(package)_file_name=protobuf-$($(package)_version).tar.bz2
$(package)_sha256_hash=13bfc5ae543cf3aa180ac2485c0bc89495e3ae711fc6fab4f8ffe90dfb4bb677
$(package)_revision=1

define $(package)_set_vars
$(package)_config_opts=--disable-shared --disable-dependency-tracking
endef

define $(package)_config_cmds
  $($(package)_autoconf)
endef

define $(package)_build_cmds
  $(MAKE) -C src protoc
endef

define $(package)_stage_cmds
  $(MAKE) -C src DESTDIR=$($(package)_destdir) install-strip
endef

define $(package)_postprocess_cmds
  rm -rf lib include
endef
