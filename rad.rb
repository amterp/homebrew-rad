class Rad < Formula
  desc "CLI tool for JSON API query scripting using RSL (Rad Scripting Language)"
  homepage "https://github.com/amterp/rad"
  url "https://github.com/amterp/rad/archive/0.5.14.tar.gz"
  sha256 "596272d979b6131a59be65a7872ce9c98816c5382f76e5a64d44c78d54d93a41"
  
  depends_on "go" => :build
  
  def install
    system "go", "build", *std_go_args, "./main.go"
  end
end
