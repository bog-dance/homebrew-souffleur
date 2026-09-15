class Souffleur < Formula
  desc "CLI tool for audio recording and transcription"
  homepage "https://github.com/bog-dance/souffleur"
  version "1.5.0"

  on_arm do
    url "https://github.com/bog-dance/souffleur/releases/download/v1.5.0/souffleur-1.5.0.tar.gz"
    sha256 "ec1ffadacaccb9c137004095b3d6c0baf6176b96b4bc3df9b62c4ac83a491f8b"
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
