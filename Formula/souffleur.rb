class Souffleur < Formula
  desc "CLI tool for audio recording and transcription"
  homepage "https://github.com/bog-dance/souffleur"
  version "1.3.2"

  on_arm do
    url "https://github.com/bog-dance/souffleur/releases/download/v1.3.2/souffleur-1.3.2.tar.gz"
    sha256 "7774565a1fda4b77a1b49fcb44cd2270eab59948120f955280cd8d791258a5ef"
  end

  def install
    bin.install "sofl"
    bin.install "souffleur_sofl.bundle"
    bin.install "swift-crypto_Crypto.bundle"
    bin.install "swift-transformers_Hub.bundle"
  end

  test do
    system "#{bin}/sofl", "--version"
  end
end
