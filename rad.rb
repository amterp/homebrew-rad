class Rad < Formula
  desc "A modern CLI tool & scripting language that's familiar, clean, and readable."
  homepage "https://github.com/amterp/rad"
  url "https://github.com/amterp/rad/archive/v0.6.7.tar.gz"
  sha256 "558ea7e7adac08a88a5e11a149e307bff12603370c8c4bad7d3972e992d226be"

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args, "./main.go"
  end
end
