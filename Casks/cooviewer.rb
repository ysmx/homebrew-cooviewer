cask "cooviewer" do
  version "1.5.2"
  sha256 "8b4cafbc5bf448dff39b240fcb83d845302d49cd2d8fc0b85771187c0dccfb72"

  url "https://github.com/ysmx/cooViewer/releases/download/v#{version}/cooViewer.zip"
  name "cooViewer"
  desc "macOS image viewer for comics/manga. macOS 10.14+ Universal binary. Supports ZIP, RAR, CBZ, CBR, 7Z, PDF, etc."
  homepage "https://github.com/ysmx/cooViewer"

  app "cooViewer.app"

  postflight do
    system_command "/usr/bin/xattr",
      args: ["-dr", "com.apple.quarantine", "#{appdir}/cooViewer.app"]
  end
end
