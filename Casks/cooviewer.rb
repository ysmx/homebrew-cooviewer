cask "cooviewer" do
  version "1.7.0"
  sha256 "aab7361bd1249973ec8e3cb3823f754a54709901b53493873a1673843c5750da"

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
