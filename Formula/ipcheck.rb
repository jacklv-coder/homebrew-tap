class Ipcheck < Formula
  desc "Diagnose Codex and Claude Code network paths"
  homepage "https://github.com/jacklv-coder/ipcheck"
  url "https://github.com/jacklv-coder/ipcheck/releases/download/v0.3.0/ipcheck-0.3.0.tar.gz"
  sha256 "a077b2575f6c7c45f00f0ac61e3b6c860aa57ce74f493dff6d94b4de1ce9a826"
  license "Apache-2.0"

  def install
    bin.install "bin/ipcheck"
  end

  test do
    assert_match "ipcheck - diagnose", shell_output("#{bin}/ipcheck --help")
    assert_equal "ipcheck #{version}\n", shell_output("#{bin}/ipcheck --version")
  end
end
