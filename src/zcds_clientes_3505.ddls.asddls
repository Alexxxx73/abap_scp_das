@AbapCatalog.sqlViewName: 'ZV_CLIENTES'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Datos Clientes'
@Metadata.ignorePropagatedAnnotations: true

@Metadata.allowExtensions: true
define view ZCDS_CLIENTES_3505
  as select from ztb_cln_lib_3505 as _CLN
  association [1..*] to ztb_cliente_3505 as _clientes
  on _CLN.id_cliente = _clientes.id_cliente
{
  key _CLN.id_cliente,
  key _CLN.id_libro,
  _clientes.tipo_acceso as TipoAcceso,
  _clientes.nombre as Nombre,
  _clientes.apellidos as Apellidos,
  _clientes.email as Email,
  _clientes.url as Url

}
