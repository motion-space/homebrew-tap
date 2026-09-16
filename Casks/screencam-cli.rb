cask "screencam-cli" do
  version "1.0.13"
  sha256 "a6df880eb5a28deb343bd525485a4221436b520e5837d957c74bdd01fd925fac"

  url "https://download.thescreen.cam/cli/releases/1.0.13/screencam-cli-1.0.13-macos-arm64.zip"
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
