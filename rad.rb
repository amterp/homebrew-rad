class Rad < Formula
  desc "CLI tool for JSON API query scripting using RSL (Rad Scripting Language)"
  homepage "https://github.com/amterp/rad"
  url "https://github.com/amterp/rad/archive/0.2.7.tar.gz"
  sha256 "2eca4c68d41ccc7c0cfd444feaa1b0caeafdd056016fb8d11293ce3777dbc21d"
  
  depends_on "go" => :build
  
  def install
    system "go", "build", *std_go_args, "./main.go"
  end
end
