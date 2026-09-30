cask "screencam-cli" do
  version "1.6.2"
  sha256 "d0f1375658270266a4ce50262744c9d03b44a91ae98958d79cab0db57fcee493"

  url "https://download.thescreen.cam/cli/releases/1.6.2/screencam-cli-1.6.2-macos-arm64.zip"
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
