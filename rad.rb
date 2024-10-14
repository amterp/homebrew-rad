class Rad < Formula
  desc "CLI tool for JSON API query scripting using RSL (Rad Scripting Language)"
  homepage "https://github.com/amterp/rad"
  url "https://github.com/amterp/rad/archive/0.3.10.tar.gz"
  sha256 "b20ca260e7e21abf7ba59d657d8b574b4d4acfa0c2d9681e795b5de11534a9a2"
  
  depends_on "go" => :build
  
  def install
    system "go", "build", *std_go_args, "./main.go"
  end
end
