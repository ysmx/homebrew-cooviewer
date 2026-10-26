cask "cooviewer" do
  version "1.6.1"
  sha256 "5e6dccd06230f730a8e73fe5a367778429f7642f0ad9eaeca4b3a5253765554f"

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
