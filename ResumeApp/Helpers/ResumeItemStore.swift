//
//  ResumeItemStore.swift
//  ResumeApp
//
//  Created by David Malicke on 1/19/22.
//

import Foundation
import SwiftUI

func addDateString(month: Int, year: Int) -> String {
    var components = DateComponents()
    let dateFormatter = DateFormatter()
    dateFormatter.setLocalizedDateFormatFromTemplate("MMM yyyy")
    components.month = month
    components.year = year
    
    if let date = Calendar.current.date(from: components) {
        let formattedDate = dateFormatter.string(from: date)
        return formattedDate
    }
    
    return "error"
}
/// Interesting thing about programming is all the different things you get to research and learn in order to optimize digital or to describe in data and code.
/// I hope that my experience shows I'm ready to apply all this experience and knowledge to writing better, descriptive, useful code for people that need things done.
let davidMalicke = Resume(
    id: UUID().uuidString,
    basics: resumeBasics,
    volunteer: nil,
    publications: [medAndSciencePub],
    skills: skills,
    references: nil,
    work: [frankfurtIndustries],
    languages: languages,
    projects: [umSalaryPub],
    awards: nil,
    certificates: certificates,
    education: degrees,
    interests: nil,
    videos: nil)


let resumeBasics = Resume.Basics(
    location: location,
    summary: "Experienced iOS Developer, Operations Lead, and Project Manager.",
    profiles: [gitHub],
    email: "davemalicke@gmail.com",
    label: nil,
    image: nil,
    name: "David Malicke",
    phone: "734-231-1111",
    url: URL(string: "https://www.linkedin.com/in/david-malicke-ios/")!)

let location = Resume.Basics.Location(
    address: "1715 South BLVD",
    postalCode: "48104",
    city: "Ann Arbor",
    region: "MI",
    countryCode: "USA")


/// PROFILES
let gitHub = Resume.Basics.Profile(
    id: UUID().uuidString,
    url: URL(string: "https://github.com/sans-connaissance"),
    network: nil,
    username: "sans-connaissance",
    thumbnail: URL(string: "https://cdn-icons-png.flaticon.com/512/25/25231.png"))

/// PUBLICATIONS
let medAndSciencePub = Resume.Publication(
        id: UUID().uuidString,
        summary: "Chapter 2: Open Access Journal Publishing",
        name: "Medical and Scientific Publishing: Author, Editor, and Reviewer Perspectives",
        publisher: "Elsevier",
        url: URL(string: "https://www.elsevier.com/books/medical-and-scientific-publishing/markovac/978-0-12-809969-8"),
        releaseDate: "2017-11-10",
        thumbnail: URL(string: "https://secure-ecsd.elsevier.com/covers/80/Tango2/large/9780128099698.jpg"))


///SKILLS
let skills = [iosDev, operations, digitalPublishing, intellectualProperty]

let foundationalSkill = Resume.Skill(
    id: UUID().uuidString,
    keywords: ["Growth Mindset", "Learner", "Curious", "Critical", "Committement", "Emotional Intelligence"],
    name: "Foundational Skills",
    level: "Junior")

let iosDev = Resume.Skill(
    id: UUID().uuidString,
    keywords: ["Agile", "CoreData", "GIT", "MVVM", "Vapor", "StackOverflow", "Swift",  "SwiftUI", "XCode"],
    name: "iOS Developer Skills",
    level: "Junior")

let operations = Resume.Skill(
    id: UUID().uuidString,
    keywords: ["Project Management", "Change Management", "Continuous Improvement", "Business Analysis", "Process Analysis", "Communication"],
    name: "Operations Lead Skill",
    level: "Seasoned Professional")

let digitalPublishing = Resume.Skill(
    id: UUID().uuidString,
    keywords: ["Editing", "Publishing", "Content Management Systems", "Drupal", "WordPress", "Wiki", "Meta Data", "Self-Publishing", "Guidelines", "Publishing Contracts", "Licensing"],
    name: "Digital Publishing Skill",
    level: "Seasoned Professional")

let intellectualProperty = Resume.Skill(
    id: UUID().uuidString,
    keywords: ["Copyright", "Fair Use", "Creative Commons Licensing", "Clearance", "WordPress", "Wiki", "Trademark"],
    name: "Intellectual Property Skill",
    level: "Professional")

let business = Resume.Skill(
    id: UUID().uuidString,
    keywords: ["Accounting", "Memorandum of Understanding", "", "Clearance", "WordPress", "Wiki", "Trademark"],
    name: "Business Skill",
    level: "Professional")


