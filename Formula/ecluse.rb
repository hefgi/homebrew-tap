class Ecluse < Formula
  desc "Per-worktree isolation for AI agentic engineering and multi-session development"
  homepage "https://github.com/hefgi/ecluse"
  version "0.2.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/hefgi/ecluse/releases/download/v0.2.0/ecluse-v0.2.0-aarch64-apple-darwin.tar.gz"
      sha256 "80f8ad1d7487c97aa613c29597000b2c2f8ffcb500d14a65815047bdb8794d19"
    end
    on_intel do
      url "https://github.com/hefgi/ecluse/releases/download/v0.2.0/ecluse-v0.2.0-x86_64-apple-darwin.tar.gz"
      sha256 "04ccba15e2faa69a71ec10f7b9c6bb75bdc98609d7032faca130146e79a0cf23"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/hefgi/ecluse/releases/download/v0.2.0/ecluse-v0.2.0-aarch64-unknown-linux-musl.tar.gz"
      sha256 "61c0322b0ba75348817dfe6da9a69f43a7098b8cb5a1aa4ea39614bf14019ddb"
    end
    on_intel do
      url "https://github.com/hefgi/ecluse/releases/download/v0.2.0/ecluse-v0.2.0-x86_64-unknown-linux-musl.tar.gz"
      sha256 "81bef6ad13b727d2b03353f2d6386b8d454cdb7e163f1fd3f6067d577e69e490"
    end
  end

  def install
    bin.install "ecluse"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/ecluse --version")
  end
end
