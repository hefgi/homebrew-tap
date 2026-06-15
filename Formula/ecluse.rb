class Ecluse < Formula
  desc "Ephemeral local environments for coding agents — any stack."
  homepage "https://github.com/hefgi/ecluse"
  version "0.3.1"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/hefgi/ecluse/releases/download/v0.3.1/ecluse-v0.3.1-aarch64-apple-darwin.tar.gz"
      sha256 "792a54e4b6c62ee97f30699d3cbf5be1b8911126aa67e4e95ef8e9105787a93a"
    end
    on_intel do
      url "https://github.com/hefgi/ecluse/releases/download/v0.3.1/ecluse-v0.3.1-x86_64-apple-darwin.tar.gz"
      sha256 "69f4dea4095dfb88095fc8db263e250530e6580372be31c15e097abc8928bdea"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/hefgi/ecluse/releases/download/v0.3.1/ecluse-v0.3.1-aarch64-unknown-linux-musl.tar.gz"
      sha256 "e8c4f56bf478d169e205e4ce5e0ff995cca693098a407a82d05b62d604b82d82"
    end
    on_intel do
      url "https://github.com/hefgi/ecluse/releases/download/v0.3.1/ecluse-v0.3.1-x86_64-unknown-linux-musl.tar.gz"
      sha256 "da961fa4182a7b38828ae8bb32b7120a23ab6cdbfd0159ccae9b6d873cb237cf"
    end
  end

  def install
    bin.install "ecluse"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/ecluse --version")
  end
end
