cask "vesktop" do
  version "1.5.0"
  sha256 on_arch_conditional arm: "16dba322c4f41e1d303293ef94a66654943918f61806225bfce2a2eadd978a1d",
    intel: "b76a61b50dfe0fde6f1900383972f510af0ed77e2b018d6cd7ba5f9a08c29374"

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
