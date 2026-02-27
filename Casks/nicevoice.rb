cask "nicevoice" do
  version "0.1.3"
  sha256 "d01276330671fde1173510004dd96c3bf2caa63bf3deab99e80bd4fb5586d037"

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
