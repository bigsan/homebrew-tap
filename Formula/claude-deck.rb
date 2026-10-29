class ClaudeDeck < Formula
  desc "Watch Claude Code sessions: scratchpad files, tasks and every tool call"
  homepage "https://github.com/bigsan/claude-deck"
  version "0.3.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/bigsan/claude-deck/releases/download/v0.3.0/claude-deck-v0.3.0-aarch64-apple-darwin.tar.gz"
      sha256 "f10e8125ce763be9468792ad44f0a0b886b044ea84effdb45dbadbdd4729c793"
    end
    on_intel do
      url "https://github.com/bigsan/claude-deck/releases/download/v0.3.0/claude-deck-v0.3.0-x86_64-apple-darwin.tar.gz"
      sha256 "b3a50239f7359b2e064d72446cae597417113f4d70849be6c1a4d19c049d5266"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/bigsan/claude-deck/releases/download/v0.3.0/claude-deck-v0.3.0-aarch64-unknown-linux-musl.tar.gz"
      sha256 "d8d6739a6c87d159f538283805dfc3042121b46906c13fe1bcd24fbd2831243d"
    end
    on_intel do
      url "https://github.com/bigsan/claude-deck/releases/download/v0.3.0/claude-deck-v0.3.0-x86_64-unknown-linux-musl.tar.gz"
      sha256 "3b8dbb7021ae717cd7f9a6e27f006672aa2aade0423e82b345060ca8f137b05f"
    end
  end

  def install
    bin.install "claude-deck"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/claude-deck --version")
  end
end
