class Rad < Formula
  desc "A modern CLI tool & scripting language that's familiar, clean, and readable."
  homepage "https://github.com/amterp/rad"
  url "https://github.com/amterp/rad/archive/v0.6.8.tar.gz"
  sha256 "07dad201ff02db8dcec23f7c123ba263185ea0f8ec3e93ccc20e05226cef1d4a"

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args, "./main.go"
  end
end
