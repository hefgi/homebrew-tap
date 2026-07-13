class Suivi < Formula
  desc "Track time spent working with AI coding agents across multiple projects"
  homepage "https://github.com/hefgi/suivi"
  version "0.3.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/hefgi/suivi/releases/download/v0.3.0/suivi-v0.3.0-aarch64-apple-darwin.tar.gz"
      sha256 "e0b9862270e526332c791dd07bf45eb24ee6442a4172889833d755fc52db11d1"
    end
    on_intel do
      url "https://github.com/hefgi/suivi/releases/download/v0.3.0/suivi-v0.3.0-x86_64-apple-darwin.tar.gz"
      sha256 "d7db418ad3bd06c439035c9a02db038ed1c3332281dff92dc3729d53f498cfd1"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/hefgi/suivi/releases/download/v0.3.0/suivi-v0.3.0-aarch64-unknown-linux-musl.tar.gz"
      sha256 "c2ce7536c80ce0d242dd823fb618801250aa99c5d61adfa2ccbfed91ab8f3a82"
    end
    on_intel do
      url "https://github.com/hefgi/suivi/releases/download/v0.3.0/suivi-v0.3.0-x86_64-unknown-linux-musl.tar.gz"
      sha256 "146f245417686ce4f3456e3029bbb852bdc0ecfab2c829c923b9145eedf7ae13"
    end
  end

  def install
    bin.install "suivi"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/suivi --version")
  end
end
