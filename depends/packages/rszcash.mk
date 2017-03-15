package=rszcash
$(package)_version=0.1
$(package)_download_path=https://github.com/ebfull/dummy-zcash-rust-thing/archive/
$(package)_file_name=$(package)-$($(package)_git_commit).tar.gz
$(package)_download_file=$($(package)_git_commit).tar.gz
$(package)_sha256_hash=795cedb60a5d8408f6b601b6b504641f44160814b6c5f4e6d488be9dc8b36df7
$(package)_git_commit=2e9231b272b9a927459fbe0e08df899a645ac2dc
$(package)_dependencies=rust

define $(package)_build_cmds
  cargo build --release
endef

define $(package)_stage_cmds
  mkdir $($(package)_staging_dir)$(host_prefix)/lib/ && \
  cp target/release/librszcash.a $($(package)_staging_dir)$(host_prefix)/lib/
endef
