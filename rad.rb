class Rad < Formula
  desc "A lightweight, modern CLI tool & scripting language that's familiar, clean, and readable."
  homepage "https://github.com/amterp/rad"
  url "https://github.com/amterp/rad/archive/0.5.45.tar.gz"
  sha256 "08fe078735e3cac1e9f35fb48dd93e0614eeee84273de03ec92e4564e5a7dd42"

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args, "./main.go"
  end
end
