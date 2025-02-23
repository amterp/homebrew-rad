class Rad < Formula
  desc "CLI tool for JSON API query scripting using RSL (Rad Scripting Language)"
  homepage "https://github.com/amterp/rad"
  url "https://github.com/amterp/rad/archive/0.5.6.tar.gz"
  sha256 "6aebf3c388ca3f511c1e648f12ad18ee94c8bb6a4ce99854cfa9be63f8117e25"
  
  depends_on "go" => :build
  
  def install
    system "go", "build", *std_go_args, "./main.go"
  end
end
