import Foundation

struct DateAdapter {
    func getFormattedDate(date: String, dateFormat: String) -> String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = dateFormat
        guard let dateType = dateFormatter.date(from: date) else { return "" }
        dateFormatter.dateFormat = "dd/MM/yyyy"
        return dateFormatter.string(from: dateType)
    }
}
