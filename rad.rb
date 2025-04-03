class Rad < Formula
  desc "CLI tool for JSON API query scripting using RSL (Rad Scripting Language)"
  homepage "https://github.com/amterp/rad"
  url "https://github.com/amterp/rad/archive/0.5.20.tar.gz"
  sha256 "1e4c68a0d10610ae82d2e79a36117123e1d9aacb9eadb2095cb1fddfd909f3be"
  
  depends_on "go" => :build
  
  def install
    system "go", "build", *std_go_args, "./main.go"
  end
end
