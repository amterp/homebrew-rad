class Rad < Formula
  desc "A lightweight, modern CLI tool & scripting language that's familiar, clean, and readable."
  homepage "https://github.com/amterp/rad"
  url "https://github.com/amterp/rad/archive/0.5.43.tar.gz"
  sha256 "5c1277b75a362f5d7ea172c40513e0f74f2396d89692efe4de11c81b7c1ae8c4"

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args, "./main.go"
  end
end
