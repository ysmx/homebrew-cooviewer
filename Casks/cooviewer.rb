cask "cooviewer" do
  version "1.6.0"
  sha256 "5d8c15d5f00ac41197670434704097778f8b27990c21b0f18963ec34277f74c4"

  url "https://github.com/ysmx/cooViewer/releases/download/v#{version}/cooViewer.zip"
  name "cooViewer"
  desc "macOS image viewer for comics/manga. macOS 10.14+ Universal binary. Supports ZIP, RAR, CBZ, CBR, 7Z, PDF, etc."
  homepage "https://github.com/ysmx/cooViewer"

  app "cooViewer.app"

  postflight_steps do
    run "/usr/bin/xattr",
        args: ["-dr", "com.apple.quarantine", "{{appdir}}/cooViewer.app"]
  end
end
