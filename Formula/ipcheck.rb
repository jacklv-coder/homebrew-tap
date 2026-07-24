class Ipcheck < Formula
  desc "Diagnose Codex and Claude Code network paths"
  homepage "https://github.com/jacklv-coder/ipcheck"
  url "https://github.com/jacklv-coder/ipcheck/releases/download/v0.10.0/ipcheck-0.10.0.tar.gz"
  sha256 "ca1c322490ffa2e16c4b2999d3921be183dc6614002694fb1f3e802848deedaf"
  license "MIT"

  def install
    bin.install "bin/ipcheck"
  end

  test do
    assert_match "ipcheck - diagnose", shell_output("#{bin}/ipcheck --help")
    assert_equal "ipcheck #{version}\n", shell_output("#{bin}/ipcheck --version")
  end
end
