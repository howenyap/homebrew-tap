class Puddle < Formula
  desc "CLI for Raindrop.io"
  homepage "https://github.com/howenyap/puddle"
  license "MIT"
  version "0.1.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/howenyap/puddle/releases/download/v0.1.0/puddle-v0.1.0-aarch64-apple-darwin.tar.gz"
      sha256 "sha256:0fe35a719b1f4805f444365207f82a3fc45435d96f339fb3eac9e3b7eb298618"
    end
  end

  def install
    bin.install "puddle"
    doc.install "README.md"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/puddle --version")
  end
end

