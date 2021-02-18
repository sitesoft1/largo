<?php
class ModelCatalogSlidemenu extends Model {
 
	public function getSlidemenues() {
        
        $this->db->query("CREATE TABLE IF NOT EXISTS `" . DB_PREFIX . "slidemenu` (
              `slidemenu_id` bigint(20) UNSIGNED NOT NULL,
              `type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
              `source` text COLLATE utf8mb4_unicode_ci NOT NULL,
              `sort_order` int(3) NOT NULL DEFAULT '0',
              `status` tinyint(1) NOT NULL DEFAULT '1',
              `image` varchar(2048) COLLATE utf8mb4_unicode_ci NOT NULL
            ) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;");
        
        $this->db->query("CREATE TABLE IF NOT EXISTS `" . DB_PREFIX . "slidemenu_description` (
              `id` bigint(20) UNSIGNED NOT NULL,
              `slidemenu_id` bigint(20) NOT NULL,
              `language_id` int(11) NOT NULL,
              `slidemenu_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL
            ) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;");
        	   
		$query = $this->db->query("SELECT * FROM " . DB_PREFIX . "slidemenu sdm LEFT JOIN " . DB_PREFIX . "slidemenu_description sdm_d ON sdm.slidemenu_id = sdm_d.slidemenu_id WHERE sdm_d.language_id = '" . (int)$this->config->get('config_language_id') . "' AND sdm.status = '1' ORDER BY sdm.sort_order");
  
		//$this->ocLog('slidemenu_query', $query, false);
		
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