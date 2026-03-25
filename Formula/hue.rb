class Hue < Formula
  desc "CLI to synchronise themes across Zed and Ghostty"
  homepage "https://github.com/howenyap/hue"
  license "MIT"
  version "0.1.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/howenyap/hue/releases/download/v0.1.0/hue-v0.1.0-aarch64-apple-darwin.tar.gz"
      sha256 "0789ec4abc2e43bca7d3d49db63465a00f8f347b8f7e4ff63024df0f8027cceb"
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
