<div class="page-single" style="height:200vh;">
    <br>

    <div class="row action-title col-s-12">
        <h1>{{mode}}</h1>
    </div>

    <div class="row single-form col-s-10 col-m-6 col-4 col-offset-s-1 col-offset-m-3 col-offset-4 no-padding">

        <form class="col-s-12 no-padding left" action="index.php?page=Producto&act={{act}}&cod={{codProducto}}" method="POST"
            enctype="multipart/form-data">

            <input type="hidden" name="token" id="token" value="{{token}}">
            <input type="hidden" name="codProducto" value="{{codProducto}}">
            <input type="hidden" name="btnConfirmar" value="confirmar">
            <input type="hidden" name="imagenProducto" value="{{imagenProducto}}">

            <div class="single-input row">
                <br>
                <label class="left" for="imagenProducto">Imagen de Producto</label><br>
                <img class="col-s-8 no-padding no-margin" src="{{imagenProducto}}" alt="Foto Comida">

                <input class="col-s-12 col-m-11 col-12 no-padding" type="file" name="imagenProducto" id="imagenProducto"
                    placeholder="Codigo de Producto" value="{{imagenProducto}}" {{readonly}}>
            </div>
            <div class="single-input row">
                <br>
                <label class="left" for="nombreProducto">Nombre del Medicamento</label><br>
                <input class="col-s-12 col-m-11 col-12 no-padding" type="text" name="nombreProducto" id="nombreProducto"
                    placeholder="Nombre del Producto" value="{{nombreProducto}}" {{readonly}}>
            </div>
            <div class="single-input row">
                <br>
                <label class="left" for="precioProducto">Precio del Producto</label><br>
                <input class="col-s-12 col-m-11 col-12 no-padding" type="text" name="precioProducto" id="precioProducto"
                    placeholder="Precio del Producto" value="{{precioProducto}}" {{readonly}}>
            </div>
            <div class="single-input row">
                <br>
                <label class="left" for="stockProducto">Stock Disponible</label><br>
                <input class="col-s-12 col-m-11 col-12 no-padding" type="text" name="stockProducto" id="stockProducto"
                    placeholder="Stock del Producto" value="{{stockProducto}}" {{readonly}}>
            </div>
            <div class="single-buttons col-offset-s-2 col-offset-m-4 col-12 col-offset-3 no-padding">
                {{ifnot readonly}}<button class="button-3" type="submit" id="btnConfirmar">Confirmar</button>&nbsp;
                {{endifnot readonly}}
                <button class="button-3" type="submit" id="btnCancelar">Cancelar</button>
            </div>
            <br>
        </form>
        {{if hasErrors}}
        <ul>
            {{foreach errors}}
            <li>{{this}}</li>
            {{endofr errors}}
        </ul>
        {{endif hasErrors}}
    </div>
</div>

<script>
    $().ready(function () {
        $("#btnCancelar").click(function (e) {
            e.preventDefault();
            e.stopPropagation();
            window.location.assign("index.php?page=Productos");
        });
        $("#btnConfirmar").click(function (e) {
            e.preventDefault();
            e.stopPropagation();
            document.forms[0].submit();
        });
    });
</script>