import Foundation

public
extension Date {
    var startOfDay: Date {
        return Calendar.current.startOfDay(for: self)
    }
    
    var startOfTomorrow: Date? {
        return Calendar.current.date(byAdding: .day, value: 1, to: self.startOfDay)
    }
    
    var isToday: Bool {
        let timeInterval = self.timeIntervalSince1970
        let current = Date()
        let todayStart = current.startOfDay
        let tomorrowStart = current.startOfTomorrow
        return timeInterval >= todayStart.timeIntervalSince1970 && timeInterval < (tomorrowStart?.timeIntervalSince1970 ?? 0)
    }
}
