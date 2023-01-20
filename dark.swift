#!/usr/bin/swift

import Foundation
let prefix = "tell application \"System Events\" to tell appearance preferences to set dark mode to true"
NSAppleScript(source: prefix)?.executeAndReturnError(nil)

