import Foundation
import PathKit
import PeripheryKit

public protocol XcodeProjectlike: AnyObject {
    var path: Path { get }
    var targets: Set<XcodeTarget> { get } // Set to ensure uniqueness
    var type: String { get }
    var name: String { get }
    var sourceRoot: Path { get }

    func schemes() throws -> Set<XcodeScheme> // Set to ensure uniqueness
}

public extension XcodeProjectlike {
    var name: String {
        return path.lastComponentWithoutExtension
    }
}
