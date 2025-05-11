class Rad < Formula
  desc "A lightweight, modern CLI tool & scripting language that's familiar, clean, and readable."
  homepage "https://github.com/amterp/rad"
  url "https://github.com/amterp/rad/archive/0.5.36.tar.gz"
  sha256 "96add7bc717a7b4b838e0e6a8b3ed222c581cd42cb7a32833705ccc56dae9be4"

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args, "./main.go"
  end
end
