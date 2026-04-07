class Souffleur < Formula
  desc "CLI tool for audio recording and transcription"
  homepage "https://github.com/bog-dance/souffleur"
  version "1.1.2"

  on_arm do
    url "https://github.com/bog-dance/souffleur/releases/download/v1.1.2/souffleur-1.1.2-arm64-apple-darwin.tar.gz"
    sha256 "0c6b61caf6b78b225779001feba21dc10f6c1ad00c27c9026cb224064b4e1c70"
  end

  def install
    bin.install "sofl"
  end

  test do
    system "#{bin}/sofl", "--version"
  end
end
