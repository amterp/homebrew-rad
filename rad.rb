class Rad < Formula
  desc "A modern CLI scripting language with built-in language server"
  homepage "https://github.com/amterp/rad"
  url "https://github.com/amterp/rad/archive/v0.7.1.tar.gz"
  sha256 "cbc2abbef78d68e72024c136474e0463395c4ae51201999be76097226c3e0fbf"

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args, "./main.go"
    system "go", "build", *std_go_args(output: bin/"radls"), "./lsp-server"
  end
end
