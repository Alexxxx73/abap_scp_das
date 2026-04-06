@AbapCatalog.sqlViewName: 'ZV_LIBROS'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Biblioteca virtual'
@Metadata.ignorePropagatedAnnotations: true

@Metadata.allowExtensions: true
define view ZCDS_LIBROS_3505
  as select from ztb_libros_3505 as _libros
  association [1]    to ZCDS_CONTA_LIBROS_3505 as _conta    on _libros.id_libro = _conta.id_libro
{
  key _libros.id_libro  as IdLibro,
  key _libros.bi_categ  as BiCateg,
      _libros.titulo    as Titulo,
      _libros.autor     as Autor,
      _libros.editorial as Editorial,
      _libros.idioma    as Idioma,
      _libros.paginas   as Paginas,
      _libros.precio    as Precio,
      _libros.moneda    as Moneda,
      _libros.formato   as Formato,
      _libros.url       as Url,
      _conta.VENDIDOS
}
