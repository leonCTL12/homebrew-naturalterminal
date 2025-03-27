class Naturalterminal < Formula
  desc "A natural language terminal tool"
  homepage "https://github.com/leonCTL12/homebrew-naturalterminal"
  url "https://github.com/leonCTL12/NaturalTerminal/releases/download/v1.0.0/NaturalTerminal-macos-v1.0.0.tar.gz"
  sha256 "af4c979d53e2de56b0de37d22090a80d230dceb3a8648ce31a5149fc99691672"
  version "1.0.0"

  def install
    bin.install "NaturalTerminal"          # Install binary to /opt/homebrew/bin/
    prefix.install "setup-alias.sh"        # Install script directly to prefix root
    (prefix/"setup-alias.sh").chmod 0755  # Make the script executable
  end

  def caveats
    <<~EOS
      To set up an alias 'n' for 'NaturalTerminal natural', run:
        sh #{prefix}/setup-alias.sh
    EOS
  end

  test do
    system "#{bin}/NaturalTerminal", "--version"
  end
end