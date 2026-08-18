class Rad < Formula
  desc "Modern CLI scripts made easy"
  homepage "https://amterp.dev/rad/"
  url "https://github.com/amterp/rad/archive/refs/tags/v0.12.0.tar.gz"
  sha256 "110639963f0a42c0a3cb2be873c54ded32676be5f828c3f7c9bda3503e995c24"
  license "Apache-2.0"
  head "https://github.com/amterp/rad.git", branch: "main"

  depends_on "go" => :build

  def install
    ENV["CGO_ENABLED"] = "1" if OS.linux? && Hardware::CPU.arm?
    system "go", "build", *std_go_args(ldflags: "-s -w")
    system "go", "build", *std_go_args(ldflags: "-s -w", output: bin/"radls"), "./radls"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/rad --version")
    (testpath/"test").write <<~SHELL
      #!/usr/bin/env rad
      args:
        times int = 1
      for _ in range(times):
        print("Hello, Homebrew!")
    SHELL
    chmod "+x", testpath/"test"
    assert_match "Hello, Homebrew!\nHello, Homebrew!", shell_output("#{testpath}/test 2")
    assert_match "Spinning up Rad LSP server", shell_output("#{bin}/radls 2>&1", 1)
  end
end
