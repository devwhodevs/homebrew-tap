class Engraph < Formula
  desc "Local semantic search for Obsidian vaults"
  homepage "https://github.com/devwhodevs/engraph"
  url "https://github.com/devwhodevs/engraph/archive/refs/tags/v1.7.1.tar.gz"
  sha256 "c9b62a69438a95445723a20aada8714ad416ca6b61d42283df1fa0d19f0f366d"
  license "MIT"

  depends_on "cmake" => :build
  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match "engraph", shell_output("#{bin}/engraph --help")
  end
end
