class Grantiva < Formula
  desc "The CLI for iOS developers — visual regression testing, feature flags, and more"
  homepage "https://grantiva.io"
  url "https://github.com/grantiva/cli/releases/download/0.7.3/grantiva-0.7.3-macos.tar.gz"
  sha256 "39303eb14b2faa5af205ef7437494dcc6b146fc71a0994b9b8c0069dff384ea6"
  version "0.7.3"
  license "MIT"

  depends_on :macos

  def install
    bin.install "grantiva"
  end

  test do
    assert_match "USAGE: grantiva", shell_output("#{bin}/grantiva --help 2>&1")
  end
end
