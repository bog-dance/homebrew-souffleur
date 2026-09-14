class Souffleur < Formula
  desc "CLI tool for audio recording and transcription"
  homepage "https://github.com/bog-dance/souffleur"
  version "1.4.0"

  on_arm do
    url "https://github.com/bog-dance/souffleur/releases/download/v1.4.0/souffleur-1.4.0.tar.gz"
    sha256 "3fbf03e1a7fb1d0ba1081813127bf05300d9faaa0af275f0cb77593e4323fc6b"
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
