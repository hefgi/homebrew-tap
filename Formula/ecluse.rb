class Ecluse < Formula
  desc "Ephemeral local environments for coding agents — any stack."
  homepage "https://github.com/hefgi/ecluse"
  version "0.2.2"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/hefgi/ecluse/releases/download/v0.2.2/ecluse-v0.2.2-aarch64-apple-darwin.tar.gz"
      sha256 "1425300030082b18497e8c95ecc32449bf9ebdd89e64907ca83eac83af7231da"
    end
    on_intel do
      url "https://github.com/hefgi/ecluse/releases/download/v0.2.2/ecluse-v0.2.2-x86_64-apple-darwin.tar.gz"
      sha256 "e232002b3479e8fff1cd3feafcbaee3f3920fdaf4a1ac3f3f82d504e559d02e3"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/hefgi/ecluse/releases/download/v0.2.2/ecluse-v0.2.2-aarch64-unknown-linux-musl.tar.gz"
      sha256 "1d3f4a9c8ed035e013dd5875859ace8030b16d02516986a947f5ddd450a46d5e"
    end
    on_intel do
      url "https://github.com/hefgi/ecluse/releases/download/v0.2.2/ecluse-v0.2.2-x86_64-unknown-linux-musl.tar.gz"
      sha256 "56b2f86accb9f881ec4debd602f261edf204ce23335b9fd50f87ee738309f5fe"
    end
  end

  def install
    bin.install "ecluse"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/ecluse --version")
  end
end
