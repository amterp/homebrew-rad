class Rad < Formula
  desc "CLI tool for JSON API query scripting using RSL (Rad Scripting Language)"
  homepage "https://github.com/amterp/rad"
  url "https://github.com/amterp/rad/archive/0.4.6.tar.gz"
  sha256 "a7b7e6b572922dad95e512a3a1ce028d8a682d985659c23a6eb3d3c4fdf4cb5b"
  
  depends_on "go" => :build
  
  def install
    system "go", "build", *std_go_args, "./main.go"
  end
end
