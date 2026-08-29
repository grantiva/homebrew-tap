class Grantiva < Formula
  desc "The CLI for iOS developers — visual regression testing, feature flags, and more"
  homepage "https://grantiva.io"
  url "https://github.com/grantiva/cli/releases/download/v1.7.0/grantiva-v1.7.0-macos.tar.gz"
  sha256 "e4a280332234f3e3af52290b40a80f06fb8b7450fbd77363319b6785006b2f99"
  version "1.7.0"
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
