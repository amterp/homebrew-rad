class Rad < Formula
  desc "A modern CLI tool & scripting language that's familiar, clean, and readable."
  homepage "https://github.com/amterp/rad"
  url "https://github.com/amterp/rad/archive/v0.6.3.tar.gz"
  sha256 "a956707501732784633499908242f002e8c7840717b0bf0e7646d28e5d015903"

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args, "./main.go"
  end
end
