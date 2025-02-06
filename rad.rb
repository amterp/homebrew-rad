class Rad < Formula
  desc "CLI tool for JSON API query scripting using RSL (Rad Scripting Language)"
  homepage "https://github.com/amterp/rad"
  url "https://github.com/amterp/rad/archive/0.4.35.tar.gz"
  sha256 "bbee2af9e7ceed7d54fe9c23a51b168c2765e1a21c8379f20d9f1a308fd83ffd"
  
  depends_on "go" => :build
  
  def install
    system "go", "build", *std_go_args, "./main.go"
  end
end
