# frozen_string_literal: true

module TableHelper # :nodoc:
  def table_for(records, id = nil, &blk)
    @table_columns = []
    blk.call
    columns = @table_columns

    thead = content_tag(:thead, class: 'thead-light', align: 'center') do
      content_tag(:tr) do
        columns.each do |header, _value_method|
          concat content_tag(:th, header)
        end
      end
    end

    tbody = content_tag :tbody do
      if records.blank?
        @colp = columns.count
        concat(content_tag(:tr) do
          concat content_tag(:td, 'Nenhum registro encontrado', colspan: @colp, align: 'center')
        end)
      else
        records.each do |f|
          concat(content_tag(:tr, align: 'center') do
            columns.each do |_header, value_method|
              concat content_tag(:td, (value_method[f]))
            end
          end)
        end
      end
    end

    content_tag :table, class: 'table table-striped table-bordered table-sm display', id:,
                        data: { controller: 'datatables' } do
      [thead, tbody].join.html_safe
    end
  end

  def field_table(header, &blk)
    @table_columns << [header, blk]
  end

  def edit_path(model)
    send("edit_#{model.model_name.singular}_path", model)
  end

  def btn_form
    field_table('') { |f| btn_show(f) }
    field_table('') { |f| btn_edit(edit_path(f)) }
    # field_table('') { |f| btn_delete(f) }
  end
end
