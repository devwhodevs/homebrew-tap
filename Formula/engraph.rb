class Engraph < Formula
  desc "Local semantic search for Obsidian vaults"
  homepage "https://github.com/devwhodevs/engraph"
  url "https://github.com/devwhodevs/engraph/archive/refs/tags/v1.7.2.tar.gz"
  sha256 "f8689549ddeb5234afd25505a6fa73fdd05a49694495b7dbde12b433e58b8d91"
  license "MIT"

  depends_on "cmake" => :build
  depends_on "rust" => :build
  depends_on "openssl@3" => :build

  def install
    # llama.cpp vendored cpp-httplib does not compile against OpenSSL 4 (const X509_NAME).
    ENV["OPENSSL_ROOT_DIR"] = Formula["openssl@3"].opt_prefix
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match "engraph", shell_output("#{bin}/engraph --help")
  end
end
