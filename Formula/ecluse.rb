class Ecluse < Formula
  desc "Ephemeral local environments for coding agents — any stack."
  homepage "https://github.com/hefgi/ecluse"
  version "0.2.17"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/hefgi/ecluse/releases/download/v0.2.17/ecluse-v0.2.17-aarch64-apple-darwin.tar.gz"
      sha256 "4e7951752bfe070050f665c38f678aaa3ad7927c6de0ca9b19460266cc7e33ec"
    end
    on_intel do
      url "https://github.com/hefgi/ecluse/releases/download/v0.2.17/ecluse-v0.2.17-x86_64-apple-darwin.tar.gz"
      sha256 "3250ed8e276ae663e0c9cbb25ff16a1b8771a4fdd523aa6b7874f96948111db8"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/hefgi/ecluse/releases/download/v0.2.17/ecluse-v0.2.17-aarch64-unknown-linux-musl.tar.gz"
      sha256 "532cb5a6d5cc90c91d7a347832b67f05fa46f77a3837636b8da0818c6ca5e19f"
    end
    on_intel do
      url "https://github.com/hefgi/ecluse/releases/download/v0.2.17/ecluse-v0.2.17-x86_64-unknown-linux-musl.tar.gz"
      sha256 "8713c26546b807790d55d1387b4e8edb2c09d3185335aa1c55f26724379b8c9b"
    end
  end

  def install
    bin.install "ecluse"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/ecluse --version")
  end
end
