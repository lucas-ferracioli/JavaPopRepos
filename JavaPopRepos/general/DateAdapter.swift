import Foundation

struct DateFormat {
    let pullRequestDate = "yyyy-MM-dd'T'HH:mm:ssZ"
    let regular = "dd/MM/yyyy"
}

struct DateAdapter {
    func getFormattedDate(date: String, dateFormat: String) -> String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = dateFormat
        guard let dateType = dateFormatter.date(from: date) else { return "" }
        dateFormatter.dateFormat = DateFormat().regular
        return dateFormatter.string(from: dateType)
    }
}
