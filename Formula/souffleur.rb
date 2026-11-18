class Souffleur < Formula
  desc "CLI tool for audio recording and transcription"
  homepage "https://github.com/bog-dance/souffleur"
  version "1.7.0"

  on_arm do
    url "https://github.com/bog-dance/souffleur/releases/download/v1.7.0/souffleur-1.7.0.tar.gz"
    sha256 "b5f46b7e485d48625e4207532993b48b22c5f6d88e9ae550a4d93240196b38c1"
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
