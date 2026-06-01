class Ecluse < Formula
  desc "Ephemeral local environments for coding agents — any stack."
  homepage "https://github.com/hefgi/ecluse"
  version "0.2.8"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/hefgi/ecluse/releases/download/v0.2.8/ecluse-v0.2.8-aarch64-apple-darwin.tar.gz"
      sha256 "6375c320c6366694acadcd4e1dd73b8f1bf74201a9d4c6c707b21cb102b69ffa"
    end
    on_intel do
      url "https://github.com/hefgi/ecluse/releases/download/v0.2.8/ecluse-v0.2.8-x86_64-apple-darwin.tar.gz"
      sha256 "e0649c2ef76c28b44b44c523b544d62c48c94f88799bba1335f0b792999c45e4"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/hefgi/ecluse/releases/download/v0.2.8/ecluse-v0.2.8-aarch64-unknown-linux-musl.tar.gz"
      sha256 "8eac723a0971fbc036017f8c5252740c2bf4d145b382c6db4664ba93801854d4"
    end
    on_intel do
      url "https://github.com/hefgi/ecluse/releases/download/v0.2.8/ecluse-v0.2.8-x86_64-unknown-linux-musl.tar.gz"
      sha256 "eaf23a6d4ccd56aeb354ce47f9cfd7b7bc363c659f48c3ca1d53a87f3ce1791a"
    end
  end

  def install
    bin.install "ecluse"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/ecluse --version")
  end
end
