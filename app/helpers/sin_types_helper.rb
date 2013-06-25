module SinTypesHelper
  def sin_type_names
    all_sin_types = SinType.all
    data_source = '['
    all_sin_types.each do |st|
      data_source << '"'+st.name+'", '
    end
    data_source.chomp!(", ")
    data_source << ']'
  end
end
