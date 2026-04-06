class Souffleur < Formula
  desc "CLI tool for audio recording and transcription"
  homepage "https://github.com/bog-dance/souffleur"
  version "1.0.1"

  on_arm do
    url "https://github.com/bog-dance/souffleur/releases/download/v1.0.1/souffleur-1.0.1-arm64-apple-darwin.tar.gz"
    sha256 "62b21693f460877c28d3fc5c3794a18646c09efcb62087dbc0c0d1f7bdd838a8"
  end

  def install
    bin.install "sofl"
  end

  test do
    system "#{bin}/sofl", "--version"
  end
end
