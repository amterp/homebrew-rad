class Rad < Formula
  desc "CLI tool for JSON API query scripting using RSL (Rad Scripting Language)"
  homepage "https://github.com/amterp/rad"
  url "https://github.com/amterp/rad/archive/0.3.8.tar.gz"
  sha256 "d48c2a39f044b5bdb931b8adf65c34a8a37030bc1b6f957e41c9504c8ff92f54"
  
  depends_on "go" => :build
  
  def install
    system "go", "build", *std_go_args, "./main.go"
  end
end
