*bapi_quotation_createfromdata
* importing value(order_header_in)  type bapisdhead
*  value(without_commit)  type bapi_ncomt default space
*  value(convert_parvw_auart)  type char1 default space
* exporting value(salesdocument)  type vbeln_va
*  value(sold_to_party)  type bapisoldto
*  value(ship_to_party)  type bapishipto
*  value(billing_party)  type bapipayer
*  value(return)  type bapireturn1
* tables order_items_in  type standard table of bapiitemin with header line
*  order_partners  type standard table of bapipartnr with header line
*  order_items_out  type standard table of bapiitemex with header line
*  order_cfgs_ref  type standard table of bapicucfg with header line
*  order_cfgs_inst  type standard table of bapicuins with header line
*  order_cfgs_part_of  type standard table of bapicuprt with header line
*  order_cfgs_value  type standard table of bapicuval with header line
*
*
*Documentation
*
*Customer Quotation: Create Customer Quotation
*
*Longtext Documentation  Longtext Documentation
*
*Parameters
*
*
*importing  order_header_in   Quotation Header
*importing  without_commit   Without commit?
*importing  convert_parvw_auart   Conversion of partner function + order type
*exporting  salesdocument   Sales and Distribution Document Number
*exporting  sold_to_party   Sold-to party
*exporting  ship_to_party   Ship-to party
*exporting  billing_party   Payer
*exporting  return   Error Text
*tables  order_items_in   Item data input
*tables  order_partners   Partners
*tables  order_items_out   Item data output
*tables  order_cfgs_ref   Configuration: Reference data
*tables  order_cfgs_inst   Configuration: Instances
*tables  order_cfgs_part_of   Configuration: Part-of specifications
*tables  order_cfgs_value   Configuration: Characteristic values

data: lt_order_header_in  type bapisdhead.
data: lt_order_items_in  type standard table of bapiitemin.
data: ls_order_items_in like line of lt_order_items_in.

data: lt_return        type bapireturn1,
      lv_salesdocument type vbeln_va.

data: lt_order_partners  type standard table of bapipartnr .
data: ls_order_partners like line of lt_order_partners.
data: lt_order_items_out  type standard table of bapiitemex.
data: ls_order_items_out like line of lt_order_items_out.

data: lv_sold_to_party type bapisoldto,
      lv_ship_to_party type bapishipto.