///WORK
let frankfurtIndustries = Resume.Work(
    id: UUID().uuidString,
    summary: "Design, develop, and publish iOS apps for Frankfurt Industries, LLC.",
    name: "Frankfurt Industries",
    department: "Mobile Development",
    position: "iOS Mobile Developer",
    startDate: "February 2021",
    endDate: "Present",
    highlights: ["Design, develop and publish UM SalaryPub on the App Store.", "UM SalaryPub is a native iOS app for searching, reviewing and comparing over 470,000 unique salary records.", "Built UM SalaryPub with SwiftUI following MVVM, and designed the CoreData model from the ground up. UM SalaryPub also takes advantage of an imported UIKit Charts package, which combined with SwiftUI and CoreData delivers a fast and responsive user experience."],
    url: nil,
    thumbnail: URL(string: "https://frankfurtindustries.neocities.org/images/bg.jpg")!)

///PROJECTS
let umSalaryPub = Resume.Project(
    id: UUID().uuidString,
    name: "UM SalaryPub",
    startDate: "2020-11-01",
    endDate: "2021-04-01",
    roles: ["Lead iOS Developer", "UX Designer", "Publisher"],
    description: "UM SalaryPub is a native iOS app for searching, reviewing and comparing over 470,000 unique salary records.",
    keywords: ["iOS, SwiftUI, CoreData, UIKit"],
    type: "App",
    entity: "Frankfurt Industries",
    url: URL(string: "https://apps.apple.com/us/app/um-salarypub/id1564602975"),
    highlights: ["List of a bunch of things about the project", "Another list of things"],
    thumbnails: nil,
    videos: nil)

///LANGUAGES
let languages = [english, french]

let english = Resume.Language(
    id: UUID().uuidString,
    fluency: "Native",
    language: "English")

let french = Resume.Language(
    id: UUID().uuidString,
    fluency: "B1",
    language: "French")

///CERTIFICATES
let certificates = [coreDataCert, leBienLeJusteCert]

let coreDataCert = Resume.Certificate(
    id: UUID().uuidString,
    name: "Core Data in iOS",
    issuer: "udemy",
    date: "2022-01-01",
    url: URL(string: "https://www.udemy.com/certificate/UC-c0dd6fe0-1aa5-4e2d-90a9-466f5d1d729f/"),
    thumbnail: nil)

let leBienLeJusteCert = Resume.Certificate(
    id: UUID().uuidString,
    name: "Le Bien, le Juste, l'Utile. Introduction aux éthiques philosophiques",
    issuer: "Université de Genève",
    date: "2020-02-23",
    url: URL(string: "https://www.coursera.org/account/accomplishments/verify/A75THDC4VZ74"),
    thumbnail: nil)

///EDUCATION
let degrees = [masterDegree, bachelorDegree, associateDegree]
let masterDegree = Resume.Education(
    id: UUID().uuidString,
    institution: "University of Michigan",
    schoolName: "School of Information",
    degreeName: "Master of Science in Information",
    specialization: "Archives and Records Management",
    studyType: "formal",
    startDate: "2009-01-03",
    score: "3.8",
    endDate: "2011-04-15",
    courses: ["SI 501: Contextual Inquiry and Consulting Foundations",
              "SI 502: Networked Computing: Storage, Communication, and Processing",
              "SI 510: Data Security and Privacy: Legal, Policy and Enterprise Issues",
              "SI 543: Introductory Programming",
              "SI 572: Database Application Design",
              "SI 622: Needs Assessment and Usability Evaluation",
              "SI 631: Content Management Systems"],
    area: "Ann Arbor, MI",
    url: nil,
    image: URL(string: "https://upload.wikimedia.org/wikipedia/commons/thumb/d/d7/Horace_H._Rackham_School_of_Graduate_Studies_%28March_2008%29.jpg/640px-Horace_H._Rackham_School_of_Graduate_Studies_%28March_2008%29.jpg")!)

let bachelorDegree = Resume.Education(
    id: UUID().uuidString,
    institution: "Siena Heights University",
    schoolName: nil,
    degreeName: "Bachelor of Business Administration",
    specialization: "Marketing",
    studyType: "formal",
    startDate: nil,
    score: "3.8",
    endDate: "2007-12-15",
    courses: ["SI 501: Contextual Inquiry and Consulting Foundations",
              "SI 502: Networked Computing: Storage, Communication, and Processing",
              "SI 510: Data Security and Privacy: Legal, Policy and Enterprise Issues",
              "SI 543: Introductory Programming",
              "SI 572: Database Application Design",
              "SI 622: Needs Assessment and Usability Evaluation",
              "SI 631: Content Management Systems"],
    area: "Adrian, MI",
    url: nil,
    image: URL(string: "https://upload.wikimedia.org/wikipedia/commons/thumb/e/e5/Siena_Heights_University_Campus.JPG/640px-Siena_Heights_University_Campus.JPG")!)

