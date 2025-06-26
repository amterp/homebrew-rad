class Rad < Formula
  desc "A lightweight, modern CLI tool & scripting language that's familiar, clean, and readable."
  homepage "https://github.com/amterp/rad"
  url "https://github.com/amterp/rad/archive/0.5.48.tar.gz"
  sha256 "4d0b6cb3fd31e9bf47fc712012e40c92f3bd3675f0d62040331c91519787ca76"

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args, "./main.go"
  end
end
