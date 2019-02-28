//
//  RestaurantsViewController.swift
//  FoodService
//
//  Created by Arthur on 20.02.2019.
//  Copyright © 2019 Arthur. All rights reserved.
//

import UIKit

class RestaurantsViewController: UIViewController {
    
    @IBOutlet weak var menuBarButton: UIBarButtonItem!
    
    var restaurants: [Restaurant] = [
        Restaurant(name: "Матрёшка", address: "Кутузовский пр., 2/1, стр. 6, Москва", image: "matreshka.jpg", averagePrice: "$$$$", dishes: ["Цезарь", "Апельсин", "Мандарин"]),
    Restaurant(name: "Метрополь", address: "Театральный пр-д, 2 Отель Метрополь, Москва", image: "metropol.jpg", averagePrice: "$$$$", dishes: ["Цезарь", "Апельсин", "Мандарин"]),
    Restaurant(name: "Chicago Grill & Bar", address: "Страстной бульвар, 8а, Москва", image: "chicago.jpg", averagePrice: "$$$$", dishes: ["Цезарь", "Апельсин", "Мандарин"]),
    Restaurant(name: "Стейк Хаус Бутчер", address: "Лубянский проезд, 15, Москва", image: "butcher.jpg", averagePrice: "$$$$", dishes: ["Цезарь", "Апельсин", "Мандарин"]),
    Restaurant(name: "Vogue Cafe", address: "ул.Кузнецкий Мост, 7/9, Москва", image: "vogue.jpg", averagePrice: "$$$$", dishes: ["Цезарь", "Апельсин", "Мандарин"]),
    Restaurant(name: "Турандот", address: "Тверской бульвар, 26/3, Москва", image: "turandot.jpg", averagePrice: "$$$$", dishes: ["Цезарь", "Апельсин", "Мандарин"]),
    Restaurant(name: "Скай Лондж", address: "Ленинский проспект, 32а, Москва", image: "sky.jpg", averagePrice: "$$$$", dishes: ["Цезарь", "Апельсин", "Мандарин"]),
    Restaurant(name: "White Rabbit", address: "Смоленская площадь, 3 Смоленский Пассаж 16 этаж, Москва", image: "white-rabbit.jpg", averagePrice: "$$$$", dishes: ["Цезарь", "Апельсин", "Мандарин"]),
    Restaurant(name: "Sixty", address: "Пресненская набережная, дом 12 62 этаж, Башня Федерация, Москва", image: "sixty.jpg", averagePrice: "$$$$", dishes: ["Цезарь", "Апельсин", "Мандарин"]),
    Restaurant(name: "Cristal Room Baccarat", address: "ул. Никольская, 19/21, Москва", image: "cristal.jpg", averagePrice: "$$$$", dishes: ["Цезарь", "Апельсин", "Мандарин"])
    
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if self.revealViewController() != nil {
        menuBarButton.target = self.revealViewController()
        menuBarButton.action = #selector(SWRevealViewController.revealToggle(_:))
        self.view.addGestureRecognizer(self.revealViewController().panGestureRecognizer())
        }
    }
    
    
    
 
}
extension RestaurantsViewController: UITableViewDelegate, UITableViewDataSource{
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
        
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return restaurants.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "RestaurantCell", for: indexPath) as! RestaurantTableViewCell
        cell.imageRest.image = UIImage(named: restaurants[indexPath.row].image)
        cell.nameLabel.text = restaurants[indexPath.row].name
        cell.addressLabel.text = restaurants[indexPath.row].address
        
        return cell
    }
    
//    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        guard let detailViewController = segue.destination as? MealListTableViewController,
//            let index = tableView.indexPathForSelectedRow?.row
//            else {
//                return
//        }
//        detailViewController.contact = contacts[index]
//    }
}

