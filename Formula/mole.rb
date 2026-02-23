class Mole < Formula
  desc "SSH tunnel manager CLI"
  homepage "https://github.com/twbot/mole"
  version "0.1.0"
  license "MIT"

  depends_on "autossh"

  on_macos do
    on_arm do
      url "https://github.com/twbot/mole/releases/download/v0.1.0/mole-0.1.0-aarch64-apple-darwin.tar.gz"
      sha256 "79a6b359bfb6cd2058284de1fa5ea1612294e88a3ef59c163fc6fb9f67809002"
    end
    on_intel do
      url "https://github.com/twbot/mole/releases/download/v0.1.0/mole-0.1.0-x86_64-apple-darwin.tar.gz"
      sha256 "667842b61917b2bbc903a735f5305e1a64f7bb3782df92cf1fb48f056a7d0746"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/twbot/mole/releases/download/v0.1.0/mole-0.1.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "9cf44edad5bd6e511ca63c9c9a9ced0919d8d90f4146d643ca731808474d5a3b"
    end
  end

  def install
    bin.install "mole"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/mole --version")
  end
end
