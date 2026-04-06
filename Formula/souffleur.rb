class Souffleur < Formula
  desc "CLI tool for audio recording and transcription"
  homepage "https://github.com/bog-dance/souffleur"
  version "1.0.0"

  on_arm do
    url "https://github.com/bog-dance/souffleur/releases/download/v1.0.0/souffleur-1.0.0-arm64-apple-darwin.tar.gz"
    sha256 "d40d95074098f8d48745731f8d091e9a1a8179ed05d838e924e0f571368a11c0"
  end

  def install
    bin.install "sofl"
  end

  test do
    system "#{bin}/sofl", "--version"
  end
end
