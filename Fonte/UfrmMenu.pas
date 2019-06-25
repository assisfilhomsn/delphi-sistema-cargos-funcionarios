unit UfrmMenu;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UPrincipal, Vcl.Menus, UCadastroFuncionario, Vcl.ExtCtrls, UDM_3LM,
  URelatorioFuncoes;

type
  TfrmMenu = class(TfrmPrincipal)
    MainMenu1: TMainMenu;
    mntCadastros: TMenuItem;
    mntCadastroFunces: TMenuItem;
    mntCadastroFuncionrios: TMenuItem;
    mntRelatorios: TMenuItem;
    mntRelatorioFuncoes: TMenuItem;
    mntRelatorioFuncionarios: TMenuItem;
    mntRelatorioFuncionarioPorFuncao: TMenuItem;
    mntRelatorioFuncionarioAniversariantes: TMenuItem;
    mntSair: TMenuItem;
    procedure mntCadastroFuncesClick(Sender: TObject);
    procedure mntSairClick(Sender: TObject);
    procedure mntCadastroFuncionriosClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure mntRelatorioFuncoesClick(Sender: TObject);
    procedure mntRelatorioFuncionariosClick(Sender: TObject);
    procedure mntRelatorioFuncionarioPorFuncaoClick(Sender: TObject);
    procedure mntRelatorioFuncionarioAniversariantesClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmMenu: TfrmMenu;

implementation

{$R *.dfm}

uses UCadastroFuncoes, UFuncionarioDAO, URelatorioFuncionarios, UFuncionarioModel, URelatorioFuncionarioPorFuncao,
  URelatorioFuncionariosAniversariantes;

procedure TfrmMenu.FormCreate(Sender: TObject);
begin
  inherited;
  Panel1.Visible := False;
end;

procedure TfrmMenu.mntCadastroFuncesClick(Sender: TObject);
begin
  inherited;
  try
    Application.CreateForm(TfrmCadastroFuncoes, frmCadastroFuncoes);
    frmCadastroFuncoes.ShowModal;
  finally
    FreeAndNil(frmCadastroFuncoes);
  end;
end;

procedure TfrmMenu.mntCadastroFuncionriosClick(Sender: TObject);
begin
  inherited;
  try
    Application.CreateForm(TfrmCadastroFuncionario, frmCadastroFuncionario);
    frmCadastroFuncionario.ShowModal;
  finally
    FreeAndNil(frmCadastroFuncionario);
  end;
end;

procedure TfrmMenu.mntRelatorioFuncionarioAniversariantesClick(Sender: TObject);
begin
  inherited;
  try
    Application.CreateForm(TfrmRelatorioFuncionariosAniversariantes, frmRelatorioFuncionariosAniversariantes);
    frmRelatorioFuncionariosAniversariantes.ShowModal;
  finally
    FreeAndNil(frmRelatorioFuncionariosAniversariantes);
  end;
end;

procedure TfrmMenu.mntRelatorioFuncionarioPorFuncaoClick(Sender: TObject);
begin
  inherited;
  try
    Application.CreateForm(TfrmRelatorioFuncionarioPorFuncao, frmRelatorioFuncionarioPorFuncao);
    frmRelatorioFuncionarioPorFuncao.ShowModal;
  finally
    FreeAndNil(frmRelatorioFuncionarioPorFuncao);
  end;
end;

procedure TfrmMenu.mntRelatorioFuncionariosClick(Sender: TObject);
begin
  inherited;
  try
    Application.CreateForm(TfrmRelatorioFuncionarios, frmRelatorioFuncionarios);
    frmRelatorioFuncionarios.ShowModal;
  finally
    FreeAndNil(frmRelatorioFuncionarios);
  end;

end;

procedure TfrmMenu.mntRelatorioFuncoesClick(Sender: TObject);
begin
  inherited;
  try
    Application.CreateForm(TfrmRelatorioFuncoes, frmRelatorioFuncoes);
    frmRelatorioFuncoes.ShowModal;
  finally
    FreeAndNil(frmRelatorioFuncoes);
  end;
end;

procedure TfrmMenu.mntSairClick(Sender: TObject);
begin
  inherited;
  Application.Terminate;
end;

end.
