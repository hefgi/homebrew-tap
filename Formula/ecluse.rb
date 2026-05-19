class Ecluse < Formula
  desc "Ephemeral local environments for coding agents — any stack."
  homepage "https://github.com/hefgi/ecluse"
  version "0.2.5"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/hefgi/ecluse/releases/download/v0.2.5/ecluse-v0.2.5-aarch64-apple-darwin.tar.gz"
      sha256 "b89639e978b6545db9e93ca02d561af315a97d344e1051aab29e34ca93a61ada"
    end
    on_intel do
      url "https://github.com/hefgi/ecluse/releases/download/v0.2.5/ecluse-v0.2.5-x86_64-apple-darwin.tar.gz"
      sha256 "5ac4d4376f8dcf414f28269b773b1469086be3bb96c370ead919498e123ab2cd"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/hefgi/ecluse/releases/download/v0.2.5/ecluse-v0.2.5-aarch64-unknown-linux-musl.tar.gz"
      sha256 "3a67287f218ddf9b4db479ac917895bba6fa04db40f2ba84f97fa2b73149ee99"
    end
    on_intel do
      url "https://github.com/hefgi/ecluse/releases/download/v0.2.5/ecluse-v0.2.5-x86_64-unknown-linux-musl.tar.gz"
      sha256 "21c6d03ef1b9365844d23ac0622a914f1af3c0d3c9c5bc97ae2494a02db3b8b4"
    end
  end

  def install
    bin.install "ecluse"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/ecluse --version")
  end
end
