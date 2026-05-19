class Ecluse < Formula
  desc "Ephemeral local environments for coding agents — any stack."
  homepage "https://github.com/hefgi/ecluse"
  version "0.2.6"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/hefgi/ecluse/releases/download/v0.2.6/ecluse-v0.2.6-aarch64-apple-darwin.tar.gz"
      sha256 "facb0099d6b37244a99593a4081e94248cbc4c3a71510d7eb13ed8e7a8cab0fc"
    end
    on_intel do
      url "https://github.com/hefgi/ecluse/releases/download/v0.2.6/ecluse-v0.2.6-x86_64-apple-darwin.tar.gz"
      sha256 "f96d9ce41444b5993502681f63c8f3e8394310c42bd883b7dbdcaebcc1e05ce1"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/hefgi/ecluse/releases/download/v0.2.6/ecluse-v0.2.6-aarch64-unknown-linux-musl.tar.gz"
      sha256 "cd647dfdffb9d2925bcb022531ab276f1a476e97e4ee45030a384cb5eeb1fcf3"
    end
    on_intel do
      url "https://github.com/hefgi/ecluse/releases/download/v0.2.6/ecluse-v0.2.6-x86_64-unknown-linux-musl.tar.gz"
      sha256 "e0d2e050188680f7e688d65ff65ee988f31c4b9b3b7138befe84aee2793df3f3"
    end
  end

  def install
    bin.install "ecluse"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/ecluse --version")
  end
end
