class Rad < Formula
  desc "A lightweight, modern CLI tool & scripting language that's familiar, clean, and readable."
  homepage "https://github.com/amterp/rad"
  url "https://github.com/amterp/rad/archive/0.5.41.tar.gz"
  sha256 "cc93f751f00cb2fb98ef4613fdeb0411be1978c04f68218869dbc258fc6d07e3"

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args, "./main.go"
  end
end
