package=rszcash
$(package)_version=0.1
$(package)_download_path=https://github.com/ebfull/dummy-zcash-rust-thing/archive/
$(package)_file_name=$(package)-$($(package)_git_commit).tar.gz
$(package)_download_file=$($(package)_git_commit).tar.gz
$(package)_sha256_hash=a0aad9487453ed3e156d41cb70a76d277f786608986738a2662eee986b02dc2b
$(package)_git_commit=c1278ecbd6e0db0b4b413788105e00cf61fd36c2
$(package)_dependencies=rust

define $(package)_build_cmds
  cargo build --release
endef

define $(package)_stage_cmds
  mkdir $($(package)_staging_dir)$(host_prefix)/lib/ && \
  cp target/release/librszcash.a $($(package)_staging_dir)$(host_prefix)/lib/
endef
