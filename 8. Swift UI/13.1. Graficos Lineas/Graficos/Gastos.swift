
import Foundation

struct Gastos: Identifiable {
    let id = UUID()
    let mes: String
    let monto: Int
    
    init(mes: String, monto: Int) {
        self.mes = mes
        self.monto = monto
    }
}


let Gastos2022 = [
    Gastos(mes: "Enero", monto: 100),
    Gastos(mes: "Febrero", monto: 500),
    Gastos(mes: "Marzo", monto: 300),
    Gastos(mes: "Abril", monto: 700),
    Gastos(mes: "Mayo", monto: 1000),
    Gastos(mes: "Junio", monto: 800),
    Gastos(mes: "Julio", monto: 200),
]

let Gastos2023 = [
    Gastos(mes: "Enero", monto: 600),
    Gastos(mes: "Febrero", monto: 300),
    Gastos(mes: "Marzo", monto: 900),
    Gastos(mes: "Abril", monto: 100),
    Gastos(mes: "Mayo", monto: 800),
    Gastos(mes: "Junio", monto: 400),
    Gastos(mes: "Julio", monto: 500),
]
