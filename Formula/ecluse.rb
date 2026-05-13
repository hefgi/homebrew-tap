class Ecluse < Formula
  desc "Per-worktree isolation for AI agentic engineering and multi-session development"
  homepage "https://github.com/hefgi/ecluse"
  version "0.1.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/hefgi/ecluse/releases/download/v0.1.0/ecluse-v0.1.0-aarch64-apple-darwin.tar.gz"
      sha256 "3aa138f65cd41d3d5a83c85be79b2a1ca99526936a917f1015c6adefe494cf43"
    end
    on_intel do
      url "https://github.com/hefgi/ecluse/releases/download/v0.1.0/ecluse-v0.1.0-x86_64-apple-darwin.tar.gz"
      sha256 "393056791dcecb6d710aa383d7e2395b459bfdc9f600938e12d20fef04beac0f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/hefgi/ecluse/releases/download/v0.1.0/ecluse-v0.1.0-aarch64-unknown-linux-musl.tar.gz"
      sha256 "c93080863750512a101f393975e48823a34da7d516d809c885d66d4956068117"
    end
    on_intel do
      url "https://github.com/hefgi/ecluse/releases/download/v0.1.0/ecluse-v0.1.0-x86_64-unknown-linux-musl.tar.gz"
      sha256 "a8a09c22e2fd58052c600acef31681e514e51eac7e64c9d249c918652e3e71f3"
    end
  end

  def install
    bin.install "ecluse"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/ecluse --version")
  end
end
