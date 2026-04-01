class Grantiva < Formula
  desc "The CLI for iOS developers — visual regression testing, feature flags, and more"
  homepage "https://grantiva.io"
  url "https://github.com/grantiva/cli/releases/download/0.8.4/grantiva-0.8.4-macos.tar.gz"
  sha256 "61e96a0aa35aee9586fad1d75380652248da4682872ecfa60202596213980828"
  version "0.8.4"
  license "MIT"

  depends_on :macos

  def install
    bin.install "grantiva"
  end

  test do
    assert_match "USAGE: grantiva", shell_output("#{bin}/grantiva --help 2>&1")
  end
end
