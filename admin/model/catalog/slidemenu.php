<?php
class ModelCatalogSlidemenu extends Model {
    public function install() {
        $query = $this->db->query("SELECT * FROM " . DB_PREFIX . "slidemenu LIMIT 1");
        if($query->num_rows == 0){
            $this->db->query("CREATE TABLE IF NOT EXISTS `".DB_PREFIX."slidemenu` (
              `slidemenu_id` bigint(20) UNSIGNED NOT NULL,
              `type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
              `source` text COLLATE utf8mb4_unicode_ci NOT NULL,
              `sort_order` int(3) NOT NULL DEFAULT '0',
              `status` tinyint(1) NOT NULL DEFAULT '1',
              `image` varchar(2048) COLLATE utf8mb4_unicode_ci NOT NULL
            ) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;");
        }
    
        $query = $this->db->query("SELECT * FROM " . DB_PREFIX . "slidemenu_description LIMIT 1");
        if($query->num_rows == 0){
            $this->db->query("CREATE TABLE `" . DB_PREFIX . "slidemenu_description` (
              `id` bigint(20) UNSIGNED NOT NULL,
              `slidemenu_id` bigint(20) NOT NULL,
              `language_id` int(11) NOT NULL,
              `slidemenu_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL
            ) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;");
        }
    }
    
	public function addSlidemenu($data) {
		$this->db->query("INSERT INTO " . DB_PREFIX . "slidemenu SET `type` = '" . $this->db->escape($data['type']) . "', source='', sort_order='". (int)$data['sort_order'] ."', status='". (int)$data['status'] ."'");

		$slidemenu_id = $this->db->getLastId();
        
        if (isset($data['image'])) {
            $this->db->query("UPDATE " . DB_PREFIX . "slidemenu SET image = '" . $this->db->escape($data['image']) . "' WHERE slidemenu_id = '" . (int)$slidemenu_id . "'");
        }
        
        if (isset($data['source'])) {
            $this->db->query("UPDATE " . DB_PREFIX . "slidemenu SET source = '" . $this->db->escape(serialize($data['source'])) . "' WHERE slidemenu_id = '" . (int)$slidemenu_id . "'");
        }
        
        foreach ($data['slidemenu_description'] as $language_id => $value) {
            $this->db->query("INSERT INTO " . DB_PREFIX . "slidemenu_description SET slidemenu_id = '" . (int)$slidemenu_id . "', language_id = '" . (int)$language_id . "', slidemenu_name = '" . $this->db->escape($value['slidemenu_name']) . "'");
        }
        
		return $slidemenu_id;
	}

	public function editSlidemenu($slidemenu_id, $data) {
		$this->db->query("UPDATE " . DB_PREFIX . "slidemenu SET `type` = '" . $this->db->escape($data['type']) . "', source='', sort_order='". (int)$data['sort_order'] ."', status='". (int)$data['status'] ."' WHERE slidemenu_id = '" . (int)$slidemenu_id . "'");
        
        if (isset($data['image'])) {
            $this->db->query("UPDATE " . DB_PREFIX . "slidemenu SET image = '" . $this->db->escape($data['image']) . "' WHERE slidemenu_id = '" . (int)$slidemenu_id . "'");
        }
        
        if (isset($data['source'])) {
            $this->db->query("UPDATE " . DB_PREFIX . "slidemenu SET source = '" . $this->db->escape(serialize($data['source'])) . "' WHERE slidemenu_id = '" . (int)$slidemenu_id . "'");
        }
		
		$this->db->query("DELETE FROM " . DB_PREFIX . "slidemenu_description WHERE slidemenu_id = '" . (int)$slidemenu_id . "'");
        foreach ($data['slidemenu_description'] as $language_id => $value) {
            $this->db->query("INSERT INTO " . DB_PREFIX . "slidemenu_description SET slidemenu_id = '" . (int)$slidemenu_id . "', language_id = '" . (int)$language_id . "', slidemenu_name = '" . $this->db->escape($value['slidemenu_name']) . "'");
        }
	}
    
