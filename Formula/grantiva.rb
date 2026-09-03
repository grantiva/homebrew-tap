class Grantiva < Formula
  desc "The CLI for iOS developers — visual regression testing, feature flags, and more"
  homepage "https://grantiva.io"
  url "https://github.com/grantiva/cli/releases/download/v2.0.0/grantiva-v2.0.0-macos.tar.gz"
  sha256 "10bc32bea634d53a4c9eef4e30bb34e4f6e30d0f90b5749cde09dfcef45ef2fd"
  version "2.0.0"
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
