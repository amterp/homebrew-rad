class Rad < Formula
  desc "CLI tool for JSON API query scripting using RSL (Rad Scripting Language)"
  homepage "https://github.com/amterp/rad"
  url "https://github.com/amterp/rad/archive/0.4.33.tar.gz"
  sha256 "8b412dfe4e0f568a92d06936f68c8b00f7e30c378b86a3eccd73eaa59e516b86"
  
  depends_on "go" => :build
  
  def install
    system "go", "build", *std_go_args, "./main.go"
  end
end
