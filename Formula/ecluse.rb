class Ecluse < Formula
  desc "Ephemeral local environments for coding agents — any stack."
  homepage "https://github.com/hefgi/ecluse"
  version "0.3.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/hefgi/ecluse/releases/download/v0.3.0/ecluse-v0.3.0-aarch64-apple-darwin.tar.gz"
      sha256 "1ed044cb140368f090cbc099e2360d722628ce7992dbb58704e526f69642c521"
    end
    on_intel do
      url "https://github.com/hefgi/ecluse/releases/download/v0.3.0/ecluse-v0.3.0-x86_64-apple-darwin.tar.gz"
      sha256 "cd8481f7c7ef2eb353544f77766b1ccd35853f4f151575a4e0b20bdd78450fa9"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/hefgi/ecluse/releases/download/v0.3.0/ecluse-v0.3.0-aarch64-unknown-linux-musl.tar.gz"
      sha256 "254b143d32ceb527d311f8128d1cca2f523d7554178067cd3580c0dafaaa55a9"
    end
    on_intel do
      url "https://github.com/hefgi/ecluse/releases/download/v0.3.0/ecluse-v0.3.0-x86_64-unknown-linux-musl.tar.gz"
      sha256 "e46d862e3f5c97c7260a09599c048217ad7e9e8c14c9fc1cb5a1b0006f4e5506"
    end
  end

  def install
    bin.install "ecluse"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/ecluse --version")
  end
end
