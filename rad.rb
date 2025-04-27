class Rad < Formula
  desc "CLI tool for JSON API query scripting using RSL (Rad Scripting Language)"
  homepage "https://github.com/amterp/rad"
  url "https://github.com/amterp/rad/archive/0.5.28.tar.gz"
  sha256 "9ad6e2bb10d46ddf1909e83c2d495b2db61ed810825444e5f99fbcccc36fc58e"
  
  depends_on "go" => :build
  
  def install
    system "go", "build", *std_go_args, "./main.go"
  end
end
