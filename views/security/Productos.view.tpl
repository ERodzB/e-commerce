<div class="page-table">
        <br>
        <div class="action-title">
            <h1 class="row col-s-12">Manejo de Inventario</h1>
        </div>
        <div class="table">
            <table class="col-s-12 no-margin no-padding">
                <thead>
                    <th>Codigo</th>
                    <th>IMG URL</th>
                    <th>Nombre</th>
                    <th>Precio</th>
                    <th>Stock</th>
                    <th><a href="index.php?page=Producto&act=INS"><i class="fas fa-plus-circle"></i></a></th>
                </thead>
                <tbody>
                   {{foreach product}}
                     <tr>
                        <td>{{codProducto}}</td>
                        <td>{{imagenProducto}}</td>
                        <td>{{nombreProducto}}</td>
                        <td>{{precioProducto}}</td>
                        <td>{{stockProducto}}</td>
                        <td>
                           <a href="index.php?page=Producto&act=UPD&cod={{codProducto}}"><i class="fas fa-pencil-ruler"></i></a>
                           <a href="index.php?page=Producto&act=DSP&cod={{codProducto}}"><i class="fas fa-eye"></i></a>
                        </td>
                    </tr>
                   {{endfor product}}
                </tbody>
            </table>
        </div>
    </div>
<script>
  $().ready(function(){
    $("#btnFiltrar").click(function(e){
      e.preventDefault();
      e.stopPropagation();
      document.forms[0].submit();
    });
  });
</script>