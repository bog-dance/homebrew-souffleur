class Souffleur < Formula
  desc "CLI tool for audio recording and transcription"
  homepage "https://github.com/bog-dance/souffleur"
  version "1.1.1"

  on_arm do
    url "https://github.com/bog-dance/souffleur/releases/download/v1.1.1/souffleur-1.1.1-arm64-apple-darwin.tar.gz"
    sha256 "1b3457e22e3fb6b3eb4381566e19ac6ef5de137aa627789425a413986295431e"
  end

  def install
    bin.install "sofl"
  end

  test do
    system "#{bin}/sofl", "--version"
  end
end
