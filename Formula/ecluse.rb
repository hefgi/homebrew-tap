class Ecluse < Formula
  desc "Ephemeral local environments for coding agents — any stack."
  homepage "https://github.com/hefgi/ecluse"
  version "0.2.13"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/hefgi/ecluse/releases/download/v0.2.13/ecluse-v0.2.13-aarch64-apple-darwin.tar.gz"
      sha256 "dea976c2f03ccce3e6aa34737e09abb8a0429a941b35fc7eb94adb25dde7e268"
    end
    on_intel do
      url "https://github.com/hefgi/ecluse/releases/download/v0.2.13/ecluse-v0.2.13-x86_64-apple-darwin.tar.gz"
      sha256 "20098b510294a63ec89d9d247e73949d4aed5373d1ae041c844115497eb31c7c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/hefgi/ecluse/releases/download/v0.2.13/ecluse-v0.2.13-aarch64-unknown-linux-musl.tar.gz"
      sha256 "cc6b572abfa4f8b07dd886fbaa5c5c31e0c1ba1a426119dd3071b0029bdd5869"
    end
    on_intel do
      url "https://github.com/hefgi/ecluse/releases/download/v0.2.13/ecluse-v0.2.13-x86_64-unknown-linux-musl.tar.gz"
      sha256 "7487d0bcf002345516ca18a1edf938f32bf306a0437c47f797e861c021a4cc90"
    end
  end

  def install
    bin.install "ecluse"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/ecluse --version")
  end
end
