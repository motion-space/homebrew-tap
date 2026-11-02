cask "screencam-cli" do
  version "1.25.0"
  sha256 "debe71006dfeba39476fe3e8abb937592377bb062834c20b76b90c08c4faf556"

  url "https://download.thescreen.cam/cli/releases/1.25.0/screencam-cli-1.25.0-macos-arm64.zip"
  name "ScreenCam CLI"
  desc "Native command-line client for ScreenCam recording and processing"
  homepage "https://thescreen.cam"

  depends_on arch: :arm64
  depends_on macos: ">= :sequoia"

  binary "ScreenCamCLI.app/Contents/MacOS/screencam"

  caveats <<~EOS
    ScreenCam CLI requires the compatible ScreenCam app from the Mac App Store.
    Recording, processing, permissions, and Pro entitlement remain App-owned.
  EOS
end
