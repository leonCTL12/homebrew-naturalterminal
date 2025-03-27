class Naturalterminal < Formula
  desc "A natural language terminal tool"
  homepage "https://github.com/leonCTL12/homebrew-naturalterminal"
  url "https://github.com/leonCTL12/NaturalTerminal/releases/download/v1.0.0/NaturalTerminal-macos-v1.0.0.tar.gz"
  sha256 "ab502bc9212b9360b57bb5d73413c91a68651112e91b3ce3a6f8263c0a5f4982"
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