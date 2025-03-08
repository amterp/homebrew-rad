class Rad < Formula
  desc "CLI tool for JSON API query scripting using RSL (Rad Scripting Language)"
  homepage "https://github.com/amterp/rad"
  url "https://github.com/amterp/rad/archive/0.5.11.tar.gz"
  sha256 "76518346a9bc504ccbf9e91e645e341cef0c6dda65fcb6f2dbb7fd836a6159b9"
  
  depends_on "go" => :build
  
  def install
    system "go", "build", *std_go_args, "./main.go"
  end
end
