class Souffleur < Formula
  desc "CLI tool for audio recording and transcription"
  homepage "https://github.com/bog-dance/souffleur"
  version "1.6.0"

  on_arm do
    url "https://github.com/bog-dance/souffleur/releases/download/v1.6.0/souffleur-1.6.0.tar.gz"
    sha256 "42cebdfd1a2526dcaef4f20404c81c92a4100b1e1bc93b0d6d2d05c23c691525"
  end

  def install
    bin.install "sofl"
    bin.install "souffleur_sofl.bundle"
    bin.install "swift-crypto_Crypto.bundle"
    bin.install "swift-transformers_Hub.bundle"
    bin.install "FluidAudio_FluidAudio.bundle"
  end

  test do
    system "#{bin}/sofl", "--version"
  end
end
