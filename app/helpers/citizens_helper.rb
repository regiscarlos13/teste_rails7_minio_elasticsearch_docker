# frozen_string_literal: true

module CitizensHelper
  def format_status(status)
    color = status.eql?('active') ? 'success' : 'warning'
    content_tag(:span, status, class: "badge text-bg-#{color}")
  end

  def cpf_format(cpf)
    "#{cpf[0, 3]}.#{cpf[3, 3]}.#{cpf[6, 3]}-#{cpf[9, 2]}" if cpf.present?
  end

  def data_format(data)
    data.strftime('%d/%m/%Y') if data.present?
  end

  def matricula_format(matricula)
    "#{matricula[0, 3]}.#{matricula[3, 3]}-#{matricula[6, 1]}-#{matricula[7, 1]}" if matricula.present?
  end
end