    public function getSlidemenu($slidemenu_id) {
        $query = $this->db->query("SELECT * FROM " . DB_PREFIX . "slidemenu LEFT JOIN " . DB_PREFIX . "slidemenu_description ON " . DB_PREFIX . "slidemenu.slidemenu_id = " . DB_PREFIX . "slidemenu_description.slidemenu_id WHERE " . DB_PREFIX . "slidemenu.slidemenu_id = '". (int)$slidemenu_id ."'");
        
        return $query->row;
    }
    
    public function getSlidemenuDescriptions($slidemenu_id) {
        $category_slidemenu_data = array();
        
        $query = $this->db->query("SELECT * FROM " . DB_PREFIX . "slidemenu_description WHERE slidemenu_id = '" . (int)$slidemenu_id . "'");
        
        foreach ($query->rows as $result) {
            $category_slidemenu_data[$result['language_id']] = array(
                'slidemenu_name'             => $result['slidemenu_name']
            );
        }
        
        return $category_slidemenu_data;
    }
    
    public function getTotalSlidemenues() {
        $query = $this->db->query("SELECT COUNT(*) AS total FROM " . DB_PREFIX . "slidemenu");
        
        return $query->row['total'];
    }
    
    public function getSlidemenues($data = array()) {
        $sql = "SELECT sdm.slidemenu_id, sdm.type, sdm.source, sdm.sort_order, sdm.status, sdm.image, sdm_d.slidemenu_name FROM " . DB_PREFIX . "slidemenu sdm LEFT JOIN " . DB_PREFIX . "slidemenu_description sdm_d ON sdm.slidemenu_id = sdm_d.slidemenu_id WHERE sdm_d.language_id = '" . (int)$this->config->get('config_language_id') . "' ORDER BY sdm.sort_order";
        
        if (isset($data['start']) || isset($data['limit'])) {
            if ($data['start'] < 0) {
                $data['start'] = 0;
            }
            
            if ($data['limit'] < 1) {
                $data['limit'] = 20;
            }
            
            $sql .= " LIMIT " . (int)$data['start'] . "," . (int)$data['limit'];
        }
        
        $query = $this->db->query($sql);
        
        return $query->rows;
    }
    
	public function deleteSlidemenu($slidemenu_id) {
	
		$this->db->query("DELETE FROM " . DB_PREFIX . "slidemenu_description WHERE slidemenu_id = '" . (int)$slidemenu_id . "'");
		$this->db->query("DELETE FROM " . DB_PREFIX . "slidemenu WHERE slidemenu_id = '" . (int)$slidemenu_id . "'");
		
	}
	
	
	
	
	
	

	public function repairCategories($parent_id = 0) {
		$query = $this->db->query("SELECT * FROM " . DB_PREFIX . "category WHERE parent_id = '" . (int)$parent_id . "'");

		foreach ($query->rows as $category) {
			// Delete the path below the current one
			$this->db->query("DELETE FROM `" . DB_PREFIX . "category_path` WHERE category_id = '" . (int)$category['category_id'] . "'");

			// Fix for records with no paths
			$level = 0;

			$query = $this->db->query("SELECT * FROM `" . DB_PREFIX . "category_path` WHERE category_id = '" . (int)$parent_id . "' ORDER BY level ASC");

			foreach ($query->rows as $result) {
				$this->db->query("INSERT INTO `" . DB_PREFIX . "category_path` SET category_id = '" . (int)$category['category_id'] . "', `path_id` = '" . (int)$result['path_id'] . "', level = '" . (int)$level . "'");

				$level++;
			}

			$this->db->query("REPLACE INTO `" . DB_PREFIX . "category_path` SET category_id = '" . (int)$category['category_id'] . "', `path_id` = '" . (int)$category['category_id'] . "', level = '" . (int)$level . "'");

			$this->repairCategories($category['category_id']);
		}
	}



