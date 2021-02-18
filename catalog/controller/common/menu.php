<?php
class ControllerCommonMenu extends Controller {
	public function index() {
		$this->load->language('common/menu');

		// Menu
		$this->load->model('catalog/category');

		$this->load->model('catalog/product');

		$data['categories'] = array();

		$categories = $this->model_catalog_category->getCategories(0);

		foreach ($categories as $category) {
			if ($category['top']) {
				// Level 2
				$children_data = array();

				$children = $this->model_catalog_category->getCategories($category['category_id']);

				foreach ($children as $child) {
					$filter_data = array(
						'filter_category_id'  => $child['category_id'],
						'filter_sub_category' => true
					);

					$children_data[] = array(
						'name'  => $child['name'] . ($this->config->get('config_product_count') ? ' (' . $this->model_catalog_product->getTotalProducts($filter_data) . ')' : ''),
						'href'  => $this->url->link('product/category', 'path=' . $category['category_id'] . '_' . $child['category_id'])
					);
				}

				// Level 1
				$data['categories'][] = array(
					'name'     => $category['name'],
					'children' => $children_data,
					'column'   => $category['column'] ? $category['column'] : 1,
					'href'     => $this->url->link('product/category', 'path=' . $category['category_id'])
				);
			}
		}
        
        //slidemenu
            $this->load->model('catalog/slidemenu');
            $slidemenues = $this->model_catalog_slidemenu->getSlidemenues();
            //$this->model_catalog_slidemenu->ocLog('slidemenues', $slidemenues, false);
            
            if($slidemenues){
                $data['slidemenu'] = array();
                foreach ($slidemenues as $item_arr){
    
                    $column = 1;
                    $children_data = array();
                    $type = $item_arr['type'];
                    $sources = unserialize($item_arr['source']);
                    $source = $sources[$type];
                    $image = $item_arr['image'];
                    $slidemenu_name = $item_arr['slidemenu_name'];
        
                    //$this->model_catalog_slidemenu->ocLog('sources', $sources, true);
                    //$this->model_catalog_slidemenu->ocLog('source', $source, true);
        
                    if($type == 'category_url'){
                        $href = $this->url->link('product/category', 'path=' . $source['category_id']);
                        
                        //Получим категорию чтобы узнать параметр column
                        $category = $this->model_catalog_category->getCategory($source['category_id']);
            
                        //children
                        // Level 2
                        $children_data = array();
                        $children = $this->model_catalog_category->getCategories($source['category_id']);
                        foreach ($children as $child) {
                            $filter_data = array(
                                'filter_category_id'  => $child['category_id'],
                                'filter_sub_category' => true
                            );
                            $children_data[] = array(
                                'name'  => $child['name'] . ($this->config->get('config_product_count') ? ' (' . $this->model_catalog_product->getTotalProducts($filter_data) . ')' : ''),
                                'href'  => $this->url->link('product/category', 'path=' . $source['category_id'] . '_' . $child['category_id'])
                            );
                        }
                        //children END
            
                    }elseif ($type == 'information_url'){
                        $href = $this->url->link('information/information', 'information_id=' .  $source['information_id']);
                    }else{
                        $href = $source['path'];
                    }
        
                    // Level 1
                    $data['slidemenu'][] = array(
                        'name'     => $slidemenu_name,
                        'image'    => 'image/'.$image,
                        'children' => $children_data,
                        'column'   => $category['column'] ? $category['column'] : 1,
                        'href'     => $href
                    );
                }
                
                return $this->load->view('common/slidemenu', $data);
            }else{
                return $this->load->view('common/menu', $data);
            }
        //slidemenu END

		//return $this->load->view('common/menu', $data);
	}
}