let associateDegree = Resume.Education(
    id: UUID().uuidString,
    institution: "Macomb Community College",
    schoolName: nil,
    degreeName: "Associate of Media and Communications Arts",
    specialization: "Digital Art and Animation",
    studyType: "formal",
    startDate: nil,
    score: "3.8",
    endDate: "2004-12-15",
    courses: ["SI 501: Contextual Inquiry and Consulting Foundations",
              "SI 502: Networked Computing: Storage, Communication, and Processing",
              "SI 510: Data Security and Privacy: Legal, Policy and Enterprise Issues",
              "SI 543: Introductory Programming",
              "SI 572: Database Application Design",
              "SI 622: Needs Assessment and Usability Evaluation",
              "SI 631: Content Management Systems"],
    area: "Adrian, MI",
    url: nil,
    image: URL(string: "https://upload.wikimedia.org/wikipedia/commons/thumb/2/22/MacombcommunitycollegeMIUSA.jpg/640px-MacombcommunitycollegeMIUSA.jpg")!)



//let operationsLead = ResumeItem(
//    id: UUID().uuidString,
//    startDate: "January 2017",
//    endDate: "Present",
//    name: "Operation's Lead",
//    thumbnail: URL(string: "https://upload.wikimedia.org/wikipedia/commons/thumb/1/19/1899_Michigan_Wolverines_football_team.jpg/640px-1899_Michigan_Wolverines_football_team.jpg")!,
//    location: "Ann Arbor, MI",
//    companyName: "University of Michigan",
//    departmentName: "Center for Academic Innovation",
//    jobTitle: "Operation's Lead",
//    schoolName: nil,
//    degreeName: nil,
//    overLay: nil,
//    shortDescription: "The straw that stirs the drink.",
//    longDescription: "Areas of focus include internal communications, optimizing internal and external collaboration processes, and the development and maintenance of a variety of information processes.",
//    list: ["Work closely with CAI teams to develop and refine the underlying social, technical and process infrastructure required to meet the Center’s growing project and administrative needs.", "Improve project reporting and transparency by co-developing project management bandwidth boards and managing ingest of project portfolio data into Salesforce", "Operationalized cross-team processes for keeping Salesforce up-to-date", "Built and launched new intranet to serve as the Center’s internal platform for policies, guidelines, and HR resources","Co-developed copyright clearance process."],
//    projects: [salesForce],
//    categories: ["Change Management", "Process Management", "Mentorship"])
//
//let projectManager = ResumeItem(
//    id: UUID().uuidString,
//    startDate: "June 2015",
//    endDate: "January 2017",
//    name: "Project Manager",
//    thumbnail: URL(string: "https://upload.wikimedia.org/wikipedia/commons/thumb/6/63/AngellHall2010.JPG/640px-AngellHall2010.JPG")!,
//    location: "Ann Arbor, MI",
//    companyName: "University of Michigan",
//    departmentName: "Center for Academic Innovation",
//    jobTitle: "Project Manager",
//    schoolName: nil,
//    degreeName: nil,
//    overLay: nil,
//    shortDescription: nil,
//    longDescription: "Managed the development, production, launch, and maintenance of 22 massive open online courses (MOOCs) and a variety of venture-funded digital education projects.",
//    list: ["Worked closely with faculty, learning experience designers, digital media specialists, and vendor partners throughout all course production processes", "Assembled and published course materials on vendor platforms."],
//    projects: [dataScienceEthics],
//    categories: ["Coursera", "Edx"])
//

//let pythonForEverybody = Project(
//    id: UUID().uuidString,
//    name: "Python for Everybody Course series",
//    thumbnails: [URL(string: "https://upload.wikimedia.org/wikipedia/commons/thumb/7/74/Charles_Severance.jpg/640px-Charles_Severance.jpg")!],
//    videos: nil,
//    link: URL(string: "https://www.coursera.org/specializations/python")!,
//    shortDescription: "One of the most successful series of online courses",
//    longDescription: "This thing made a lot of money, wow!",
//    list: ["The things I did for this course", "wow, i think it was a lot at the time."],
//    tags: ["Coursera", "MOOC", "Project Management"])
//
//let dataScienceEthics = Project(
//    id: UUID().uuidString,
//    name: "Data Science Ethics",
//    thumbnails: [URL(string: "https://upload.wikimedia.org/wikipedia/commons/d/dd/Amdahl_470V-6_computer_at_U_of_M.jpg")!],
//    videos: [URL(string: "https://www.youtube.com/watch?v=xYPSFc7ZL0U")!],
//    link: URL(string: "https://www.edx.org/course/data-science-ethics")!,
//    shortDescription: nil,
//    longDescription: nil,
//    list: nil,
//    tags: ["edx", "ethics", "data science"])
//
//
//let salesForce = Project (
//    id: UUID().uuidString,
//    name: "SalesForce",
//    thumbnails: nil,
//    videos: nil,
//    link: nil,
//    shortDescription: "Bending salesforce to our will.",
//    longDescription: "Salesforce as the insitutional repository of data at the Center of Academic Innovation.",
//    list: ["List of a bunch of things about the project", "Another list of things"],
//    tags: ["SalesForce","CRM", ""])
//
