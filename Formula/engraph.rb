class Engraph < Formula
  desc "Local semantic search for Obsidian vaults"
  homepage "https://github.com/devwhodevs/engraph"
  url "https://github.com/devwhodevs/engraph/archive/refs/tags/v1.5.1.tar.gz"
  sha256 "c32c6afb3732503e488d5d9adae0c2c9086236bc070ecd44592b58689cfde297"
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
