class App {
    start() {
        const catalog = new Catalog()
        catalog.renderAllFoods()
        catalog.addListenerToCatalog()
    }
}