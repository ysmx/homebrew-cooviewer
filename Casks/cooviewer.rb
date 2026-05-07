cask "cooviewer" do
  version "1.4.1"
  sha256 "980e014a156f88d5fcbfaea04ae583d7ad77a73718561124a08e024b2e7de776"

  url "https://github.com/ysmx/cooViewer/releases/download/v#{version}/cooViewer.zip"
  name "cooViewer"
  desc "macOS向け画像ビューア（漫画・ZIP/RAR対応）"
  homepage "https://github.com/ysmx/cooViewer"

  app "cooViewer.app"

  postflight do
    system_command "/usr/bin/xattr",
      args: ["-dr", "com.apple.quarantine", "#{appdir}/cooViewer.app"]
  end
end
