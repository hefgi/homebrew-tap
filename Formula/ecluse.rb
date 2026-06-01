class Ecluse < Formula
  desc "Ephemeral local environments for coding agents — any stack."
  homepage "https://github.com/hefgi/ecluse"
  version "0.2.11"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/hefgi/ecluse/releases/download/v0.2.11/ecluse-v0.2.11-aarch64-apple-darwin.tar.gz"
      sha256 "53f06c79a24e5128b03fb0158b71d1c0c6830fea0002b4def0032d6e1508e306"
    end
    on_intel do
      url "https://github.com/hefgi/ecluse/releases/download/v0.2.11/ecluse-v0.2.11-x86_64-apple-darwin.tar.gz"
      sha256 "eaf781facfbff081bd60bb52f5f71281df4055fe88d057c0dd357d101c3ffb89"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/hefgi/ecluse/releases/download/v0.2.11/ecluse-v0.2.11-aarch64-unknown-linux-musl.tar.gz"
      sha256 "bda2445412f2a566af406a230272bdee32b1feaf259a46ac0cdb0303a0ba29eb"
    end
    on_intel do
      url "https://github.com/hefgi/ecluse/releases/download/v0.2.11/ecluse-v0.2.11-x86_64-unknown-linux-musl.tar.gz"
      sha256 "43074a4add5e5383ba9ab60a48998e9c6e708877b44193c511747ae39ce5cc27"
    end
  end

  def install
    bin.install "ecluse"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/ecluse --version")
  end
end
