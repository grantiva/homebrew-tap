class Grantiva < Formula
  desc "The CLI for iOS developers — visual regression testing, feature flags, and more"
  homepage "https://grantiva.io"
  url "https://github.com/grantiva/cli/releases/download/v1.6.0/grantiva-v1.6.0-macos.tar.gz"
  sha256 "437323d5bb76512bc07d14f1e9bd70349eef47842e7a45c3fe117ac247875169"
  version "v1.6.0"
  license "MIT"

  depends_on :macos

  def install
    libexec.install "grantiva", "grantiva_GrantivaCore.bundle"
    bin.install_symlink libexec/"grantiva"
  end

  test do
    assert_match "USAGE: grantiva", shell_output("#{bin}/grantiva --help 2>&1")
  end
end
