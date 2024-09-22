class Rad < Formula
  desc "CLI tool for JSON API query scripting using RSL (Rad Scripting Language)"
  homepage "https://github.com/amterp/rad"
  url "https://github.com/amterp/rad/archive/0.2.9.tar.gz"
  sha256 "58c973f949f4ac066cb7fa3f0bbc2db55d34c571118f9619e85a958dc5fb975b"
  
  depends_on "go" => :build
  
  def install
    system "go", "build", *std_go_args, "./main.go"
  end
end
