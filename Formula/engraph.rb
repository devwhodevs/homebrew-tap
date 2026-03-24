class Engraph < Formula
  desc "Local semantic search for Obsidian vaults"
  homepage "https://github.com/devwhodevs/engraph"
  url "https://github.com/devwhodevs/engraph/archive/refs/tags/v0.3.0.tar.gz"
  sha256 "27cfbdc2e3216a95041a037d93d29232d9ffb2b7111685b029b542bd78df1524"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match "engraph", shell_output("#{bin}/engraph --help")
  end
end
