class Grantiva < Formula
  desc "The CLI for iOS developers — visual regression testing, feature flags, and more"
  homepage "https://grantiva.io"
  url "https://github.com/grantiva/cli/releases/download/v0.8.7/grantiva-v0.8.7-macos.tar.gz"
  sha256 "fb3f774478b4436b2466312189bfa624ce5b6a0450b67feb7935ac85de83fd8e"
  version "v0.8.7"
  license "MIT"

  depends_on :macos

  def install
    bin.install "grantiva"
  end

  test do
    assert_match "USAGE: grantiva", shell_output("#{bin}/grantiva --help 2>&1")
  end
end
