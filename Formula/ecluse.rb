class Ecluse < Formula
  desc "Ephemeral local environments for coding agents — any stack."
  homepage "https://github.com/hefgi/ecluse"
  version "0.2.7"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/hefgi/ecluse/releases/download/v0.2.7/ecluse-v0.2.7-aarch64-apple-darwin.tar.gz"
      sha256 "b962dfbcdf16d653282be2b1794d9ba45877778283534aa2ab8533f028a2505d"
    end
    on_intel do
      url "https://github.com/hefgi/ecluse/releases/download/v0.2.7/ecluse-v0.2.7-x86_64-apple-darwin.tar.gz"
      sha256 "411ce5daec8c205d97a59bc03a56b30be54cab7a2635134bbca4f35540cfe44a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/hefgi/ecluse/releases/download/v0.2.7/ecluse-v0.2.7-aarch64-unknown-linux-musl.tar.gz"
      sha256 "9dee339343c830bda7153f5ef14bfcea74e105716abb2e07814a286d744bca51"
    end
    on_intel do
      url "https://github.com/hefgi/ecluse/releases/download/v0.2.7/ecluse-v0.2.7-x86_64-unknown-linux-musl.tar.gz"
      sha256 "d355f6c5772add8f9e6336baf89fd35571ed1956b385493cb1d06fd59f4b1a0e"
    end
  end

  def install
    bin.install "ecluse"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/ecluse --version")
  end
end
