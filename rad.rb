class Rad < Formula
  desc "A lightweight, modern CLI tool & scripting language that's familiar, clean, and readable."
  homepage "https://github.com/amterp/rad"
  url "https://github.com/amterp/rad/archive/0.5.31.tar.gz"
  sha256 "cd1cb2459a7dc63e2e366d425b3f942e5fb95c8ad5a5f2424f38797f25e78ba6"

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args, "./main.go"
  end
end
