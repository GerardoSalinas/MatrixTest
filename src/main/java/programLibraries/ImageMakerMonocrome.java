package programLibraries;

import java.awt.image.BufferedImage;
import java.awt.image.DataBufferByte;
import java.awt.image.Raster;
import java.io.File;
import javax.imageio.ImageIO;

import jakarta.servlet.http.HttpServletRequest;


public class ImageMakerMonocrome {
 
		private byte [] toBytes (String pixels) {
			
			byte [] bytes = new byte[pixels.length()];
			
			for(int i=0 ; i < pixels.length(); i++) {
				
				if (pixels.charAt(i) == '0') {
					bytes[i] = 0;
					
				}else {
					
					bytes[i] = (byte)255;
				}
			}
			
			return bytes;
			
		}
		
		public String make(HttpServletRequest request) {
			
			if( 
					request.getParameter("w") != null &&
					request.getParameter("h") != null &&
					request.getParameter("pixels") != null
					){
					
					int width =
			Integer.parseInt(request.getParameter("w"));
					int height =
			Integer.parseInt(request.getParameter("h"));
					String pixels = request.getParameter("pixels");
					byte[] bytes = this.toBytes(pixels);
					
					File file = new File("sample.bmp");
					BufferedImage bufferedImage = new 
			BufferedImage(width,height,BufferedImage.TYPE_BYTE_GRAY);
					bufferedImage.setData(
							Raster.createRaster(
									bufferedImage.getSampleModel(), 
									new DataBufferByte(bytes, bytes.length), 
									null
								)
							);
								
							try {
								ImageIO.write(bufferedImage, "bmp", file);
								
								return String.format("Se ha creado una imagen y esta en: %s", file.getAbsolutePath());
							}catch(Exception e) {
								
							}
						}
			return null; 
		}
		
}