cask "cooviewer" do
  version "1.5.1"
  sha256 "18d5b36a9d1ca95df8de2fc24757ce0d93128053344d3cd59f2d3d40913a2b71"

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
