inherited frmMenu: TfrmMenu
  BorderIcons = [biSystemMenu]
  Caption = 'Menu'
  ClientHeight = 329
  ClientWidth = 695
  Menu = MainMenu1
  WindowState = wsMaximized
  OnCreate = FormCreate
  ExplicitWidth = 711
  ExplicitHeight = 388
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    Width = 695
    ExplicitWidth = 695
  end
  object MainMenu1: TMainMenu
    Left = 416
    Top = 48
    object mntCadastros: TMenuItem
      Caption = 'Cadastro'
      object mntCadastroFunces: TMenuItem
        Caption = 'Cadastro de Func'#231#245'es'
        OnClick = mntCadastroFuncesClick
      end
      object mntCadastroFuncionrios: TMenuItem
        Caption = 'Cadastro de Funcion'#225'rios'
        OnClick = mntCadastroFuncionriosClick
      end
    end
    object mntRelatorios: TMenuItem
      Caption = 'Relat'#243'rios'
      object mntRelatorioFuncoes: TMenuItem
        Caption = 'Relat'#243'rio de Fun'#231#245'es'
        OnClick = mntRelatorioFuncoesClick
      end
      object mntRelatorioFuncionarios: TMenuItem
        Caption = 'Relatorio de Funcion'#225'rios'
        OnClick = mntRelatorioFuncionariosClick
      end
      object mntRelatorioFuncionarioPorFuncao: TMenuItem
        Caption = 'Relatorio de Funcion'#225'rios por Fun'#231#227'o'
        OnClick = mntRelatorioFuncionarioPorFuncaoClick
      end
      object mntRelatorioFuncionarioAniversariantes: TMenuItem
        Caption = 'Relat'#243'rio de Funcion'#225'rios Aniversariantes'
        OnClick = mntRelatorioFuncionarioAniversariantesClick
      end
    end
    object mntSair: TMenuItem
      Caption = 'Sair'
      OnClick = mntSairClick
    end
  end
end
