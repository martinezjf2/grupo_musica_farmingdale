# class DocumentsController < ApplicationController
#     def show
#       file_path = Rails.root.join('app', 'assets', 'pdfs', 'virtus.pdf')
#       send_file file_path, type: 'application/pdf', disposition: 'inline'
#     end
#   end