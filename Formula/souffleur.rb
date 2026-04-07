class Souffleur < Formula
  desc "CLI tool for audio recording and transcription"
  homepage "https://github.com/bog-dance/souffleur"
  version "1.1.0"

  on_arm do
    url "https://github.com/bog-dance/souffleur/releases/download/v1.1.0/souffleur-1.1.0-arm64-apple-darwin.tar.gz"
    sha256 "8bb30df8052e7333b194c87644b082adaa393341ad8f5a1feed0b383d9b01150"
  end

  def install
    bin.install "sofl"
  end

  test do
    system "#{bin}/sofl", "--version"
  end
end
