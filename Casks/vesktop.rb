cask "vesktop" do
  version "0.4.4"
  sha256 on_arch_conditional arm: "4665fa89ca9ab3aaad2d216697d6a513b01247bf3159e1aec73cd9bd9c873644",
    intel: "64f9b28e4bb6509f6b930cad89be4eb66910fec653291316599b075d52b35860"

  url on_arch_conditional arm: "https://github.com/Vencord/Vesktop/releases/download/v#{version}/Vesktop-#{version}-arm64.dmg",
    intel: "https://github.com/Vencord/Vesktop/releases/download/v#{version}/Vesktop-#{version}.dmg"

  name "Vesktop"
  desc "Vesktop gives you the performance of web Discord and the comfort of Discord Desktop"
  homepage "https://github.com/Vencord/Vesktop"

  app "Vesktop.app"

  livecheck do
    url "https://github.com/Vencord/Vesktop.git"
    regex(/^v?(\d+(?:\.\d+)+)$/i)
  end

  caveats <<~EOS
    To take Vesktop out of quarantine and run it, execute the following command:
      xattr -d com.apple.quarantine /Applications/Vesktop.app
  EOS
end