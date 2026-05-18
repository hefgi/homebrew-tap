class Ecluse < Formula
  desc "Ephemeral local environments for coding agents — any stack."
  homepage "https://github.com/hefgi/ecluse"
  version "0.2.4"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/hefgi/ecluse/releases/download/v0.2.4/ecluse-v0.2.4-aarch64-apple-darwin.tar.gz"
      sha256 "81c4b6863be8f4f4ff4c7d34798c506366c4afc1db5f733000c3e186c26c000f"
    end
    on_intel do
      url "https://github.com/hefgi/ecluse/releases/download/v0.2.4/ecluse-v0.2.4-x86_64-apple-darwin.tar.gz"
      sha256 "cab9ee3a9d856583cd6dcb4e43602ed81ccfcf1c4ca788b2eb00037eb23e772a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/hefgi/ecluse/releases/download/v0.2.4/ecluse-v0.2.4-aarch64-unknown-linux-musl.tar.gz"
      sha256 "b5eaa6e4ff3f1482ac892b0ec57dc3ec96a7fd92889ce363215ff622987954a8"
    end
    on_intel do
      url "https://github.com/hefgi/ecluse/releases/download/v0.2.4/ecluse-v0.2.4-x86_64-unknown-linux-musl.tar.gz"
      sha256 "86d3e8776fa3576d92e4c7cbfea2bca75f7503d510417ff7baa2bc72e9e2e7c7"
    end
  end

  def install
    bin.install "ecluse"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/ecluse --version")
  end
end
