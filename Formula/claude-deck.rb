class ClaudeDeck < Formula
  desc "Watch Claude Code sessions: scratchpad files, tasks and every tool call"
  homepage "https://github.com/bigsan/claude-deck"
  version "0.2.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/bigsan/claude-deck/releases/download/v0.2.1/claude-deck-v0.2.1-aarch64-apple-darwin.tar.gz"
      sha256 "107b7d0e89d0beb29dffca4cecacbf214e9188a3f66f387b1fd982d1a95b9c1a"
    end
    on_intel do
      url "https://github.com/bigsan/claude-deck/releases/download/v0.2.1/claude-deck-v0.2.1-x86_64-apple-darwin.tar.gz"
      sha256 "33337be1a657b6662f34add2003aebdf928fbb6bd54bc10dc56a6d776fb70de0"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/bigsan/claude-deck/releases/download/v0.2.1/claude-deck-v0.2.1-aarch64-unknown-linux-musl.tar.gz"
      sha256 "ea5779f93d41ff4b83cb3a4b097988b6b404cef55b0f104a4a77e596c6139f3f"
    end
    on_intel do
      url "https://github.com/bigsan/claude-deck/releases/download/v0.2.1/claude-deck-v0.2.1-x86_64-unknown-linux-musl.tar.gz"
      sha256 "a8018f887ab281def404fcaa2bad0b74f77f403c8892389114e5f427265c58d5"
    end
  end

  def install
    bin.install "claude-deck"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/claude-deck --version")
  end
end
