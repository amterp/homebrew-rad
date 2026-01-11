class Rad < Formula
  desc "A modern CLI scripting language with built-in language server"
  homepage "https://github.com/amterp/rad"
  url "https://github.com/amterp/rad/archive/v0.6.27.tar.gz"
  sha256 "1731f3e7026c1a39baf0c0c0c0ee6f2ea513ac1b6e0b1b3cc228ced8edf089d4"

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args, "./main.go"
    system "go", "build", *std_go_args(output: bin/"radls"), "./lsp-server"
  end
end
