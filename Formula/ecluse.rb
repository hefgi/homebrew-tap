class Ecluse < Formula
  desc "Ephemeral local environments for coding agents — any stack."
  homepage "https://github.com/hefgi/ecluse"
  version "0.2.15"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/hefgi/ecluse/releases/download/v0.2.15/ecluse-v0.2.15-aarch64-apple-darwin.tar.gz"
      sha256 "a9a361d0df3164510d9e4530eeb1c4ef72c98a4b36b9eeaa88721041f8e349c7"
    end
    on_intel do
      url "https://github.com/hefgi/ecluse/releases/download/v0.2.15/ecluse-v0.2.15-x86_64-apple-darwin.tar.gz"
      sha256 "9db39603866f66dd9225117088ab235bc0b30f9ecfc0b22cb7f2f275262ad40a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/hefgi/ecluse/releases/download/v0.2.15/ecluse-v0.2.15-aarch64-unknown-linux-musl.tar.gz"
      sha256 "655952e08729f8b670478041bb5f589dd18ce2336f6719ee7c0fb704ddbf418e"
    end
    on_intel do
      url "https://github.com/hefgi/ecluse/releases/download/v0.2.15/ecluse-v0.2.15-x86_64-unknown-linux-musl.tar.gz"
      sha256 "c1155bc39b0ee178b442017773b7029643bdf3b8bb6aa9b0e50797b74efea74d"
    end
  end

  def install
    bin.install "ecluse"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/ecluse --version")
  end
end
