# frozen_string_literal: true

module CitizensHelper
  def format_status(status)
    color = status.eql?('active') ? 'success' : 'warning'
    content_tag(:span, Citizen.human_enum_name(:status, status), class: "badge text-bg-#{color}")
  end

  def cpf_format(cpf)
    "#{cpf[0, 3]}.#{cpf[3, 3]}.#{cpf[6, 3]}-#{cpf[9, 2]}" if cpf.present?
  end

  def data_format(data)
    data.strftime('%d/%m/%Y') if data.present?
  end
end
