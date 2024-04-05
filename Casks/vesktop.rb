cask "vesktop" do
  version "1.5.0"
  sha256 on_arch_conditional arm: "1d2383344eb0f6f8f5d8eb9d4a14ae116236d6d3bc8e0db5246d0c3dd39cc2da",
    intel: "0f401a11ec91b39fd433782f62a8fbe4047c17d996e4febc4fd20ca925d6f067"

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
