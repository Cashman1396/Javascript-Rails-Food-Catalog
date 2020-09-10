// implements the catalog class, foods, and the listener to work
class App {
    start() {
        const catalog = new Catalog()
        catalog.renderAllFoods()
        catalog.addListenerToCatalog()
    }
}