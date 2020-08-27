class Food {
    constructor(name, cost, description, image_url, id, catalog_id, catalog_name){
        this.name = name
        this.cost = cost
        this.description = description
        this.image_url = image_url
        this.id = id
        this.catalog_id = catalog_id
        this.catalog_name = catalog_name
        this.foodsAdapter = new FoodsAdapter()
    }

    createFoodCard(){
        const container = document.querySelector(".container")
        const foodCard = document.createElement("div")
        
        foodCard.className = "food-card"
        foodCard.setAttribute("data-id", `${this.id}`)
        foodCard.setAttribute("data-catalog-id", `${this.catalog_id}`)
        
        const foodImage = document.createElement("div")
        foodImage.className = "food-image"
        foodImage.style.backgroundImage = `url("${this.image_url}")`
        foodImage.style.backgroundRepeat = "no-repeat"
        foodImage.style.backgroundSize = "cover"
        foodImage.style.backgroundPosition = "center"
        foodImage.style.height = "300px"
        foodImage.style.borderRadius = "10px"
        
        const foodNameCost = document.createElement("div")
        foodNameCost.className = "name-and-cost"
        
        const foodName = document.createElement("div")
        foodName.className = "food-name"
        foodName.textContent = this.name

        const foodCost = document.createElement("div")
        foodCost.className = "food-cost"
        foodCost.textContent = `\$${this.cost}`

        const foodDesc = document.createElement("div")
        foodDesc.className = "food-description"
        foodDesc.textContent = this.description

        foodNameCost.append(foodName, foodCost)
        foodCard.append(foodImage, foodNameCost, foodDesc)
        container.append(foodCard)

    }
}







