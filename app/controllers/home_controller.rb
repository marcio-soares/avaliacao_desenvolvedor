class HomeController < ApplicationController
  before_action :set_upload, if: -> { params['upload_file'].present? }

  def upload
    if @file_order.present?
      parsed = ParserFileService.new(File.read(@file_order.file.file))
      if parsed.content? && parsed.tab_delimited?
        MaintenanceService.new(parsed.call).call
      end
      redirect_to orders_path, flash: { success: 'Enviado com sucesso.' }
    else
      redirect_to root_path, flash: {
        error: 'Serão aceitos somente arquivos TXT' 
      }
    end
  end

  private

  def set_upload
    @file_order = FileOrderUploader.new
    content_type = params['upload_file'].content_type
    if @file_order.content_type_whitelist.include?(content_type)
      @file_order.store!(params['upload_file'])
    end
  end
end
