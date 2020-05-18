import Foundation
import UIKit

extension Date {
    func toString(mask: String) -> String {
        let formatter = DateFormatter()
        formatter.locale = Locale(identifier: "pt_BR")
        formatter.timeZone = TimeZone(identifier: "America/Sao_Paulo")
        formatter.calendar = Calendar(identifier: .gregorian)
        formatter.dateFormat = mask
        let str = formatter.string(from: self)
        return str
    }
}

//MARK: - DATE to STRING
//Para mais detalhes sobre as mascaras: https://nsdateformatter.com/
var dataAtualDate = Date()

print("Data toString: \(dataAtualDate.toString(mask: "dd/MM/yyyy HH:mm:ss"))")
print("Dia do Mês...: \(dataAtualDate.toString(mask: "dd"))")
print("Mês..........: \(dataAtualDate.toString(mask: "MM"))")
print("Ano..........: \(dataAtualDate.toString(mask: "yyyy"))")
print("Dia da Semana: \(dataAtualDate.toString(mask: "E"))")
print("Hora minuto..: \(dataAtualDate.toString(mask: "HH:mm"))")
