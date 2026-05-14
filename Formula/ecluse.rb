class Ecluse < Formula
  desc "Per-worktree isolation for AI agentic engineering and multi-session development"
  homepage "https://github.com/hefgi/ecluse"
  version "0.2.1"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/hefgi/ecluse/releases/download/v0.2.1/ecluse-v0.2.1-aarch64-apple-darwin.tar.gz"
      sha256 "68117df222a783c431a92571098836e274defe4ba45b34d65f7bb219946e51d1"
    end
    on_intel do
      url "https://github.com/hefgi/ecluse/releases/download/v0.2.1/ecluse-v0.2.1-x86_64-apple-darwin.tar.gz"
      sha256 "02c9ea7f11f6795c2c9a8a4e80b432c7437875a0a6eb6a2ffc5845e0904cb12f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/hefgi/ecluse/releases/download/v0.2.1/ecluse-v0.2.1-aarch64-unknown-linux-musl.tar.gz"
      sha256 "29386658f68149f552132fe70e20676e447fa6136c9116d7e4231fa7d10a449a"
    end
    on_intel do
      url "https://github.com/hefgi/ecluse/releases/download/v0.2.1/ecluse-v0.2.1-x86_64-unknown-linux-musl.tar.gz"
      sha256 "ebbb0ce3a34a3029abf8889288dc340466b578380edc60e6a5d8add10bc6e45a"
    end
  end

  def install
    bin.install "ecluse"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/ecluse --version")
  end
end
