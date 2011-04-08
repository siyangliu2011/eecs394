<table>
<?php

echo $html->tableHeaders(array_keys($newproducts[0]['newproduct']));

foreach ($newproducts as $thisnewproduct)
{
    echo $html->tableCells($thisnewproduct['newproduct']);
}

?>
</table>


