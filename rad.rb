class Rad < Formula
  desc "A modern CLI scripting language with built-in language server"
  homepage "https://github.com/amterp/rad"
  url "https://github.com/amterp/rad/archive/v0.6.26.tar.gz"
  sha256 "058e21f24faea3a6e3ec8d52db0ef84574d6cac9476ea4e980aec91acd80271e"

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args, "./main.go"
    system "go", "build", *std_go_args(output: bin/"radls"), "./lsp-server"
  end
end
