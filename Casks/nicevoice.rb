cask "nicevoice" do
  version "0.1.2"
  sha256 "18dbbe05f556ecc4d50d89fce593b29cef91a1dac88277dc407dec38b104c649"

  url "https://github.com/schroneko/homebrew-tap/releases/download/v#{version}/NiceVoice-#{version}.zip"
  name "NiceVoice"
  desc "Voice input app for macOS"
  homepage "https://github.com/schroneko/nicevoice-app"

  depends_on formula: "uv"

  app "NiceVoice.app"

  zap trash: [
    "~/Library/Logs/NiceVoice",
  ]
end
