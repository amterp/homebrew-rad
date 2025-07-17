class Rad < Formula
  desc "A lightweight, modern CLI tool & scripting language that's familiar, clean, and readable."
  homepage "https://github.com/amterp/rad"
  url "https://github.com/amterp/rad/archive/0.5.54.tar.gz"
  sha256 "fd6f4443f7e629dae2309f3d2e627fcc3a495ac242d74a8febfa01b3048b52bc"

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args, "./main.go"
  end
end
