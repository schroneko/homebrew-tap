cask "nicevoice" do
  version "0.1.0"
  sha256 "063ec8236bfa0bebca13b1e1bd432a514e41766465be148b290d1e49a8922b35"

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
