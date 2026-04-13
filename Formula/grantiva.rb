class Grantiva < Formula
  desc "The CLI for iOS developers — visual regression testing, feature flags, and more"
  homepage "https://grantiva.io"
  url "https://github.com/grantiva/cli/releases/download/v0.8.9/grantiva-v0.8.9-macos.tar.gz"
  sha256 "0d88b2cf06c326736b481a013a9708d3d9b6d340ab1c811385731269ee78066b"
  version "v0.8.9"
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
