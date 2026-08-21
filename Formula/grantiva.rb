class Grantiva < Formula
  desc "The CLI for iOS developers — visual regression testing, feature flags, and more"
  homepage "https://grantiva.io"
  url "https://github.com/grantiva/cli/releases/download/v1.6.4/grantiva-v1.6.4-macos.tar.gz"
  sha256 "7e6ccdf9c7a7417f6cd7356025bb3b3f3292d7519bf7bca0151ed4bdbdd0b2aa"
  version "v1.6.4"
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
