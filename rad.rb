class Rad < Formula
  desc "CLI tool for JSON API query scripting using RSL (Rad Scripting Language)"
  homepage "https://github.com/amterp/rad"
  url "https://github.com/amterp/rad/archive/0.5.2.tar.gz"
  sha256 "a605ef4bfe6899f08b640ec728b17d556e4bab242ff2fe3a0bf5dad166e38bd4"
  
  depends_on "go" => :build
  
  def install
    system "go", "build", *std_go_args, "./main.go"
  end
end
