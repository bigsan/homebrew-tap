class ClaudeDeck < Formula
  desc "Watch Claude Code sessions: scratchpad files, tasks and every tool call"
  homepage "https://github.com/bigsan/claude-deck"
  version "0.2.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/bigsan/claude-deck/releases/download/v0.2.0/claude-deck-v0.2.0-aarch64-apple-darwin.tar.gz"
      sha256 "37a74eb67fa51d1c2373cae14ce3c429e8d476befcd9a7fa78e884a60771e95c"
    end
    on_intel do
      url "https://github.com/bigsan/claude-deck/releases/download/v0.2.0/claude-deck-v0.2.0-x86_64-apple-darwin.tar.gz"
      sha256 "68ba1596d42969bc74d9f163c711cc23f7f3fd78c1133d3b2d918a66ad3bc002"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/bigsan/claude-deck/releases/download/v0.2.0/claude-deck-v0.2.0-aarch64-unknown-linux-musl.tar.gz"
      sha256 "ebc9d40bddea95dbe76b150c012bcb762b6e9767f2bd3fa7a8a6e48de8896a8f"
    end
    on_intel do
      url "https://github.com/bigsan/claude-deck/releases/download/v0.2.0/claude-deck-v0.2.0-x86_64-unknown-linux-musl.tar.gz"
      sha256 "31f5dba84c0ec7ea14804cc87653d3bbabd4b169dd4611b931d5d230441ff4d3"
    end
  end

  def install
    bin.install "claude-deck"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/claude-deck --version")
  end
end
