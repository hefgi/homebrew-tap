class Ecluse < Formula
  desc "Ephemeral local environments for coding agents — any stack."
  homepage "https://github.com/hefgi/ecluse"
  version "0.2.2"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/hefgi/ecluse/releases/download/v0.2.2/ecluse-v0.2.2-aarch64-apple-darwin.tar.gz"
      sha256 "1955d06115172da76a8466574bfa80e69c910379624512ce28aede40931c852d"
    end
    on_intel do
      url "https://github.com/hefgi/ecluse/releases/download/v0.2.2/ecluse-v0.2.2-x86_64-apple-darwin.tar.gz"
      sha256 "0c1374118e4eb213a732b10da2f3c8d23df976bba2ab45ee2b4064760b07532a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/hefgi/ecluse/releases/download/v0.2.2/ecluse-v0.2.2-aarch64-unknown-linux-musl.tar.gz"
      sha256 "552e04c265ae00ed8522969383942e5d77789dfc6e86b0674d8d3bce56b5b037"
    end
    on_intel do
      url "https://github.com/hefgi/ecluse/releases/download/v0.2.2/ecluse-v0.2.2-x86_64-unknown-linux-musl.tar.gz"
      sha256 "5823b7f553d321534402374990b876546f3ef6dfc24a2a65ba360c225b887735"
    end
  end

  def install
    bin.install "ecluse"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/ecluse --version")
  end
end
