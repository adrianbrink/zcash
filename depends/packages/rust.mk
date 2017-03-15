package=rust
$(package)_version=1.15.1
$(package)_download_path=https://static.rust-lang.org/dist
$(package)_file_name=rust-$($(package)_version)-x86_64-unknown-linux-gnu.tar.gz
$(package)_sha256_hash=b1e7c818a3cc8b010932f0efc1cf0ede7471958310f808d543b6e32d2ec748e7

define $(package)_stage_cmds
  ./install.sh --destdir=$($(package)_staging_dir) --prefix=$(host_prefix) --disable-ldconfig
endef
