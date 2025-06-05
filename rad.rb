class Rad < Formula
  desc "A lightweight, modern CLI tool & scripting language that's familiar, clean, and readable."
  homepage "https://github.com/amterp/rad"
  url "https://github.com/amterp/rad/archive/0.5.42.tar.gz"
  sha256 "cc11db320547b7fd2925fc2d3a1a165d1fc0184048c22c6fd0be321aeefd3f99"

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args, "./main.go"
  end
end
