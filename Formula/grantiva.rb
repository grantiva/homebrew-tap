class Grantiva < Formula
  desc "The CLI for iOS developers — visual regression testing, feature flags, and more"
  homepage "https://grantiva.io"
  url "https://github.com/grantiva/cli/releases/download/0.7.0/grantiva-0.7.0-macos.tar.gz"
  sha256 "bbb2125c978eea6bea3071177a45020bb256e5699886b3db6e67ca9d55b920aa"
  version "0.7.0"
  license "MIT"

  depends_on :macos

  def install
    bin.install "grantiva"
  end

  test do
    assert_match "USAGE: grantiva", shell_output("#{bin}/grantiva --help 2>&1")
  end
end
