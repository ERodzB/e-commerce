<div class="page-table">
        <br>
        <div class="action-title">
            <h1 class="row col-s-12">Manejo de Pagos</h1>
            <div class="l-3"></div>
        </div>
        <div class="table">
            <table class="col-s-12 no-margin no-padding">
                <thead>
                    <th>Codigo</th>
                    <th>Nombre Español</th>
                    <th>Nombre Ingles</th>
                    <th>Libreria</th>
                    <th>Estado</th>
                    <th><a class="icono" href="index.php?page=Pago&act=INS">Crear <i class="fas fa-plus-circle"></i></a></th>
                </thead>
                <tbody>
                   {{foreach payment}}
                     <tr>
                        <td>{{paymentCod}}</td>
                        <td>{{paymentDscES}}</td>
                        <td>{{paymentDscEN}}</td>
                        <td>{{paymentLib}}</td>
                        <td>{{paymentState}}</td>
                        <td>
                           <a href="index.php?page=Pago&act=UPD&cod={{paymentCod}}"><i class="fas fa-pencil-ruler"></i></a> 
                           <a href="index.php?page=Pago&act=DSP&cod={{paymentCod}}"><i class="fas fa-eye"></i></a>
                        </td>
                    </tr>
                   {{endfor payment}}
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