class Ecluse < Formula
  desc "Ephemeral local environments for coding agents — any stack."
  homepage "https://github.com/hefgi/ecluse"
  version "0.2.14"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/hefgi/ecluse/releases/download/v0.2.14/ecluse-v0.2.14-aarch64-apple-darwin.tar.gz"
      sha256 "9b1fd9ed17f60a4f33130b911c845f14760019fd5bd6a4657c9e30d683309988"
    end
    on_intel do
      url "https://github.com/hefgi/ecluse/releases/download/v0.2.14/ecluse-v0.2.14-x86_64-apple-darwin.tar.gz"
      sha256 "bef3141f16273ab608829cb185cba8a345bb9030a61b39d9c820c5a1634d3043"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/hefgi/ecluse/releases/download/v0.2.14/ecluse-v0.2.14-aarch64-unknown-linux-musl.tar.gz"
      sha256 "863c31336346851aacc55b65a5bbc093bf9a2c1472f3340344acab4a19736f21"
    end
    on_intel do
      url "https://github.com/hefgi/ecluse/releases/download/v0.2.14/ecluse-v0.2.14-x86_64-unknown-linux-musl.tar.gz"
      sha256 "df12fc14d37925cf5ba284ca4c85b97a5462bffb6692d118ddba260a1cb85d56"
    end
  end

  def install
    bin.install "ecluse"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/ecluse --version")
  end
end
