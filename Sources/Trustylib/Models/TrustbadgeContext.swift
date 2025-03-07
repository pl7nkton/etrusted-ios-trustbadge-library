//
//  TrustbadgeContext.swift
//  Trustylib
//
//  Created by Prem Pratap Singh on 24/11/22.
//

import Foundation

/**
 TrustbadgeContext enumeration defines the context of the Trustbadge view.
 These context helps in setting the right UI appearance (shop grade, proudct grade, trustmark, etc)
 and underlying behavior for the Trustbadge view
 */
@objc public enum TrustbadgeContext: Int {
    case trustMark
    case shopGrade

    // MARK: Public properties

    /// Icon name for the context
    var iconImageName: String {
        switch self {
        case .trustMark: return "trustmarkIcon"
        case .shopGrade: return "shopGradeIcon"
        }
    }
}
