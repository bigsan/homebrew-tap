class ClaudeDeck < Formula
  desc "Watch Claude Code sessions: scratchpad files, tasks and every tool call"
  homepage "https://github.com/bigsan/claude-deck"
  version "0.2.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/bigsan/claude-deck/releases/download/v0.2.2/claude-deck-v0.2.2-aarch64-apple-darwin.tar.gz"
      sha256 "62dcd1c87316d229e26f7f81f5b4ffe359d22472f3a26ce2b9cb451a4508e345"
    end
    on_intel do
      url "https://github.com/bigsan/claude-deck/releases/download/v0.2.2/claude-deck-v0.2.2-x86_64-apple-darwin.tar.gz"
      sha256 "38c904f1772c937714391c089a1cc8b1162110f1cc17167f041297f9d4195097"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/bigsan/claude-deck/releases/download/v0.2.2/claude-deck-v0.2.2-aarch64-unknown-linux-musl.tar.gz"
      sha256 "cb1fabc180ade6a9505aac0b75f20fac1eea1e0cd70d82e51f27776a8be2f156"
    end
    on_intel do
      url "https://github.com/bigsan/claude-deck/releases/download/v0.2.2/claude-deck-v0.2.2-x86_64-unknown-linux-musl.tar.gz"
      sha256 "090f23e27535e9a601e8d0e41a0218ca9cd40bc0443eb274821b61e56c73cbe1"
    end
  end

  def install
    bin.install "claude-deck"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/claude-deck --version")
  end
end
