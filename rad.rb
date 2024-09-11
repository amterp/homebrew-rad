class Rad < Formula
  desc "CLI tool for JSON API query scripting using RSL (Rad Scripting Language)"
  homepage "https://github.com/AlexanderTerp/rad"
  url "https://github.com/AlexanderTerp/rad/archive/0.2.2.tar.gz"
  sha256 "d160427238f19b45d54feb0c97922b28f5c223c43e70481f1ae84f190ed067ea"
  
  depends_on "go" => :build
  
  def install
    system "go", "build", *std_go_args, "./main.go"
  end
end
