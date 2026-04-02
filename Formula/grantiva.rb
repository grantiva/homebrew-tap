class Grantiva < Formula
  desc "The CLI for iOS developers — visual regression testing, feature flags, and more"
  homepage "https://grantiva.io"
  url "https://github.com/grantiva/cli/releases/download/v0.8.8/grantiva-v0.8.8-macos.tar.gz"
  sha256 "d15d708dea01542f3a7ac588b3f22b7f6a52752504517b335a2113f927bba37e"
  version "v0.8.8"
  license "MIT"

  depends_on :macos

  def install
    bin.install "grantiva"
  end

  test do
    assert_match "USAGE: grantiva", shell_output("#{bin}/grantiva --help 2>&1")
  end
end
