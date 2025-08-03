class Rad < Formula
  desc "A modern CLI tool & scripting language that's familiar, clean, and readable."
  homepage "https://github.com/amterp/rad"
  url "https://github.com/amterp/rad/archive/v0.5.57.tar.gz"
  sha256 "25e78d6ff1389cb19a9ad5674e8748a3d14e93d55cf4fc8c303ace29576f441f"

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args, "./main.go"
  end
end
