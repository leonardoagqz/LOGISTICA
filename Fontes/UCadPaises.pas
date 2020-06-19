unit UCadPaises;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Data.DB,
  System.Rtti, System.Bindings.Outputs, Vcl.Bind.Editors, Data.Bind.EngExt,
  Vcl.Bind.DBEngExt, Data.Bind.Components, Data.Bind.DBScope, Vcl.Mask,
  Vcl.DBCtrls;

type
  TFCadPaises = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    BtnCancelar: TButton;
    BtnSalvar: TButton;
    Label1: TLabel;
    EdtDescricao: TDBEdit;
    procedure BtnCancelarClick(Sender: TObject);
    procedure BtnCancelarKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormCreate(Sender: TObject);
    procedure BtnSalvarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BtnSalvarKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EdtDescricaoKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FCadPaises: TFCadPaises;

implementation

{$R *.dfm}

uses UDM, UUsuarios;

procedure TFCadPaises.BtnCancelarClick(Sender: TObject); //procedimento ao clicar em cancelar
begin                                                     //inicie
    dm.sql_paises.Cancel;                                //cancelar o estado da tabela
    Close;                                                //fechar
end;                                                      //fimbegin

procedure TFCadPaises.BtnCancelarKeyDown(Sender: TObject; var Key: Word; //procedimento botão ESC
  Shift: TShiftState);
begin                                                                     //inicie
    if key=VK_ESCAPE then                                                 //se a tecla ESC for pressionada então
    BtnCancelar.Click;                                                    //btncancelarclick será acionado
end;                                                                      //fimbegin

procedure TFCadPaises.BtnSalvarClick(Sender: TObject);
begin

  //--

   if EdtDescricao.Text = '' then
  begin
    ShowMessage('Descrição não Informado!');
    Edtdescricao.SetFocus;
    Exit
  end;



  if DM.sql_paises.State=dsInsert then
  begin
    DM.sql_Gen_paises.Close;
    DM.sql_Gen_paises.Open;
    DM.sql_paisesID_PAIS.AsInteger :=DM.sql_Gen_paisesID.Value;
    dm.sql_paisesNOME_PAIS.AsString       :=EdtDescricao.Text;
    DM.sql_paises.Post;
    ShowMessage('País cadastrado com sucesso!');
    DM.sql_paises.Refresh;
    Close;
  end;

  if DM.sql_paises.State=dsEdit then
  begin

    dm.sql_paisesNOME_PAIS.AsString       :=EdtDescricao.Text;


    DM.sql_paises.Post;

    ShowMessage('País alterado com sucesso!');
    DM.sql_paises.Refresh;
    Close;
  end;

end;

procedure TFCadPaises.BtnSalvarKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key=VK_ESCAPE then
  BtnCancelar.Click;
end;

procedure TFCadPaises.EdtDescricaoKeyPress(Sender: TObject; var Key: Char);
begin
   if Key = #13 then
  BtnSalvar.Click;
end;

procedure TFCadPaises.FormClose(Sender: TObject; var Action: TCloseAction);//procedimento ao fechar form
begin                                                                       //inicie
  {if dm.cdsUsuarios.State in [dsInsert,dsEdit] then                       //se minha tabela usuarios estiver com status insert ou edit então
  dm.cdsUsuarios.Cancel;}
  if DM.sql_paises.State in [dsInsert,dsEdit] then
  DM.sql_paises.Cancel;                                                 //cancela qualquer operação na tabela
end;                                                                        //fim

procedure TFCadPaises.FormCreate(Sender: TObject);
begin
  //EdtDescricao.SetFocus;
end;

end.
