<?php
/**
 * Actions for setting page on- or offline
 * 
 * Run offline/off or offline/on on the command line using the 
 * Console module to switch a site off or online.
 * 
 * The controller modifed the .htaccess file and redirects
 * all requests to /offline.php in the web root.
 * 
 * @author Gerd Riesselmann
 * @ingroup Offline
 */
class OfflineController extends ControllerBase {
	/**
	 * Return array of Route instances which are handled by this controller
	 * 
	 * @return array Array of Routes 
 	 */
	public function get_routes() {
		return array(
			new ExactMatchRoute('offline/off', $this, 'offline_off', new ConsoleOnlyRenderDecorator()),
			new ParameterizedRoute('offline/off/{param:s}', $this, 'offline_off_param', new ConsoleOnlyRenderDecorator()),
			new ExactMatchRoute('offline/on', $this, 'offline_on', new ConsoleOnlyRenderDecorator()),
		);
	}	
	
	/**
	 * Switch site offline
	 */
	public function action_offline_off(PageData $page_data) {
		$this->switch_offline("offline.php");
	}

	/**
	 * Switch site offline
	 */
	public function action_offline_off_param(PageData $page_data, $param) {
		$this->switch_offline("offline_$param.php");
	}

	/**
	 * Switch site offline
	 */
	private function switch_offline($offline_file) {
		Load::components('systemupdateinstaller');
		SystemUpdateInstaller::modify_htaccess(
			'offline',
			SystemUpdateInstaller::HTACCESS_REWRITE,
			array(
				'RewriteCond %{REQUEST_URI} ^/index.php',
				"RewriteRule ^(.*)$ $offline_file [L,QSA]"
			)
		);
	}

	/**
	 * Switch site offline
	 */
	public function action_offline_on(PageData $page_data) {
		Load::components('systemupdateinstaller');
		SystemUpdateInstaller::modify_htaccess(
			'offline', 
			SystemUpdateInstaller::HTACCESS_REWRITE, 
			''
		);
	}
}
