class Engraph < Formula
  desc "Local semantic search for Obsidian vaults"
  homepage "https://github.com/devwhodevs/engraph"
  url "https://github.com/devwhodevs/engraph/archive/refs/tags/v0.7.0.tar.gz"
  sha256 "b204920718c84814fa6faa51c9e4c770363fb757d8e05dc8b2d1d53a0bd506dc"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match "engraph", shell_output("#{bin}/engraph --help")
  end
end
