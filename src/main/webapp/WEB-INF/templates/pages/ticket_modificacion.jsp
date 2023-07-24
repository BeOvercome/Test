<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<div class="modal fade ticket_modificacion_${ticket.id}" aria-hidden="true">
  <div class="modal-dialog modal-dialog-scrollable">
    <form:form action="/ticket/modificar/${ticket.id}" method="POST" modelAttribute="ticketEntity" class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Modificaci&oacute;n de Ticket</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">

            <div class="form-group">
                <label class="font-weight-bold">T&iacute;tulo *</label>
                <input name="titulo" type="text" class="form-control" required="" value="${ticket.titulo}">
            </div>

            <div class="form-group">
                <label class="font-weight-bold">Equipo</label>
                <input name="equipoResponsable" type="text" class="form-control" value="${ticket.equipoResponsable}">
            </div>

            <div class="form-group">
                <label class="font-weight-bold">Tipo *</label>
                <select name="tipoIncidencia" class="form-control" required="">
                  <option value="">Seleccione...</option>
                  <option value="Bug" ${ticket.tipoIncidencia != null? ticket.tipoIncidencia.equals("Bug")? "selected=''": "": ""}>Bug</option>
                  <option value="Feature" ${ticket.tipoIncidencia != null? ticket.tipoIncidencia.equals("Feature")? "selected=''": "": ""}>Feature</option>
                </select>
            </div>

            <div class="form-group">
                <label class="font-weight-bold">Gravedad *</label>
                <select name="gravedadIncidencia" class="form-control" required="">
                  <option value="">Seleccione...</option>
                  <option value="High" ${ticket.gravedadIncidencia != null? ticket.gravedadIncidencia.equals("High")? "selected=''": "": ""}>High</option>
                  <option value="Medium" ${ticket.gravedadIncidencia != null? ticket.gravedadIncidencia.equals("Medium")? "selected=''": "": ""}>Medium</option>
                  <option value="Low" ${ticket.gravedadIncidencia != null? ticket.gravedadIncidencia.equals("Low")? "selected=''": "": ""}>Low</option>
                </select>
            </div>

            <div class="form-group">
                <label class="font-weight-bold">Versi&oacute;n del software</label>
                <input name="versionSoftware" type="text" class="form-control" value="${ticket.versionSoftware}">
            </div>

            <div class="form-group">
                <label class="font-weight-bold">Descripci&oacute;n *</label>
                <textarea name="descripcion" class="form-control" rows="3" required="">${ticket.descripcion}</textarea>
            </div>

            <div class="form-group">
                <label class="font-weight-bold">Estado</label>
                <select name="estado" class="form-control" required="">
                  <option value="Nuevo" ${ticket.estado != null? ticket.estado.equals("Nuevo")? "selected=''": "": ""}>Nuevo</option>
                  <option value="En Proceso" ${ticket.estado != null? ticket.estado.equals("En Proceso")? "selected=''": "": ""}>En Proceso</option>
                  <option value="Atendido" ${ticket.estado != null? ticket.estado.equals("Atendido")? "selected=''": "": ""}>Atendido</option>
                </select>
            </div>

            <c:forEach var="archivo" items="${ticket.archivos}">
                <div class="form-group">
                    <label class="font-weight-bold">URL de captura de pantalla, video o audio</label>
                    <input name="archivos" type="text" class="form-control" value="${archivo}">
                </div>
            </c:forEach>

      </div>
      <div class="modal-footer">
        <button type="submit" class="btn btn-secondary">Guardar</button>
      </div>
    </form:form>
  </div>
</div>