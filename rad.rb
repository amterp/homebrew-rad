class Rad < Formula
  desc "A modern CLI scripting language with built-in language server"
  homepage "https://github.com/amterp/rad"
  url "https://github.com/amterp/rad/archive/v0.8.0.tar.gz"
  sha256 "75dca31dbb0fb67ba6d6d27bf0073e0a59d3b9a78843fa034ed72c26799f2836"

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args, "./main.go"
    system "go", "build", *std_go_args(output: bin/"radls"), "./lsp-server"
  end
end
