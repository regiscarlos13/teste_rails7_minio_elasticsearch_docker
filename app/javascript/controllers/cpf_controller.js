import { Controller } from "@hotwired/stimulus"

import '../src/mask'
import { validate } from 'gerador-validador-cpf'

export default class extends Controller {

	static targets = ["cpf"]

	initialize() {
		$(this.cpf).mask('000.000.000-00')
		//this.cpf.setAttribute('autocomplete', 'off')
	}

	valida_cpf() {
		if (validate(this.cpf.value) == false) {
			this.cpf.style.borderColor = '#f00';
		};
		if (validate(this.cpf.value) == true) {
			this.cpf.style.borderColor = '#198754';
		};
		if (this.cpf.value == null) {
			this.cpf.style.borderColor = '#f00';
		};
	}
	get cpf() { return this.cpfTarget }
}
