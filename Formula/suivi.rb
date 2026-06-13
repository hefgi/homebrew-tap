class Suivi < Formula
  desc "Track time spent working with AI coding agents across multiple projects"
  homepage "https://github.com/hefgi/suivi"
  version "0.2.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/hefgi/suivi/releases/download/v0.2.0/suivi-v0.2.0-aarch64-apple-darwin.tar.gz"
      sha256 "bcd70d0475d7576dedc495fceaa8f0f926ec4bfaa19d355b66ccb359a3c61d52"
    end
    on_intel do
      url "https://github.com/hefgi/suivi/releases/download/v0.2.0/suivi-v0.2.0-x86_64-apple-darwin.tar.gz"
      sha256 "2233116c340fe39e680ab55ebb01c7d0880b95a94982d3c6cc6381efdd1eb063"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/hefgi/suivi/releases/download/v0.2.0/suivi-v0.2.0-aarch64-unknown-linux-musl.tar.gz"
      sha256 "c3a35bf743f4e915b01dbb0de02cb2e8da4206642c5367f33fcd3fb29c70dac1"
    end
    on_intel do
      url "https://github.com/hefgi/suivi/releases/download/v0.2.0/suivi-v0.2.0-x86_64-unknown-linux-musl.tar.gz"
      sha256 "f652a5e5e4af83d38b1452ec7e809837c8f6d57e269428bb1513525ba074aa48"
    end
  end

  def install
    bin.install "suivi"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/suivi --version")
  end
end
