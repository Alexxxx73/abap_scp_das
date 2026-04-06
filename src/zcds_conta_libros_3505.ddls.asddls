@AbapCatalog.sqlViewName: 'ZV_CON_LIBRO_05'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Contador de Libros'
@Metadata.ignorePropagatedAnnotations: true
define view ZCDS_CONTA_LIBROS_3505 as select from ztb_cln_lib_3505
{ key id_libro,
  sum(vendido) as VENDIDOS
    
} group by id_libro
