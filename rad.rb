class Rad < Formula
  desc "A modern CLI scripting language with built-in language server"
  homepage "https://github.com/amterp/rad"
  url "https://github.com/amterp/rad/archive/v0.9.0.tar.gz"
  sha256 "1c602c9d5a186529812b8187dcb23efdf07d1019aea2b9335420ac2c8e82a81c"

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args, "./main.go"
    system "go", "build", *std_go_args(output: bin/"radls"), "./lsp-server"
  end
end
