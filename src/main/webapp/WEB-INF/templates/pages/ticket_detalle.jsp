<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<div class="modal fade ticket_detalle_${ticket.id}" aria-hidden="true">
  <div class="modal-dialog modal-dialog-scrollable">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Detalles del Ticket</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">

            <div class="form-group">
                <label class="font-weight-bold">N&uacute;mero</label>
                <p>
                    ${ticket.id}
                </p>
            </div>

            <div class="form-group">
                <label class="font-weight-bold">Fecha</label>
                <p>
                    ${ticket.fechaRegistro}
                </p>
            </div>

            <div class="form-group">
                <label class="font-weight-bold">T&iacute;tulo</label>
                <p>
                    ${ticket.titulo}
                </p>
            </div>

            <div class="form-group">
                <label class="font-weight-bold">Responsable</label>
                <p>
                    ${ticket.nombreResponsable}
                </p>
            </div>

            <div class="form-group">
                <label class="font-weight-bold">Equipo</label>
                <p>
                    ${ticket.equipoResponsable}
                </p>
            </div>

            <div class="form-group">
                <label class="font-weight-bold">Tipo</label>
                <p>
                    ${ticket.tipoIncidencia}
                </p>
            </div>

            <div class="form-group">
                <label class="font-weight-bold">Gravedad</label>
                <p>
                    ${ticket.gravedadIncidencia}
                </p>
            </div>

            <div class="form-group">
                <label class="font-weight-bold">Versi&oacute;n del software</label>
                <p>
                    ${ticket.versionSoftware}
                </p>
            </div>

            <div class="form-group">
                <label class="font-weight-bold">Descripci&oacute;n</label>
                <p>
                    ${ticket.descripcion}
                </p>
            </div>

            <div class="form-group">
                <label class="font-weight-bold">Estado</label>
                <p>
                    ${ticket.estado}
                </p>
            </div>

            <div class="form-group">
                <label class="font-weight-bold">Archivos</label>
                <p>
                    <c:forEach var="archivo" items="${ticket.archivos}">
                        - <a href="${archivo}" target="_blank">${archivo}</a>
                        <br/>
                    </c:forEach>
                </p>
            </div>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Cerrar</button>
      </div>
    </div>
  </div>
</div>