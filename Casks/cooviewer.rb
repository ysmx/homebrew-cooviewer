cask "cooviewer" do
  version "1.5.0"
  sha256 "eb67d15340cbd5be8eb81c090823bbd6a36005d4ebc940b46dedcac269efc66f"

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
