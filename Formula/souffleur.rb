class Souffleur < Formula
  desc "CLI tool for audio recording and transcription"
  homepage "https://github.com/bog-dance/souffleur"
  version "1.4.0"

  on_arm do
    url "https://github.com/bog-dance/souffleur/releases/download/v1.4.0/souffleur-1.4.0.tar.gz"
    sha256 "b52c4b19dce982d525f00161aa95e0307fa301c1e92f85ced1941bfc267087b0"
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
