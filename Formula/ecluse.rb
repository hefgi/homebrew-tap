class Ecluse < Formula
  desc "Ephemeral local environments for coding agents — any stack."
  homepage "https://github.com/hefgi/ecluse"
  version "0.2.3"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/hefgi/ecluse/releases/download/v0.2.3/ecluse-v0.2.3-aarch64-apple-darwin.tar.gz"
      sha256 "13b3d1cff8ac6b8000a905da9986957eb1eb79dd4914c5756cfc08f934b83baa"
    end
    on_intel do
      url "https://github.com/hefgi/ecluse/releases/download/v0.2.3/ecluse-v0.2.3-x86_64-apple-darwin.tar.gz"
      sha256 "c5fc0631f27ca18ae53c3df405bd80df3bd8e5401a26ab8339a9a102f393a844"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/hefgi/ecluse/releases/download/v0.2.3/ecluse-v0.2.3-aarch64-unknown-linux-musl.tar.gz"
      sha256 "3229c113306e93f60d646f9d5fc1c6dcdec7d5ab4b1a8d7ce2889d2c55d3b49a"
    end
    on_intel do
      url "https://github.com/hefgi/ecluse/releases/download/v0.2.3/ecluse-v0.2.3-x86_64-unknown-linux-musl.tar.gz"
      sha256 "675be28e36ae69a6af75418e7da21c12126c92c3afc067536544061f2c138a44"
    end
  end

  def install
    bin.install "ecluse"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/ecluse --version")
  end
end
