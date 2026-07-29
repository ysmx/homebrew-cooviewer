cask "cooviewer" do
  version "1.5.3"
  sha256 "e53c2451e39f219a6d26a19ef88e12a7f1d2d911b6f23f7e21106ec5eb10bd7e"

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
