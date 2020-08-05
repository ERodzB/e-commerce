<div class="page-table">

    <br>
    <div class="action-title">
        <h1 class="row col-s-12">Manejo de Ordenes</h1>
    </div>
    <div class="table">
        <table class="col-s-12 no-margin no-padding">
            <thead>
                <th colspan="4">Descripcion de Orden #{{codFactura}}</th>
            </thead>
            <tbody>
                {{foreach orders}}

                <tr class="order-detail">
                    <td class="data"> {{userName}} </td>
                    <td class="data"><b>Telefono<br></b> {{orderCell}} </td>
                    <td class="data"><b>Subtotal<br></b> {{subtotal}} </td>
                    <td class="data"><b>Total<br></b> {{orderTotal}} </td>
                </tr>
                <tr class="order-detail">
                    <td class="data" colspan="6"><b>Dirección: <br></b> {{orderDirection}} </td>
                </tr>
                {{foreach orderDetail}}
                <tr class="order-detail">
                    <td class="data"><b>Orden</b></td>
                    <td class="data"><b>Comida<br></b> {{nombreProducto}} </td>
                    <td class="data"><b>Precio<br></b> {{precioProducto}} </td>
                    <td class="data"><b>x {{cartQuantity}}<br></b></td>
                </tr>
                {{endfor orderDetail}}
                {{endfor orders}}
                {{ifnot orders}}
                <tr>
                    <td colspan="6" style="padding: 8em;">No tienes Ordenes Disponibles</td>
                    </td>
                </tr>
                {{endifnot orders}}

            </tbody>
        </table>
    </div>

</div>