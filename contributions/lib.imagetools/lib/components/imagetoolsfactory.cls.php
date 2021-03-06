<?php
/**
 * Wrapper around common image operations
 * 
 * Uses either gd or imagick extension, if installed. imagick is preferred.
 * 
 * @author Gerd Riesselmann
 * @ingroup ImageTools
 */
class ImageToolsFactory {
	const IMPL_GD = 'gd';

	/**
	 * Create image tools
	 * 
	 * @return IImageTools
	 */
	public static function create_imagetools() {
		$ret = false;
		// Find and set implementation
		//if (class_exists('Imagick')) {
		//	require_once dirname(__FILE__) . '/imagetools_impl/imagetools.imagick.cls.php';
		//	ImageTools::set_implementation(new ImageToolsIMagick());	
		//}
		//else {
			self::load(self::IMPL_GD);
			$ret = new ImageToolsGD();		
		//}
		return $ret;	
	}

	public static function load($implementation) {
		switch ($implementation) {
			case self::IMPL_GD:
				require_once dirname(__FILE__) . '/imagetools_impl/imagetools.gd.cls.php';
				break;
			default:
				break;
		}
	}
}
