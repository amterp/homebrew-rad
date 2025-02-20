class Rad < Formula
  desc "CLI tool for JSON API query scripting using RSL (Rad Scripting Language)"
  homepage "https://github.com/amterp/rad"
  url "https://github.com/amterp/rad/archive/0.5.4.tar.gz"
  sha256 "83d175d88a50ea059556b603b0c85008e8ef2ed8f90710f17871ce77d22e0db9"
  
  depends_on "go" => :build
  
  def install
    system "go", "build", *std_go_args, "./main.go"
  end
end
