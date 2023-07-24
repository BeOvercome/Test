<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<div class="modal fade ticket_registro" aria-hidden="true">
  <div class="modal-dialog modal-dialog-scrollable">
    <form:form action="/ticket/registrar" method="POST" modelAttribute="ticketEntity" class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Registro de Ticket</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">

            <div class="form-group">
                <label class="font-weight-bold">T&iacute;tulo *</label>
                <input name="titulo" type="text" class="form-control" required="">
            </div>

            <div class="form-group">
                <label class="font-weight-bold">Equipo</label>
                <input name="equipoResponsable" type="text" class="form-control">
            </div>

            <div class="form-group">
                <label class="font-weight-bold">Tipo *</label>
                <select name="tipoIncidencia" class="form-control" required="">
                  <option value="">Seleccione...</option>
                  <option value="Bug">Bug</option>
                  <option value="Feature">Feature</option>
                </select>
            </div>

            <div class="form-group">
                <label class="font-weight-bold">Gravedad *</label>
                <select name="gravedadIncidencia" class="form-control" required="">
                  <option value="">Seleccione...</option>
                  <option value="High">High</option>
                  <option value="Medium">Medium</option>
                  <option value="Low">Low</option>
                </select>
            </div>

            <div class="form-group">
                <label class="font-weight-bold">Versi&oacute;n del software</label>
                <input name="versionSoftware" type="text" class="form-control">
            </div>

            <div class="form-group">
                <label class="font-weight-bold">Descripci&oacute;n *</label>
                <textarea name="descripcion" class="form-control" rows="3" required=""></textarea>
            </div>

            <div class="form-group">
                <label class="font-weight-bold">URL de captura de pantalla, video o audio</label>
                <input name="archivos" type="text" class="form-control">
            </div>

            <div class="form-group">
                <label class="font-weight-bold">URL de captura de pantalla, video o audio</label>
                <input name="archivos" type="text" class="form-control">
            </div>

            <div class="form-group">
                <label class="font-weight-bold">URL de captura de pantalla, video o audio</label>
                <input name="archivos" type="text" class="form-control">
            </div>

      </div>
      <div class="modal-footer">
        <button type="submit" class="btn btn-secondary">Guardar</button>
      </div>
    </form:form>
  </div>
</div>