class Souffleur < Formula
  desc "CLI tool for audio recording and transcription"
  homepage "https://github.com/bog-dance/souffleur"
  version "1.2.0"

  on_arm do
    url "https://github.com/bog-dance/souffleur/releases/download/v1.2.0/souffleur-1.2.0.tar.gz"
    sha256 "cd769d912ef9ad130748dddb5221156d1b79695d86d5ee0298eacb678128f551"
  end

  def install
    bin.install "sofl"
  end

  test do
    system "#{bin}/sofl", "--version"
  end
end
