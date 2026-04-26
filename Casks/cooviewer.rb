cask "cooviewer" do
  version "1.3.9"
  sha256 "cdde4e639917ba0cfd078469d31678e6cf12c441598dfd055088c083c828c181"

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
