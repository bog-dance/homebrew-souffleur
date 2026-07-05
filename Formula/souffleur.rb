class Souffleur < Formula
  desc "CLI tool for audio recording and transcription"
  homepage "https://github.com/bog-dance/souffleur"
  version "1.3.1"

  on_arm do
    url "https://github.com/bog-dance/souffleur/releases/download/v1.3.1/souffleur-1.3.1.tar.gz"
    sha256 "d3b41f196f2fdeadb612e3cebcffbf716c131a94efed40f49923a3aac26a063d"
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
