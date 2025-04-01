class Rad < Formula
  desc "CLI tool for JSON API query scripting using RSL (Rad Scripting Language)"
  homepage "https://github.com/amterp/rad"
  url "https://github.com/amterp/rad/archive/0.5.18.tar.gz"
  sha256 "c7ff01d3ab5d6c5ebe05600138232c41520a43c2a8e0dc693a420dd1f5009cff"
  
  depends_on "go" => :build
  
  def install
    system "go", "build", *std_go_args, "./main.go"
  end
end
