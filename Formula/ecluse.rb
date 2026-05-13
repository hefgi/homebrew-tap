class Ecluse < Formula
  desc "Per-worktree isolation. Pick what you need isolated."
  homepage "https://github.com/hefgi/ecluse"
  version "0.1.0"

  on_macos do
    on_arm do
      url "https://github.com/hefgi/ecluse/releases/download/v0.1.0/ecluse-aarch64-apple-darwin.tar.gz"
      sha256 "PLACEHOLDER"
    end
    on_intel do
      url "https://github.com/hefgi/ecluse/releases/download/v0.1.0/ecluse-x86_64-apple-darwin.tar.gz"
      sha256 "PLACEHOLDER"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/hefgi/ecluse/releases/download/v0.1.0/ecluse-aarch64-unknown-linux-musl.tar.gz"
      sha256 "PLACEHOLDER"
    end
    on_intel do
      url "https://github.com/hefgi/ecluse/releases/download/v0.1.0/ecluse-x86_64-unknown-linux-musl.tar.gz"
      sha256 "PLACEHOLDER"
    end
  end

  def install
    bin.install "ecluse"
  end

  test do
    system "#{bin}/ecluse", "--version"
  end
end
