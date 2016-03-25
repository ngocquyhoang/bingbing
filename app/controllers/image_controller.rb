class ImageController < ApplicationController
  def index
  	if params[:search_keyword]

  	else

  	end
  	@image_result = []
  	@image_result.push('http://www.keenthemes.com/preview/metronic/theme/assets/global/plugins/jcrop/demos/demo_files/image1.jpg')
  	@image_result.push('http://www.biendao24h.vn/product_images/uploaded_images/anh-girl-xinh-9x-de-thuong-9-.jpg')
  	@image_result.push('http://thuvienanhdep.net/wp-content/uploads/2015/11/nhung-hinh-anh-girl-xinh-dang-yeu-va-de-thuong-nhat-tren-facebook-4.jpg')
  	@image_result.push('http://thuthuattienich.com/wp-content/uploads/2013/06/girl-cute-7.jpg')
  	@image_result.push('http://images.tapchianhdep.net/15-12hinh-anh-girl-xinh-hoc-sinh-mac-dong-phuc-cuc-de-thuong3.jpg')
  	@image_result.push('http://blogthugian.info/wp-content/uploads/2015/07/anh-girl-xinh-de-thuong-tren-facebook-6.jpg')
  	@image_result.push('http://www.tech12h.com/sites/default/files/styles/inbody400/public/girl-xinh-1.jpg?itok=atdjp9Cw')
  	@image_result.push('http://www.biendao24h.vn/product_images/m/438/anh_girl_xinh_96__43530_zoom.jpg')
  end
end
