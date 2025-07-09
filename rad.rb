class Rad < Formula
  desc "A lightweight, modern CLI tool & scripting language that's familiar, clean, and readable."
  homepage "https://github.com/amterp/rad"
  url "https://github.com/amterp/rad/archive/0.5.53.tar.gz"
  sha256 "eca5ceb741a0eb192bfa73fe0a6d7662bb9faf95a9719ea6dbc42a4e8341d08f"

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args, "./main.go"
  end
end
