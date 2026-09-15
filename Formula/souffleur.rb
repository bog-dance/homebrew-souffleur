class Souffleur < Formula
  desc "CLI tool for audio recording and transcription"
  homepage "https://github.com/bog-dance/souffleur"
  version "1.5.1"

  on_arm do
    url "https://github.com/bog-dance/souffleur/releases/download/v1.5.1/souffleur-1.5.1.tar.gz"
    sha256 "05cd928e6291ce852918bc17ccf331bbb0e19244cd1b1e89949ab1f8b0e0a8fe"
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
