unit imm2virtual1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, StdCtrls,
  ExtCtrls, Buttons, ShellApi;

type

  { TForm1 }

  TForm1 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    aim: TImage;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    Edit1: TEdit;
    Edit2: TEdit;
    Image1: TImage;
    Image2: TImage;
    Image3: TImage;
    Image4: TImage;
    Image5: TImage;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Memo1: TMemo;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Image3Click(Sender: TObject);
    procedure Label5Click(Sender: TObject);
    procedure Label7Click(Sender: TObject);
    procedure Memo1Change(Sender: TObject);
  private
    { private declarations }
  public
    { public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.FormCreate(Sender: TObject);
begin

end;

procedure TForm1.Image3Click(Sender: TObject);
begin

end;

procedure TForm1.Edit1Change(Sender: TObject);
begin

end;

procedure TForm1.Button1Click(Sender: TObject);
begin
 ShellExecute(0,nil, PChar('"".\ArsenalImageMounter\ArsenalImageMounter.exe""'),nil,nil,1);
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
   ShellExecute(0, nil,Pchar('c:\windows\system32\cmd.exe'),Pchar('/k diskpart'), nil, 1);
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
  ShellExecute(0, nil,Pchar('c:\windows\system32\cmd.exe'),Pchar('/k ""C:\Program Files\Oracle\VirtualBox\VBoxManage.exe" internalcommands createrawvmdk -filename "%USERPROFILE%\VirtualBox VMs\'+Edit1.Text+'\'+Edit1.Text+'.vmdk" -rawdisk \\.\PhysicalDrive'+Edit2.Text+'"'), nil, 1);
end;

procedure TForm1.Button4Click(Sender: TObject);
begin
  ShellExecute(0,nil, PChar('""C:\Program Files\Oracle\VirtualBox\VirtualBox.exe""'),nil,nil,1);
end;

procedure TForm1.Button5Click(Sender: TObject);
begin
  Application.terminate;
end;


procedure TForm1.Label5Click(Sender: TObject);
begin

end;

procedure TForm1.Label7Click(Sender: TObject);
begin

end;

procedure TForm1.Memo1Change(Sender: TObject);
begin

end;

end.


