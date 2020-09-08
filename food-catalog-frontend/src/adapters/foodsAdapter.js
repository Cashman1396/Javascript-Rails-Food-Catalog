class FoodsAdapter {
    constructor() {
      this.baseURL = "http://localhost:3000/foods"
    }
  
    // GET FETCH
    getFoods() {
      return fetch(this.baseURL).then(resp => resp.json()).then(json => (json.data))
    }

    //POST FETCH

    postFoods(data) {
        return fetch(this.baseURL, {
            method: "POST",
            headers: {
                "Content-Type": "application/json"
            },
            body: JSON.stringify(data)
        })
        .then(resp => resp.json())
        .catch(err => alert(err))
    }
}