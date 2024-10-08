class Rad < Formula
  desc "CLI tool for JSON API query scripting using RSL (Rad Scripting Language)"
  homepage "https://github.com/amterp/rad"
  url "https://github.com/amterp/rad/archive/0.3.6.tar.gz"
  sha256 "cfd085d2c2fc682e3c04a8006e3700861c24a99ce194f1fe4b3a3f0420c3868c"
  
  depends_on "go" => :build
  
  def install
    system "go", "build", *std_go_args, "./main.go"
  end
end
