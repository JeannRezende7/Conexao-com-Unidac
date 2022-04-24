unit Principal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, DBAccess, Uni, System.Rtti,
  System.Bindings.Outputs, Vcl.Bind.Editors, Data.Bind.EngExt,
  Vcl.Bind.DBEngExt, Data.Bind.Components, Data.Bind.DBScope, Vcl.StdCtrls,
  MemDS, UniProvider, PostgreSQLUniProvider, Vcl.Grids, Vcl.DBGrids,
  Data.Bind.Controls, Vcl.ExtCtrls, Vcl.Buttons, Vcl.Bind.Navigator;

type
  Tfrm_principal = class(TForm)
    UniConnection1: TUniConnection;
    Button1: TButton;
    PostgreSQLUniProvider1: TPostgreSQLUniProvider;
    UniTable1: TUniTable;
    UniDataSource1: TUniDataSource;
    DBGrid1: TDBGrid;
    Edit1: TEdit;
    BindSourceDB1: TBindSourceDB;
    BindingsList1: TBindingsList;
    LinkControlToFielddsdetalhe: TLinkControlToField;
    NavigatorBindSourceDB1: TBindNavigator;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_principal: Tfrm_principal;

implementation

{$R *.dfm}

procedure Tfrm_principal.Button1Click(Sender: TObject);
begin
UniTable1.IndexFieldNames := 'Dsdetalhe';
end;

end.
