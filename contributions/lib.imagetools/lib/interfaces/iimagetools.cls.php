<?php
/**
 * Interface for image tool delegations
 * 
 * Uses either gd or imagick extension, if installed. imagick is preferred
 * 
 * @author Gerd Riesselmann
 * @ingroup ImageTools
 */
interface IImageTools {
	/**
	 * Create an IImageInformation from a file
	 * 
	 * @return IImageInformation False on failure
	 */
	public function create_from_file($file);
	
	/**
	 * Create an IImageInformation from a file
	 * 
	 * @return IImageInformation False on failure
	 */
	public function create_from_binary_data($data);
	
	/**
	 * Resize given image. Image is streched to fit
	 * 
	 * @return IImageInformation False on failure
	 */
	public function resize(IImageInformation $src, $width, $height);
	
	/**
	 * Cuts portion of image
	 * 
	 * @return IImageInformation
	 */
	public function crop(IImageInformation $src, $x, $y, $width, $height);	
	
	/**
	 * Add a Watermark
	 * 
	 * @param IImageInformation $src Image to add watermark to
	 * @param string $text Text of Watermark, if emtpy "© {Application Title}" is taken
	 * 
	 * @return IImageInformation
	 */
	public function watermark(IImageInformation $src, $text = false);	
}