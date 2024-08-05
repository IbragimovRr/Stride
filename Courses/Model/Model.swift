//
//  Model.swift
//  Courses
//
//  Created by Руслан on 23.06.2024.
//

import Foundation
import UIKit


class Constants {
    static let url = "http://127.0.0.1:8000/"
}

// MARK: - Collection
struct Objects {
    let name: String
    let image: String
}

struct Category {
    var nameCategory: String
    var image: String
}

// MARK: - Course
struct Modules {
    var text: Data?
    var name: String
    var minutes: Int
    var image: UIImage?
    var description: String?
}

struct Course {
    var daysCount: Int
    var nameCourse: String
    var nameAuthor: String?
    var price: Int
    var image: String
    var rating: Float?
    var id: Int
    var description: String
    var dataCreated: String
    
    init(daysCount: Int = 0, nameCourse: String = "", price: Int = 0, image: String = "",  id: Int = 0, description: String = "", dataCreated: String = "") {
        self.daysCount = daysCount
        self.nameCourse = nameCourse
        self.price = price
        self.image = image
        self.id = id
        self.description = description
        self.dataCreated = dataCreated
    }
}

struct CourseInfo {
    var day: Int
    var modules = [Modules]()
}

// MARK: - User
struct UserStruct {
    var role: Role
    var name: String
    var surname: String
    var email: String
    var phone: String
    var height: Double?
    var weight: Double?
    var birthday: String?
    var avatar: String?
    var level: Level?
    var goal: Goal?
    var coach = Coach()
    var isCoach: Bool?
    var myCourses = [Course]()
    var id = 0
    var token = ""
    
    init(role: Role = .user, name: String = "", surname: String = "", email: String = "", phone: String = "", id: Int = 0) {
        self.role = role
        self.name = name
        self.surname = surname
        self.email = email
        self.phone = phone
    }
    
    init(role: Role, name: String, surname: String, email: String, phone: String, height: Double? = nil, weight: Double? = nil, birthday: String? = nil, description: String? = nil, avatar: String? = nil, level: Level? = nil, goal: Goal? = nil, myCourses: [Course] = [Course](), id: Int = 0) {
        self.role = role
        self.name = name
        self.surname = surname
        self.email = email
        self.phone = phone
        self.height = height
        self.weight = weight
        self.birthday = birthday
        self.avatar = avatar
        self.level = level
        self.goal = goal
        self.myCourses = myCourses
    }
}

struct Coach {
    var description: String?
    var countCourses: Int = 0
    var rating: Float = 0.0
    var myCourses = [Course]()
}

struct InfoMe: Encodable {
    var level: String?
    var goal: String?
    var height: Double?
    var weight: Double?
    var date_of_birth: String?
}


// MARK: - enum
enum Level: String {
    case beginner = "BEG"
    case middle = "MID"
    case advanced = "ADV"
    case professional = "PRO"
    
    func thirdString() -> String {
        switch self {
        case .beginner:
            return "Начинающий"
        case .middle:
            return "Средний"
        case .advanced:
            return "Прогрессивный"
        case .professional:
            return "Профессиональный"
        }
    }
    
    static func thirdLevel(_ level: String) -> Level? {
        switch level {
        case "Начинающий":
            return .beginner
        case "Средний":
            return .middle
        case "Прогрессивный":
            return .advanced
        case "Профессиональный":
            return .professional
        default:
            return nil
        }
    }
}

enum Goal: String {
    case loseWeight = "LW"
    case gainWeight = "GW"
    case health = "HL"
    case other = "OT"
    
    func thirdString() -> String {
        switch self {
        case .loseWeight:
            return "Похудеть"
        case .gainWeight:
            return "Набрать мышечную массу"
        case .health:
            return "Здоровье"
        case .other:
            return "Другое"
        }
    }
    
    static func thirdGoal(_ goal: String) -> Goal? {
        switch goal {
        case "Похудеть":
            return .loseWeight
        case "Набрать мышечную массу":
            return .gainWeight
        case "Здоровье":
            return .health
        case "Другое":
            return .other
        default:
            return nil
        }
    }
}

enum Role: String {
    case coach = "Coach"
    case user = "User"
    case admin = "Admin"
}

enum Picker {
    case birthday
    case levelPreparation
    case intention
}

enum Alignment {
    case left
    case center
    case right
    case defaultCenter
}

