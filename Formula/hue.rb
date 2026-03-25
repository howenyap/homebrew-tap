class Hue < Formula
  desc "CLI to synchronise themes across Zed and Ghostty"
  homepage "https://github.com/howenyap/hue"
  license "MIT"
  version "0.2.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/howenyap/hue/releases/download/v0.2.1/hue-v0.2.1-aarch64-apple-darwin.tar.gz"
      sha256 "608bf57f589cb7f6654cc2e44445df60eca678ecedfa11fa669d4ee6a1c461ea"
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
