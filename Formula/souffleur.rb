class Souffleur < Formula
  desc "CLI tool for audio recording and transcription"
  homepage "https://github.com/bog-dance/souffleur"
  version "1.7.4"

  on_arm do
    url "https://github.com/bog-dance/souffleur/releases/download/v1.7.4/souffleur-1.7.4.tar.gz"
    sha256 "071242a3540961d687cf5140ef1371b9c5d148b2cf0399da6cc79749ae2ba055"
  end

  def install
    bin.install "sofl"
    bin.install "souffleur_sofl.bundle"
    bin.install "swift-crypto_Crypto.bundle"
    bin.install "swift-transformers_Hub.bundle"
    bin.install "FluidAudio_FluidAudio.bundle"
  end

  # A running daemon keeps the old release until restarted; the new one refreshes its
  # stable copy on start. No-op when the service is not installed.
  def post_install
    quiet_system "/bin/launchctl", "kickstart", "-k", "gui/#{Process.uid}/com.souffleur.daemon"
  end

  test do
    system "#{bin}/sofl", "--version"
  end
end
