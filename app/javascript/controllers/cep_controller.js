import { Controller } from "@hotwired/stimulus"

import '../src/mask'


export default class extends Controller {
  static targets = ["cep", "street", "neighborhood", "city", "uf", "codeIbge"]


  initialize() {
    $(this.cep).mask('00.000-000')
  }

  search_cep() {

    var online = navigator.onLine

    if (online) {
      var cep = this.cep.value
      cep = cep.replace(/[^\d]+/g, '')
      fetch('https://viacep.com.br/ws/' + cep + '/json/')
        .then(response => {
          response.json()
            .then(data => {
              if (data.erro == true) {

                document.getElementById('citizen_address_attributes_cep').style.borderColor = 'red'
                alert('Cep Incorreto'),
                  this.street.readOnly = true,
                  this.neighborhood.readOnly = true,
                  this.street.value = '',
                  this.neighborhood.value = '',
                  this.city.value = '',
                  this.uf.value = ''
              } else {
                document.getElementById('citizen_address_attributes_cep').style.borderColor = 'green'
                this.street.value = data.logradouro.toUpperCase(),
                  this.neighborhood.value = data.bairro.toUpperCase(),
                  this.uf.value = data.uf.toUpperCase(),
                  this.city.value = data.localidade.toUpperCase(),
                  this.codeIbge.value = data.ibge

              }
            })
        })

    } else { alert('sem conexão') }
  }

  valida() {
    let cep = document.getElementById('citizen_address_attributes_cep')
    if (this.cep.value.length < 10) {
      cep.style.borderColor = 'red',
        alert('Cep incompleto')
      this.street.readOnly = true,
        this.neighborhood.readOnly = true,
        this.street.value = '',
        this.neighborhood.value = '',
        this.city.value = '',
        this.uf.value = '',
        this.cep.value = ''
    }
  }

  get cep() { return this.cepTarget }
  get street() { return this.streetTarget }
  get neighborhood() { return this.neighborhoodTarget }
  get city() { return this.cityTarget }
  get uf() { return this.ufTarget }
  get codeIbge() { return this.codeIbgeTarget }


}
