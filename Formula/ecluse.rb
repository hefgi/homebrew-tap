class Ecluse < Formula
  desc "Ephemeral local environments for coding agents — any stack."
  homepage "https://github.com/hefgi/ecluse"
  version "0.2.12"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/hefgi/ecluse/releases/download/v0.2.12/ecluse-v0.2.12-aarch64-apple-darwin.tar.gz"
      sha256 "b5315b1065848e9bdd8d54c9ffbc999875e39d99a5d11f3cacb8a89aa7e66076"
    end
    on_intel do
      url "https://github.com/hefgi/ecluse/releases/download/v0.2.12/ecluse-v0.2.12-x86_64-apple-darwin.tar.gz"
      sha256 "615d387d6e68669ee39f94d1110f3061bd59f26cee5adad86fe82336fcc48779"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/hefgi/ecluse/releases/download/v0.2.12/ecluse-v0.2.12-aarch64-unknown-linux-musl.tar.gz"
      sha256 "c7bd694e0fd4a0fa54e2f422aaff3a5918e28d3f50547010bfd3620224171a22"
    end
    on_intel do
      url "https://github.com/hefgi/ecluse/releases/download/v0.2.12/ecluse-v0.2.12-x86_64-unknown-linux-musl.tar.gz"
      sha256 "d2d05dd57291022b581ec6ce871bd5db59ac8522826a2e5686d1fb5c112958b3"
    end
  end

  def install
    bin.install "ecluse"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/ecluse --version")
  end
end
