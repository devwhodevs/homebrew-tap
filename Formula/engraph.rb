class Engraph < Formula
  desc "Local semantic search for Obsidian vaults"
  homepage "https://github.com/devwhodevs/engraph"
  url "https://github.com/devwhodevs/engraph/archive/refs/tags/v0.1.4.tar.gz"
  sha256 "4dbd200ff5592c7f062bff360a3f9f5880c22866c9c77e541b20ba0deb697415"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match "engraph", shell_output("#{bin}/engraph --help")
  end
end
