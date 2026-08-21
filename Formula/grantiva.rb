class Grantiva < Formula
  desc "The CLI for iOS developers — visual regression testing, feature flags, and more"
  homepage "https://grantiva.io"
  url "https://github.com/grantiva/cli/releases/download/v1.6.3/grantiva-v1.6.3-macos.tar.gz"
  sha256 "de287d3bcb2550c8ddca00ded64ced685fbdc9bb62bb24ec2b545fc0009043a5"
  version "v1.6.3"
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
