cask "cooviewer" do
  version "1.4.3"
  sha256 "d496615efca79dd669620a24c86902727a580963c9735043d8878a70e148a133"

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
