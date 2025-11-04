class Rad < Formula
  desc "A modern CLI tool & scripting language that's familiar, clean, and readable."
  homepage "https://github.com/amterp/rad"
  url "https://github.com/amterp/rad/archive/v0.6.14.tar.gz"
  sha256 "ef91278fefe948121f2c68d212c96a505167d06e54d8054cb142cdaeba64dfca"

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args, "./main.go"
  end
end