	public function getCategories($data = array()) {
		$sql = "SELECT cp.category_id AS category_id, GROUP_CONCAT(cd1.name ORDER BY cp.level SEPARATOR '&nbsp;&nbsp;&gt;&nbsp;&nbsp;') AS name, c1.parent_id, c1.sort_order FROM " . DB_PREFIX . "category_path cp LEFT JOIN " . DB_PREFIX . "category c1 ON (cp.category_id = c1.category_id) LEFT JOIN " . DB_PREFIX . "category c2 ON (cp.path_id = c2.category_id) LEFT JOIN " . DB_PREFIX . "category_description cd1 ON (cp.path_id = cd1.category_id) LEFT JOIN " . DB_PREFIX . "category_description cd2 ON (cp.category_id = cd2.category_id) WHERE cd1.language_id = '" . (int)$this->config->get('config_language_id') . "' AND cd2.language_id = '" . (int)$this->config->get('config_language_id') . "'";

		if (!empty($data['filter_name'])) {
			$sql .= " AND cd2.name LIKE '%" . $this->db->escape($data['filter_name']) . "%'";
		}

		$sql .= " GROUP BY cp.category_id";

		$sort_data = array(
			'name',
			'sort_order'
		);

		if (isset($data['sort']) && in_array($data['sort'], $sort_data)) {
			$sql .= " ORDER BY " . $data['sort'];
		} else {
			$sql .= " ORDER BY sort_order";
		}

		if (isset($data['order']) && ($data['order'] == 'DESC')) {
			$sql .= " DESC";
		} else {
			$sql .= " ASC";
		}

		if (isset($data['start']) || isset($data['limit'])) {
			if ($data['start'] < 0) {
				$data['start'] = 0;
			}

			if ($data['limit'] < 1) {
				$data['limit'] = 20;
			}

			$sql .= " LIMIT " . (int)$data['start'] . "," . (int)$data['limit'];
		}

		$query = $this->db->query($sql);

		return $query->rows;
	}

	public function getCategoryDescriptions($category_id) {
		$category_description_data = array();

		$query = $this->db->query("SELECT * FROM " . DB_PREFIX . "category_description WHERE category_id = '" . (int)$category_id . "'");

		foreach ($query->rows as $result) {
			$category_description_data[$result['language_id']] = array(
				'name'             => $result['name'],
				'meta_title'       => $result['meta_title'],
				'meta_description' => $result['meta_description'],
				'meta_keyword'     => $result['meta_keyword'],
				'description'      => $result['description']
			);
		}

		return $category_description_data;
	}
	
	public function getCategoryPath($category_id) {
		$query = $this->db->query("SELECT category_id, path_id, level FROM " . DB_PREFIX . "category_path WHERE category_id = '" . (int)$category_id . "'");

		return $query->rows;
	}
	
	public function getCategoryFilters($category_id) {
		$category_filter_data = array();

		$query = $this->db->query("SELECT * FROM " . DB_PREFIX . "category_filter WHERE category_id = '" . (int)$category_id . "'");

		foreach ($query->rows as $result) {
			$category_filter_data[] = $result['filter_id'];
		}

		return $category_filter_data;
	}

	public function getCategoryStores($category_id) {
		$category_store_data = array();

		$query = $this->db->query("SELECT * FROM " . DB_PREFIX . "category_to_store WHERE category_id = '" . (int)$category_id . "'");

		foreach ($query->rows as $result) {
			$category_store_data[] = $result['store_id'];
		}

		return $category_store_data;
	}
	
	public function getCategorySeoUrls($category_id) {
		$category_seo_url_data = array();
		
		$query = $this->db->query("SELECT * FROM " . DB_PREFIX . "seo_url WHERE query = 'category_id=" . (int)$category_id . "'");

		foreach ($query->rows as $result) {
			$category_seo_url_data[$result['store_id']][$result['language_id']] = $result['keyword'];
		}

		return $category_seo_url_data;
	}
	
	public function getCategoryLayouts($category_id) {
		$category_layout_data = array();

		$query = $this->db->query("SELECT * FROM " . DB_PREFIX . "category_to_layout WHERE category_id = '" . (int)$category_id . "'");

		foreach ($query->rows as $result) {
			$category_layout_data[$result['store_id']] = $result['layout_id'];
		}

		return $category_layout_data;
	}

	public function getTotalCategories() {
		$query = $this->db->query("SELECT COUNT(*) AS total FROM " . DB_PREFIX . "category");

		return $query->row['total'];
	}
	
	public function getTotalCategoriesByLayoutId($layout_id) {
		$query = $this->db->query("SELECT COUNT(*) AS total FROM " . DB_PREFIX . "category_to_layout WHERE layout_id = '" . (int)$layout_id . "'");

		return $query->row['total'];
	}	
}