class Grantiva < Formula
  desc "The CLI for iOS developers — visual regression testing, feature flags, and more"
  homepage "https://grantiva.io"
  url "https://github.com/grantiva/cli/releases/download/2.0.1/grantiva-2.0.1-macos.tar.gz"
  sha256 "d52b0bb0a44b3b526fc5629e629a9e55173559f3771b67f64d0b4c88e7d70ee5"
  version "2.0.1"
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
