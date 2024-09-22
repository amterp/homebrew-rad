class Rad < Formula
  desc "CLI tool for JSON API query scripting using RSL (Rad Scripting Language)"
  homepage "https://github.com/amterp/rad"
  url "https://github.com/amterp/rad/archive/0.2.10.tar.gz"
  sha256 "a3ce848f7c86b6115c8da28deb42f59cea3e2fee92cc9c03e00fbe11640efac0"
  
  depends_on "go" => :build
  
  def install
    system "go", "build", *std_go_args, "./main.go"
  end
end
