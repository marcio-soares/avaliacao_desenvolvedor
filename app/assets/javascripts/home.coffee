$('#upload_file').on 'change', (e)->
  if $(this).val()
    $('.btn-upload').prop({disabled: false})
  else
    $('.btn-upload').prop({disabled: true})