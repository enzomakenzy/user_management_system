import { Controller } from "@hotwired/stimulus"

export default class extends Controller {

    static targets = [ "start", "end" ];

    validateDates(event) {
        const startDate = new Date(this.startTarget.value);
        const endDate = new Date(this.endTarget.value);

        if (startDate >= endDate) {
            document.getElementById("text-error").textContent = "A data inicial não pode ser maior ou igual a data final";
            event.preventDefault();
        } 

        let today = new Date();

        if (startDate > today || endDate > today) {
            document.getElementById("text-error").textContent = "A data escolhida é maior que a atual"
            event.preventDefault();
        }
    }
}
