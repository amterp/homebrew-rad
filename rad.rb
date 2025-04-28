class Rad < Formula
  desc "CLI tool for JSON API query scripting using RSL (Rad Scripting Language)"
  homepage "https://github.com/amterp/rad"
  url "https://github.com/amterp/rad/archive/0.5.29.tar.gz"
  sha256 "b6955d4aa4e9d33a27ba1a941b5645bebf15a1ad047b3e6de45e94c92172417f"
  
  depends_on "go" => :build
  
  def install
    system "go", "build", *std_go_args, "./main.go"
  end
end
