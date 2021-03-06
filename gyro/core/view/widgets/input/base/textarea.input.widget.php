<?php
/**
 * A text area
 * 
 * @author Gerd Riesselmann
 * @ingroup View
 */
class InputWidgetTextareaBase extends InputWidgetBase {
	/**
	 * Add new attributes or process old ones
	 */
	protected function extend_attributes(&$attrs, $params, $name, $title, $value, $policy) {
		parent::extend_attributes($attrs, $params, $name, $title, $value, $policy);
		$attrs['name'] = $name;
		$attrs['rows'] = Arr::get_item($params, 'rows', 5);
		$attrs['cols'] = Arr::get_item($params, 'cols', 10);	
	}
	
	/**
	* Render the actual widget
	 */
	protected function render_input($attrs, $params, $name, $title, $value, $policy) {
		return html::tag('textarea', GyroString::escape($value), $attrs);
	}	
}