class Rad < Formula
  desc "A modern CLI tool & scripting language that's familiar, clean, and readable."
  homepage "https://github.com/amterp/rad"
  url "https://github.com/amterp/rad/archive/v0.6.4.tar.gz"
  sha256 "e1251de79efe5bd911a9bac7d9f5c1b081e03440cf5eee76b523c208f9a6e5de"

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args, "./main.go"
  end
end
