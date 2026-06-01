class Ecluse < Formula
  desc "Ephemeral local environments for coding agents — any stack."
  homepage "https://github.com/hefgi/ecluse"
  version "0.2.10"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/hefgi/ecluse/releases/download/v0.2.10/ecluse-v0.2.10-aarch64-apple-darwin.tar.gz"
      sha256 "1cdba9b693d49de5d768f30777e4452c08f19d6506239b5ed5ee27b9ee38a3a2"
    end
    on_intel do
      url "https://github.com/hefgi/ecluse/releases/download/v0.2.10/ecluse-v0.2.10-x86_64-apple-darwin.tar.gz"
      sha256 "a7347aaef2f6d217fcb8f813bbede07fccc1f60851fbbe22cca2e63322c453e3"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/hefgi/ecluse/releases/download/v0.2.10/ecluse-v0.2.10-aarch64-unknown-linux-musl.tar.gz"
      sha256 "422f80a2140fba8754e30791f1fd83dc3329f59ab0a052d28c39c1b854c01f94"
    end
    on_intel do
      url "https://github.com/hefgi/ecluse/releases/download/v0.2.10/ecluse-v0.2.10-x86_64-unknown-linux-musl.tar.gz"
      sha256 "f12bfef87ab27d1675495d078f8150be1fb60e2c1c4840aba281fe3af9e04a87"
    end
  end

  def install
    bin.install "ecluse"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/ecluse --version")
  end
end
