// runs majority of the code for the program
class Catalog {
    constructor(name){
        this.name = name
        this.catalogsAdapter = new CatalogsAdapter()
        this.foodsAdapter = new FoodsAdapter()
        this.form = document.querySelector("#create-catalog-food-form")
        this.populateCatalogNameToForm()
    }

    addListenerToCatalog() {
        const catalogNames = document.querySelectorAll(".catalog-name")
        catalogNames.forEach(catalog => {
            catalog.addEventListener("click", () => {
                const container = document.querySelector(".container")
                container.style.display = "flex"
                switch(catalog.textContent) {
                    case "Entrees":
                        this.clearPage()
                        this.renderEntreesFoods()
                        break
                    case "Desserts":
                        this.clearPage()
                        this.renderDessertsFoods()
                        break
                    case "Drinks":
                        this.clearPage()
                        this.renderDrinksFoods()
                        break
                    case "Add New Foods":
                        this.clearPage()
                        this.renderAddCatalogFoodForm()
                        break
                    default:
                        this.clearPage()
                        this.renderAllFoods()
                }
            })
        })
    }
    
    //erases food from page 
    clearPage(){
        const clearFoods = document.querySelectorAll(".food-card")
        Array.from(clearFoods).forEach(food => {
            food.remove()
        })
        this.form.style.display = "none"
    }

    // renders entrees 
    renderEntreesFoods() {
        const entreesFoods = []
        this.catalogsAdapter.getCatalogs().then(catalogs => {
            catalogs[0].attributes.foods.forEach(food => {
                const entreesFood = new Food(food.name, food.cost, food.description, food.image_url, food.id, food.catalog_id)
                entreesFoods.push(entreesFood)
            })
            const sortedEntreesFoods = entreesFoods.sort((a,b) => a.name.localeCompare(b.name))
            sortedEntreesFoods.forEach(food => food.createFoodCard())
        })
    }

    renderDessertsFoods() {
        const dessertsFoods = []
        this.catalogsAdapter.getCatalogs().then(catalogs => {
            catalogs[1].attributes.foods.forEach(food => {
                const dessertsFood = new Food(food.name, food.cost, food.description, food.image_url, food.id, food.catalog_id)
                dessertsFoods.push(dessertsFood)
            })
            const sortedDessertsFoods = dessertsFoods.sort((a,b) => a.name.localeCompare(b.name))
            sortedDessertsFoods.forEach(food => food.createFoodCard())
        })
    }

    renderDrinksFoods() {
        const drinksFoods = []
        this.catalogsAdapter.getCatalogs().then(catalogs => {
            catalogs[2].attributes.foods.forEach(food => {
                const drinksFood = new Food(food.name, food.cost, food.description, food.image_url, food.id, food.catalog_id)
                drinksFoods.push(drinksFood)
            })
            const sortedDrinksFoods = drinksFoods.sort((a,b) => a.name.localeCompare(b.name))
            sortedDrinksFoods.forEach(food => food.createFoodCard())
        })
    }
    
    //Renders All foods but returns a promise
    renderAllFoods(){
        const allFoods = []
        this.foodsAdapter.getFoods().then(foods => {
            foods.forEach(food => {
                const foodObj = new Food(food.attributes.name, food.attributes.cost, food.attributes.description, food.attributes.image_url, food.id, food.attributes.catalog.id, food.attributes.catalog.name)
                allFoods.push(foodObj)
            })
            const sortedAllFoods = allFoods.sort((a,b) => a.name.localeCompare(b.name))
            sortedAllFoods.forEach(food => food.createFoodCard())
        })
    }

    renderAddCatalogFoodForm(){
        this.form.style.display = "block"
        this.form.style.margin = "0 auto"
        this.form.addEventListener("submit", (e) => this.addNewCatalogFood(e)) 
    }

    populateCatalogNameToForm() {
        this.catalogsAdapter.getCatalogs().then(catalogs => {
            catalogs.forEach(catalog => {
                const selectBox = document.querySelector("#catalog-select")
                const option = document.createElement("option")
                option.textContent = catalog.attributes.name
                option.value = catalog.id
                selectBox.append(option)
            })
        })

    }

    addNewCatalogFood(e) {
        e.preventDefault()
        const catalogNameSelect = document.querySelector("#catalog-select").value
        const foodName = document.querySelector("#food-name").value
        const foodCost = document.querySelector("#cost").value
        const foodImage = document.querySelector("#image-url").value
        const foodDescription = document.querySelector("#description").value
        const data = {
            name: foodName,
            cost: foodCost,
            image_url: foodImage,
            description: foodDescription,
            catalog_id: catalogNameSelect
        }
        this.foodsAdapter.postFoods(data).then(food => {
            alert("CatalogDex Updated!")
            this.form.reset()
            this.clearPage()
            new Food(food.attributes.name, food.attributes.cost, food.attributes.description, food.attributes.image_url, food.id, food.attributes.catalog.id, food.attributes.catalog.name)
            Food.allFoods.forEach(food => food.createFoodCard())
           // this.renderAllFoods()
        })
    }



}