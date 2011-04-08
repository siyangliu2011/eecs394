<?php
class ProductsController extends AppController
{
  var $uses = array('User','Product');
  function newproject()
  {
    if (!empty($this->params['form']))
    {
      if ($this->Product->save($this->params['form']))
      {
        $this->flash('Your new project is accepted.', 
'/products/newproject');
      } else {
        $this->flash('There is a problem with your insert.', 
'/products/newproject');
      }
    }
  }
  	function editproject() {
		$this->Product->recursive = 0;
		$this->set('products', $this->paginate());
	}

}