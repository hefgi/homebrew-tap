class Ecluse < Formula
  desc "Ephemeral local environments for coding agents — any stack."
  homepage "https://github.com/hefgi/ecluse"
  version "0.2.16"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/hefgi/ecluse/releases/download/v0.2.16/ecluse-v0.2.16-aarch64-apple-darwin.tar.gz"
      sha256 "f29dba6114cbfb7776c2c68a1bfebb3756846bfbc7f772d07d4a32648f210607"
    end
    on_intel do
      url "https://github.com/hefgi/ecluse/releases/download/v0.2.16/ecluse-v0.2.16-x86_64-apple-darwin.tar.gz"
      sha256 "75e17b7e5ff6ceac482718c110f060e7308df83885093d15438bd3bae17b7783"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/hefgi/ecluse/releases/download/v0.2.16/ecluse-v0.2.16-aarch64-unknown-linux-musl.tar.gz"
      sha256 "13b94e4e8c4ad5764b61c714d1de36626da70c5fd47db2496de01392a50474ef"
    end
    on_intel do
      url "https://github.com/hefgi/ecluse/releases/download/v0.2.16/ecluse-v0.2.16-x86_64-unknown-linux-musl.tar.gz"
      sha256 "af752e35aa8d298d59b63c20bbe557e049766a41b2a3b1ff1742747760b90819"
    end
  end

  def install
    bin.install "ecluse"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/ecluse --version")
  end
end
