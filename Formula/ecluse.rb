class Ecluse < Formula
  desc "Ephemeral local environments for coding agents — any stack."
  homepage "https://github.com/hefgi/ecluse"
  version "0.2.9"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/hefgi/ecluse/releases/download/v0.2.9/ecluse-v0.2.9-aarch64-apple-darwin.tar.gz"
      sha256 "2175431e381c950408ecf06e2b3d73417c931ef8fc07b376016ea0663b868756"
    end
    on_intel do
      url "https://github.com/hefgi/ecluse/releases/download/v0.2.9/ecluse-v0.2.9-x86_64-apple-darwin.tar.gz"
      sha256 "b294e9e2b83893f4317944fc214adefa89a713df70065ae354a18a21a4d16ecb"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/hefgi/ecluse/releases/download/v0.2.9/ecluse-v0.2.9-aarch64-unknown-linux-musl.tar.gz"
      sha256 "04dffff94f4eab61c11c0d5b6c274aa906deb1dd555bfec77fa39c3577222da3"
    end
    on_intel do
      url "https://github.com/hefgi/ecluse/releases/download/v0.2.9/ecluse-v0.2.9-x86_64-unknown-linux-musl.tar.gz"
      sha256 "b59c9a4706f0a3a37dabdab4f2c31bf8563e9cebe48d6de4cc8466f0da094e1b"
    end
  end

  def install
    bin.install "ecluse"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/ecluse --version")
  end
end
