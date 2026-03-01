cask "nicevoice" do
  version "0.1.4"
  sha256 "7e2884166633477bbdd29f223df86bf4fbe883150d8ea10b52df30a44b3ea5cf"

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
