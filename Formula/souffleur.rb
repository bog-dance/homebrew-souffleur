class Souffleur < Formula
  desc "CLI tool for audio recording and transcription"
  homepage "https://github.com/bog-dance/souffleur"
  version "1.3.0"

  on_arm do
    url "https://github.com/bog-dance/souffleur/releases/download/v1.3.0/souffleur-1.3.0.tar.gz"
    sha256 "a4c623911f4782c971be1cdfa24d71420151c27353b5e9dbe3ca09af1bde94c0"
  end

  def install
    bin.install "sofl"
  end

  test do
    system "#{bin}/sofl", "--version"
  end
end
