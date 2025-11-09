class Rad < Formula
  desc "A modern CLI tool & scripting language that's familiar, clean, and readable."
  homepage "https://github.com/amterp/rad"
  url "https://github.com/amterp/rad/archive/v0.6.15.tar.gz"
  sha256 "943cc311906bc27d329397ee76d8b8bcd47305c179cb5b7b8925671e13cafb2c"

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args, "./main.go"
  end
end
