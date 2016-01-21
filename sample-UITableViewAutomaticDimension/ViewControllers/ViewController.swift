//
//  ViewController.swift
//  sample-UITableViewAutomaticDimension
//
//  Created by Federico Tuckey on 1/21/16.
//  Copyright © 2016 Urupe. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    
    private let dataSource = [
        ["title":"Vidal y la paritaria docente: \"Acordaremos sueldos que se puedan pagar\"","body":"La gobernadora de la provincia de Buenos Aires, María Eugenia Vidal, habló sobre las reuniones de las comisiones técnicas, que empezarán esta semana en el marco de la paritaria 2016."],
        ["title":"El kirchnerismo le pagó casi $200 millones a la productora de 678 y Fútbol Permitido","body":"Tras un breve período de fase exploratoria, Pensado Para Televisión no tardó en orientar su vasto archivo y su ingeniería televisiva a la tarea de convertir a 678 en la nave insignia del kirchnerismo. Ya en 2009 la productora puso al programa al servicio del Gobierno y el ciclo se transformó de inmediato en un vehículo de las voces del oficialismo. Sus emisiones fueron, hasta hace días, el refugio de ahora ex funcionarios y simpatizantes de la gestión anterior.La aparición del ciclo en la TV Pública mereció críticas desde el comienzo. Hubo debates sobre el papel de periodistas militantes que asumieron los miembros del programa y los opositores de entonces se cansaron de cuestionar el uso del canal público con fines políticos. Ahora, cuando ya está fuera del aire, se conoció cuál fue el costo del programa más controvertido de la televisión de los últimos años. Una investigación del periodista Daniel Seifert, publicada en mariajuliaolivan.com.ar, sacó a la luz los números detrás de 678. Reveló la letra chica de los contratos y los millones que recibió PPT de las arcas estatales durante la gestión de Tristán Bauer al frente de Radio y Televisión Argentina (RTA)."],
        ["title":"Pella busca la tercera ronda en el Abierto de Australia","body":"El primer set del partido se lo llevó el español por 7-6 luego de un encuentro parejo López sacó ventaja rápida en el tie break para definirlo a su favor. El segundo en cambio, fue para el argentino por 7-6. Disputan el tercer parcial "],
        ["title":"Inversores confundidos no toman decisiones: subió el oro","body":"Si bien el precio del crudo está en el nivel de hace 13 años, parece acercarse rápidamente a los mínimos de la década del '90. El combustible más barato no siempre es una bendición. Está volteando a todos los mercados y perjudica notoriamente a América Latina.El petróleo no sólo baja por la mayor oferta sino por la caída de las economías que más crecieron. Brasil y China están en el ojo de la tormenta. Sus crisis internas están derrumbando los precios de las materias primas. Ya no son el sitio de desembarco de las inversiones, sino que se han convertido en un puerto de embarque de quienes buscan destinos más seguros para su dinero.Por eso –y como siempre sucede cuando no se conoce la profundidad de las crisis- el oro despertó y subió 1,5%, a USD 1.105 por onza troy, aunque ni siquiera el metal precioso tiene su futuro asegurado. Otro que pagó las consecuencias fue el Bonar 2020. La licitación por USD 5.000 millones fue declarada desierta por el Gobierno. La única operación que se pudo concretar, y en escala reducida, fue la del canje de los Bonar X que vencen en 2017, por USD 444 millones. A cambio de estos bonos se entregó el Bonar 2020 que, por supuesto, paga una tasa más elevada de interés."]]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        initTableView()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func initTableView() {
        tableView.estimatedRowHeight = 80.0
        tableView.rowHeight = UITableViewAutomaticDimension
    }
}

extension ViewController: UITableViewDataSource {
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dataSource.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("AutoSizeTableViewCell", forIndexPath: indexPath) as! AutoSizeTableViewCell
        let article = dataSource[indexPath.item]
        cell.titleLabel.text = article["title"]
        cell.bodyLabel.text = article["body"]
        return cell
    }

}

extension ViewController: UITableViewDelegate {
    
}
