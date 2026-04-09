class Souffleur < Formula
  desc "CLI tool for audio recording and transcription"
  homepage "https://github.com/bog-dance/souffleur"
  version "1.3.0"

  on_arm do
    url "https://github.com/bog-dance/souffleur/releases/download/v1.3.0/souffleur-1.3.0.tar.gz"
    sha256 "94ddeddd8d2d3e4cc9c0ed2d09df759f06ef21651cf760142ec361e1078cbee8"
  end

  def install
    bin.install "sofl"
  end

  test do
    system "#{bin}/sofl", "--version"
  end
end
