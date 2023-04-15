import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = [ "cible", "destination" ]
  connect() {
    console.log(this.cibleTarget)

  }
  clone(e){
    e.preventDefault()
    let new_cible = this.cibleTarget.cloneNode(false)
    this.destinationTarget.prepend(new_cible)
    console.log(new_cible)
  }
}
