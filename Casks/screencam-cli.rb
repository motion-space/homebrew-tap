cask "screencam-cli" do
  version "1.0.21"
  sha256 "065807b394ee9fe92d6390a34c5b6f917860ae7a4600a9c14966a2207acddecf"

  url "https://download.thescreen.cam/cli/releases/1.0.21/screencam-cli-1.0.21-macos-arm64.zip"
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
