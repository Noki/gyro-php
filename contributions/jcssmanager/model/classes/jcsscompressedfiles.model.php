<?php
class DAOJcsscompressedfiles extends DataObjectBase {
	public $type;
	public $filename;
	public $hash;
	public $num_sources;
	public $sources;
	public $version;
	
	
	/**
	 * Create the table object describing this dataobejcts table
	 */
	protected function create_table_object() {
		return new DBTable(
			'jcsscompressedfiles',
			array(
				new DBFieldEnum('type', array_keys(JCSSManager::get_types()),  null, DBField::NOT_NULL),
				new DBFieldText('filename', 255, null, DBField::NOT_NULL),
				new DBFieldText('hash', 255, null, DBField::NOT_NULL),
				new DBFieldInt('num_sources', 1, DBFieldInt::UNSIGNED | DBField::NOT_NULL),
				new DBFieldSerialized('sources', DBFieldText::BLOB_LENGTH_SMALL, null, DBField::NOT_NULL),
				new DBFieldInt('version', 1,DBFieldInt::UNSIGNED | DBField::NOT_NULL)
			),
			array('type', 'filename')
		);		
	}
	
	/**
	 * Returns versioned filename
	 * 
	 * @return string
	 */
	public function get_versioned_filename() {
		$arr = explode('.', $this->filename);
		$ext = array_pop($arr);
		$arr[] = $this->version;
		$arr[] = $ext;
		return implode('.', $arr);  			
	}
	
	/**
	 * Substitute any of the files given in $arr_files
	 * 
	 * @param array $arr_files
	 * @return array Array of files  
	 */
	public function substitute($arr_files) {
		if (count($arr_files) < count($this->sources)) {
			return $arr_files;
		}
		
		$ret = array();
		$matches = 0;
		foreach($arr_files as $file) {
			if (in_array($file, $this->sources)) {
				if ($matches == 0) {
					$ret[] = $this->get_versioned_filename();
				}
				$matches++;
			}
			else {
				$ret[] = $file;
			}
		}
		
		if ($matches != count($this->sources)) {
			$ret = $arr_files;
		}
		
		return $ret;
	}
}