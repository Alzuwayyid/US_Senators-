//
//  CodableObjects.swift
//  US_Senators
//
//  Created by Mohammed on 14/01/2021.
//

import UIKit

// MARK: - SenatorsResponse
struct SenatorsResponse: Codable {
    let meta: Meta
    let objects: [Object]
}

// MARK: - Meta
struct Meta: Codable {
    let limit, offset, totalCount: Int

    enum CodingKeys: String, CodingKey {
        case limit, offset
        case totalCount = "total_count"
    }
}

// MARK: - Object
struct Object: Codable {
    let congressNumbers: [Int]
    let current: Bool
    let objectDescription: String
    let enddate: String
    let extra: Extra
    let leadershipTitle: String?
    let party: String
    let person: Person
    let phone: String
    let roleType: RoleType
    let roleTypeLabel: RoleTypeLabel
    let senatorClass: SenatorClass
    let senatorClassLabel: SenatorClassLabel
    let senatorRank: SenatorRank
    let senatorRankLabel: SenatorRankLabel
    let startdate, state: String
    let title: String
    let titleLong: String
    let website: String

    enum CodingKeys: String, CodingKey {
        case congressNumbers = "congress_numbers"
        case current
        case objectDescription = "description"
        case enddate, extra
        case leadershipTitle = "leadership_title"
        case party, person, phone
        case roleType = "role_type"
        case roleTypeLabel = "role_type_label"
        case senatorClass = "senator_class"
        case senatorClassLabel = "senator_class_label"
        case senatorRank = "senator_rank"
        case senatorRankLabel = "senator_rank_label"
        case startdate, state, title
        case titleLong = "title_long"
        case website
    }
}

// MARK: - Extra
struct Extra: Codable {
    let address: String
    let contactForm: String
    let fax: String?
    let office: String
    let rssURL: String?
    let endType, how: String?

    enum CodingKeys: String, CodingKey {
        case address
        case contactForm = "contact_form"
        case fax, office
        case rssURL = "rss_url"
        case endType = "end-type"
        case how
    }
}

// MARK: - Person
struct Person: Codable {
    let bioguideid, birthday: String
    let cspanid: Int?
    let firstname: String
    let gender: String
    let genderLabel: GenderLabel
    let lastname: String
    let link: String
    let middlename, name: String
    let namemod: Namemod
    let nickname: String
    let osid, pvsid: String?
    let sortname: String
    let twitterid, youtubeid: String?

    enum CodingKeys: String, CodingKey {
        case bioguideid, birthday, cspanid, firstname, gender
        case genderLabel = "gender_label"
        case lastname, link, middlename, name, namemod, nickname, osid, pvsid, sortname, twitterid, youtubeid
    }
}

enum GenderLabel: String, Codable {
    case female = "Female"
    case male = "Male"
}

enum Namemod: String, Codable {
    case empty = ""
    case iii = "III"
    case jr = "Jr."
}

enum RoleType: String, Codable {
    case senator = "senator"
}

enum RoleTypeLabel: String, Codable {
    case senator = "Senator"
}

enum SenatorClass: String, Codable {
    case class1 = "class1"
    case class2 = "class2"
    case class3 = "class3"
}

enum SenatorClassLabel: String, Codable {
    case class1 = "Class 1"
    case class2 = "Class 2"
    case class3 = "Class 3"
}

enum SenatorRank: String, Codable {
    case junior = "junior"
    case senior = "senior"
}

enum SenatorRankLabel: String, Codable {
    case junior = "Junior"
    case senior = "Senior"
}

enum Title: String, Codable {
    case sen = "Sen."
}

//// MARK: - Encode/decode helpers
//
//class JSONNull: Codable, Hashable {
//
//    public static func == (lhs: JSONNull, rhs: JSONNull) -> Bool {
//        return true
//    }
//
//    public var hashValue: Int {
//        return 0
//    }
//
//    public init() {}
//
//    public required init(from decoder: Decoder) throws {
//        let container = try decoder.singleValueContainer()
//        if !container.decodeNil() {
//            throw DecodingError.typeMismatch(JSONNull.self, DecodingError.Context(codingPath: decoder.codingPath, debugDescription: "Wrong type for JSONNull"))
//        }
//    }
//
//    public func encode(to encoder: Encoder) throws {
//        var container = encoder.singleValueContainer()
//        try container.encodeNil()
//    }
//}
