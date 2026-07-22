class Ipcheck < Formula
  desc "Diagnose Codex and Claude Code network paths"
  homepage "https://github.com/jacklv-coder/ipcheck"
  url "https://github.com/jacklv-coder/ipcheck/releases/download/v0.4.0/ipcheck-0.4.0.tar.gz"
  sha256 "603e8bb2daf13a3aaadd7df35e3efd2a6e1f2b6589e682bd8689fd8a77bd5972"
  license "Apache-2.0"

  def install
    bin.install "bin/ipcheck"
  end

  test do
    assert_match "ipcheck - diagnose", shell_output("#{bin}/ipcheck --help")
    assert_equal "ipcheck #{version}\n", shell_output("#{bin}/ipcheck --version")
  end
end
