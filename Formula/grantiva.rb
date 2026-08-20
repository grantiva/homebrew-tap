class Grantiva < Formula
  desc "The CLI for iOS developers — visual regression testing, feature flags, and more"
  homepage "https://grantiva.io"
  url "https://github.com/grantiva/cli/releases/download/1.5.4/grantiva-1.5.4-macos.tar.gz"
  sha256 "adf71d9ff47ae9f8f1060533a7e687ec14122b053dc5f25c49f36c4a1ab83f1b"
  version "1.5.4"
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
