class Mole < Formula
  desc "SSH tunnel manager CLI"
  homepage "https://github.com/twbot/mole"
  version "0.0.0"
  license "MIT"

  depends_on "autossh"

  on_macos do
    on_arm do
      url "https://github.com/twbot/mole/releases/download/v0.0.0/mole-0.0.0-aarch64-apple-darwin.tar.gz"
      sha256 "0000000000000000000000000000000000000000000000000000000000000000"
    end
    on_intel do
      url "https://github.com/twbot/mole/releases/download/v0.0.0/mole-0.0.0-x86_64-apple-darwin.tar.gz"
      sha256 "0000000000000000000000000000000000000000000000000000000000000000"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/twbot/mole/releases/download/v0.0.0/mole-0.0.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "0000000000000000000000000000000000000000000000000000000000000000"
    end
  end

  def install
    bin.install "mole"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/mole --version")
  end
end
