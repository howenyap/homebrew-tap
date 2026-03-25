class Hue < Formula
  desc "CLI to synchronise themes across Zed and Ghostty"
  homepage "https://github.com/howenyap/hue"
  license "MIT"
  version "0.3.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/howenyap/hue/releases/download/v0.3.0/hue-v0.3.0-aarch64-apple-darwin.tar.gz"
      sha256 "70737565115b4ae9bf1c491604e2a0b297088f696293d5c39090e681ccbf0973"
    end
  end

  def install
    bin.install "hue"
    doc.install "README.md"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/hue --version")
  end
end
