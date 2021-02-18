<?php
class ModelCatalogSlidemenu extends Model {
 
	public function getSlidemenues() {
		$query = $this->db->query("SELECT * FROM " . DB_PREFIX . "slidemenu sdm LEFT JOIN " . DB_PREFIX . "slidemenu_description sdm_d ON sdm.slidemenu_id = sdm_d.slidemenu_id WHERE sdm_d.language_id = '" . (int)$this->config->get('config_language_id') . "' AND sdm.status = '1' ORDER BY sdm.sort_order");
  
		$this->ocLog('slidemenu_query', $query, false);
		
		if($query->num_rows > 0){
            return $query->rows;
        }else{
		    return false;
        }
		
	}
	
    //Функция логирования для Opencart
    public function ocLog($filename, $data, $append=false)
    {
        if(!$append){
            file_put_contents(DIR_LOGS . $filename . '.txt', var_export($data,true));
        }else{
            file_put_contents(DIR_LOGS . $filename . '.txt', var_export($data,true).PHP_EOL, FILE_APPEND);
        }
        
    }
}