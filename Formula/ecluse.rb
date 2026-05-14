class Ecluse < Formula
  desc "Per-worktree isolation for AI agentic engineering and multi-session development"
  homepage "https://github.com/hefgi/ecluse"
  version "0.2.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/hefgi/ecluse/releases/download/v0.2.0/ecluse-v0.2.0-aarch64-apple-darwin.tar.gz"
      sha256 "f86312ac19c86c3d8eb02e71aa2710d375463c619fe27238de25d8bd645626f4"
    end
    on_intel do
      url "https://github.com/hefgi/ecluse/releases/download/v0.2.0/ecluse-v0.2.0-x86_64-apple-darwin.tar.gz"
      sha256 "0ae7d1886dcf8dac86ff397cceb2df300914f8c25e057852886e21183dfb06ff"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/hefgi/ecluse/releases/download/v0.2.0/ecluse-v0.2.0-aarch64-unknown-linux-musl.tar.gz"
      sha256 "5ea833899ef57dd40e5aae8e2ab05ce16ce542406f6ba4198ce85e26ae04aaa8"
    end
    on_intel do
      url "https://github.com/hefgi/ecluse/releases/download/v0.2.0/ecluse-v0.2.0-x86_64-unknown-linux-musl.tar.gz"
      sha256 "7554819383428e96fc007b11090d2737afbdb1669b88fe65ddcc8e90af76af44"
    end
  end

  def install
    bin.install "ecluse"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/ecluse --version")
  end
end
