class Ipcheck < Formula
  desc "Diagnose Codex and Claude Code network paths"
  homepage "https://github.com/jacklv-coder/ipcheck"
  url "https://github.com/jacklv-coder/ipcheck/releases/download/v0.7.0/ipcheck-0.7.0.tar.gz"
  sha256 "53baf45ce93bc577fedadafec847b566e1c0f3a5be08f851934c36e4d061ec52"
  license "MIT"

  def install
    bin.install "bin/ipcheck"
  end

  test do
    assert_match "ipcheck - diagnose", shell_output("#{bin}/ipcheck --help")
    assert_equal "ipcheck #{version}\n", shell_output("#{bin}/ipcheck --version")
  end
end
