unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm1 = class(TForm)
    Edit1: TEdit;
    Label1: TLabel;
    Edit2: TEdit;
    Label2: TLabel;
    Edit3: TEdit;
    Label3: TLabel;
    Edit4: TEdit;
    Label4: TLabel;
    Edit9: TEdit;
    Label9: TLabel;
    Edit10: TEdit;
    Label10: TLabel;
    Edit11: TEdit;
    Label11: TLabel;
    Edit12: TEdit;
    Label12: TLabel;
    Edit5: TEdit;
    Label5: TLabel;
    Edit6: TEdit;
    Label6: TLabel;
    Edit7: TEdit;
    Label7: TLabel;
    Edit8: TEdit;
    Label8: TLabel;
    Edit13: TEdit;
    Label13: TLabel;
    Edit14: TEdit;
    Label14: TLabel;
    Edit15: TEdit;
    Label15: TLabel;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    RadioButton3: TRadioButton;
    Button1: TButton;
    Button2: TButton;
    Edit16: TEdit;
    Label16: TLabel;
    ListBox1: TListBox;

    procedure FormCreate(Sender: TObject);
    procedure RadioButton1Click(Sender: TObject);
    procedure RadioButton2Click(Sender: TObject);
    procedure RadioButton3Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
     private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
    A: array[0..19] of integer;
    i: integer;
    s: integer;
    g: integer;
    d: integer;
    q: integer;
    t: integer;
    implementation

{$R *.dfm}



procedure TForm1.FormCreate(Sender: TObject);
begin
A[0]:=10;
For i:=1 to 19 do
A[i]:=A[i-1]+1;

randomize;

For i:=0 to 19 do
Edit16.Text:=Edit16.Text + IntToStr(A[i]) +',';
end;


procedure TForm1.RadioButton1Click(Sender: TObject);
begin
edit1.Enabled:=true;
edit2.Enabled:=true;
edit3.Enabled:=true;
edit4.Enabled:=true;
edit5.Enabled:=true;
edit6.Enabled:=false;
edit7.Enabled:=false;
edit8.Enabled:=false;
edit9.Enabled:=false;
edit10.Enabled:=false;
edit11.Enabled:=false;
edit12.Enabled:=false;
edit13.Enabled:=false;
edit14.Enabled:=false;
edit15.Enabled:=false;
edit1.Color:=clyellow;
edit2.Color:=claqua;
edit3.Color:=claqua;
edit4.Color:=clsilver;
edit5.Color:=clsilver;

end;

procedure TForm1.RadioButton2Click(Sender: TObject);
begin
edit1.Enabled:=true;
edit2.Enabled:=true;
edit3.Enabled:=true;
edit4.Enabled:=true;
edit5.Enabled:=true;
edit6.Enabled:=true;
edit7.Enabled:=true;
edit8.Enabled:=true;
edit9.Enabled:=true;
edit10.Enabled:=true;
edit11.Enabled:=false;
edit12.Enabled:=false;
edit13.Enabled:=false;
edit14.Enabled:=false;
edit15.Enabled:=false;
edit1.Color:=clyellow;
edit2.Color:=clyellow;
edit3.Color:=claqua;
edit4.Color:=claqua;
edit5.Color:=claqua;
edit6.Color:=claqua;
edit7.Color:=clsilver;
edit8.Color:=clsilver;
edit9.Color:=clsilver;
edit10.Color:=clsilver;
end;

procedure TForm1.RadioButton3Click(Sender: TObject);
begin
edit1.Enabled:=true;
edit2.Enabled:=true;
edit3.Enabled:=true;
edit4.Enabled:=true;
edit5.Enabled:=true;
edit6.Enabled:=true;
edit7.Enabled:=true;
edit8.Enabled:=true;
edit9.Enabled:=true;
edit10.Enabled:=true;
edit11.Enabled:=true;
edit12.Enabled:=true;
edit13.Enabled:=true;
edit14.Enabled:=true;
edit15.Enabled:=true;
edit1.Color:=clyellow;
edit2.Color:=clyellow;
edit3.Color:=clyellow;
edit4.Color:=claqua;
edit5.Color:=claqua;
edit6.Color:=claqua;
edit7.Color:=claqua;
edit8.Color:=claqua;
edit9.Color:=claqua;
edit10.Color:=clsilver;
edit11.Color:=clsilver;
edit12.Color:=clsilver;
edit13.Color:=clsilver;
edit14.Color:=clsilver;
edit15.Color:=clsilver;
end;

procedure TForm1.Button1Click(Sender: TObject);
begin
If radiobutton1.Checked=true then begin
g:=A[0];
for i:=0 to 19 do
A[i]:=A[i+1];
A[19]:=g;
Edit16.Text:='';
for i:=0 to 19 do
Edit16.Text:=Edit16.Text + IntToStr(A[i]) +',';

If g<=20 then begin
s:=random(20)+1;
If s<=10 then begin
Edit1.Text:=IntToStr(g);
t:=random(2)+1;
ListBox1.Items.Add('Корабль номер ' + Edit1.Text + ' прибыл в ' + Label1.Caption);
ListBox1.Items.Add('Корабль номер ' + Edit1.Text + ' завершил разгурзку за ' + IntTostr(t) + ' часов и готовиться к отправлению ');
end;
If s>10 then begin
d:=random(20);
If d<=10 then begin
Edit2.Text:=IntToStr(g);
t:=random(3)+1;
ListBox1.Items.Add('Корабль номер ' + Edit2.Text + ' прибыл в ' + Label2.Caption);
ListBox1.Items.Add('Корабль номер ' + Edit2.Text + ' завершил разгурзку за ' + IntTostr(t) + ' часов и готовиться к отправлению ');
end;
If d>=10 then begin
Edit3.Text:=IntToStr(g);
t:=random(3)+1;
ListBox1.Items.Add('Корабль номер ' + Edit3.Text + ' прибыл в ' + Label2.Caption);
ListBox1.Items.Add('Корабль номер ' + Edit3.Text + ' завершил разгурзку за ' + IntTostr(t) + ' часов и готовиться к отправлению ');
end;
end;
end;

If g>20 then begin
s:=random(20)+1;
If s<=10 then begin
Edit1.Text:=IntToStr(g);
t:=random(2)+1;
ListBox1.Items.Add('Корабль номер ' + Edit1.Text + ' прибыл в ' + Label1.Caption);
ListBox1.Items.Add('Корабль номер ' + Edit1.Text + ' завершил разгурзку за ' + IntTostr(t) + ' часов и готовиться к отправлению ');
end;
If s>10 then begin
d:=random(20);
If d<=10 then begin
Edit4.Text:=IntToStr(g);
t:=random(3)+1;
ListBox1.Items.Add('Корабль номер ' + Edit4.Text + ' прибыл в ' + Label4.Caption);
ListBox1.Items.Add('Корабль номер ' + Edit4.Text + ' завершил разгурзку за ' + IntTostr(t) + ' часов и готовиться к отправлению ');
end;
If d>=10 then begin
Edit5.Text:=IntToStr(g);
t:=random(3)+1;
ListBox1.Items.Add('Корабль номер ' + Edit5.Text + ' прибыл в ' + Label5.Caption);
ListBox1.Items.Add('Корабль номер ' + Edit5.Text + ' завершил разгурзку за ' + IntTostr(t) + ' часов и готовиться к отправлению ');
end;
end;
end;
end;

If radiobutton2.Checked then begin
g:=A[0];
for i:=0 to 19 do
A[i]:=A[i+1];
A[19]:=g;
Edit16.Text:='';
for i:=0 to 19 do
Edit16.Text:=Edit16.Text + IntToStr(A[i]) +',';

If g<=20 then begin
s:=random(20)+1;
If s<=10 then begin
d:=random(20)+1;
If d<=10 then begin
Edit1.Text:=IntToStr(g);
t:=random(2)+1;
ListBox1.Items.Add('Корабль номер ' + Edit1.Text + ' прибыл в ' + Label1.Caption);
ListBox1.Items.Add('Корабль номер ' + Edit1.Text + ' завершил разгурзку за ' + IntTostr(t) + ' часов и готовиться к отправлению ');
end;

If d>10 then begin
Edit2.Text:=IntToStr(g);
t:=random(2)+1;
ListBox1.Items.Add('Корабль номер ' + Edit2.Text + ' прибыл в ' + Label2.Caption);
ListBox1.Items.Add('Корабль номер ' + Edit2.Text + ' завершил разгурзку за ' + IntTostr(t) + ' часов и готовиться к отправлению ');
end;
end;


If s>10 then begin
d:=random(40);
If d<=10 then begin
Edit3.Text:=IntToStr(g);
t:=random(3)+1;
ListBox1.Items.Add('Корабль номер ' + Edit3.Text + ' прибыл в ' + Label3.Caption);
ListBox1.Items.Add('Корабль номер ' + Edit3.Text + ' завершил разгурзку за ' + IntTostr(t) + ' часов и готовиться к отправлению ');
end;
If d in [11..20] then begin
Edit4.Text:=IntToStr(g);
t:=random(3)+1;
ListBox1.Items.Add('Корабль номер ' + Edit4.Text + ' прибыл в ' + Label4.Caption);
ListBox1.Items.Add('Корабль номер ' + Edit4.Text + ' завершил разгурзку за ' + IntTostr(t) + ' часов и готовиться к отправлению ');
end;
If d in [21..30] then begin
Edit5.Text:=IntToStr(g);
t:=random(3)+1;
ListBox1.Items.Add('Корабль номер ' + Edit5.Text + ' прибыл в ' + Label5.Caption);
ListBox1.Items.Add('Корабль номер ' + Edit5.Text + ' завершил разгурзку за ' + IntTostr(t) + ' часов и готовиться к отправлению ');
end;
If d in [31..40] then begin
Edit6.Text:=IntToStr(g);
t:=random(3)+1;
ListBox1.Items.Add('Корабль номер ' + Edit6.Text + ' прибыл в ' + Label6.Caption);
ListBox1.Items.Add('Корабль номер ' + Edit6.Text + ' завершил разгурзку за ' + IntTostr(t) + ' часов и готовиться к отправлению ');
end;
end;
end;
If g>20 then begin
s:=random(20)+1;
If s<=10 then begin
d:=random(20);
If d<=10 then begin
Edit1.Text:=IntToStr(g);
t:=random(2)+1;
ListBox1.Items.Add('Корабль номер ' + Edit1.Text + ' прибыл в ' + Label1.Caption);
ListBox1.Items.Add('Корабль номер ' + Edit1.Text + ' завершил разгурзку за ' + IntTostr(t) + ' часов и готовиться к отправлению ');
end;

If d>10 then begin
Edit2.Text:=IntToStr(g);
t:=random(2)+1;
ListBox1.Items.Add('Корабль номер ' + Edit2.Text + ' прибыл в ' + Label2.Caption);
ListBox1.Items.Add('Корабль номер ' + Edit2.Text + ' завершил разгурзку за ' + IntTostr(t) + ' часов и готовиться к отправлению ');
end;
end;

If s>10 then begin
d:=random(40)+1;
If d<=10 then begin
Edit7.Text:=IntToStr(g);
t:=random(3)+1;
ListBox1.Items.Add('Корабль номер ' + Edit7.Text + ' прибыл в ' + Label7.Caption);
ListBox1.Items.Add('Корабль номер ' + Edit7.Text + ' завершил разгурзку за ' + IntTostr(t) + ' часов и готовиться к отправлению ');
end;
If d in [11..20] then begin
Edit8.Text:=IntToStr(g);
t:=random(3)+1;
ListBox1.Items.Add('Корабль номер ' + Edit8.Text + ' прибыл в ' + Label8.Caption);
ListBox1.Items.Add('Корабль номер ' + Edit8.Text + ' завершил разгурзку за ' + IntTostr(t) + ' часов и готовиться к отправлению ');
end;
If d in [21..30] then begin
Edit9.Text:=IntToStr(g);
t:=random(3)+1;
ListBox1.Items.Add('Корабль номер ' + Edit9.Text + ' прибыл в ' + Label9.Caption);
ListBox1.Items.Add('Корабль номер ' + Edit9.Text + ' завершил разгурзку за ' + IntTostr(t) + ' часов и готовиться к отправлению ');
end;
If d in [31..40] then begin
Edit10.Text:=IntToStr(g);
t:=random(3)+1;
ListBox1.Items.Add('Корабль номер ' + Edit10.Text + ' прибыл в ' + Label10.Caption);
ListBox1.Items.Add('Корабль номер ' + Edit10.Text + ' завершил разгурзку за ' + IntTostr(t) + ' часов и готовиться к отправлению ');
end;
end;
end;
end;

If radiobutton3.Checked then begin
g:=A[0];
for i:=0 to 19 do
A[i]:=A[i+1];
A[19]:=g;
Edit16.Text:='';
for i:=0 to 19 do
Edit16.Text:=Edit16.Text + IntToStr(A[i]) +',';

If g<=20 then begin
s:=random(20)+1;
If s<=10 then begin
d:=random(30)+1;
If d<10 then begin
Edit1.Text:=IntToStr(g);
t:=random(2)+1;
ListBox1.Items.Add('Корабль номер ' + Edit1.Text + ' прибыл в ' + Label1.Caption);
ListBox1.Items.Add('Корабль номер ' + Edit1.Text + ' завершил разгурзку за ' + IntTostr(t) + ' часов и готовиться к отправлению ');
end;

If d in [10..19] then begin
Edit2.Text:=IntToStr(g);
t:=random(2)+1;
ListBox1.Items.Add('Корабль номер ' + Edit2.Text + ' прибыл в ' + Label2.Caption);
ListBox1.Items.Add('Корабль номер ' + Edit2.Text + ' завершил разгурзку за ' + IntTostr(t) + ' часов и готовиться к отправлению ');
end;
If d in [20..29] then begin
Edit3.Text:=IntToStr(g);
t:=random(2)+1;
ListBox1.Items.Add('Корабль номер ' + Edit3.Text + ' прибыл в ' + Label3.Caption);
ListBox1.Items.Add('Корабль номер ' + Edit3.Text + ' завершил разгурзку за ' + IntTostr(t) + ' часов и готовиться к отправлению ');
end;
end;


If s>10 then begin
d:=random(60)+1;
If d<=10 then begin
Edit4.Text:=IntToStr(g);
t:=random(3)+1;
ListBox1.Items.Add('Корабль номер ' + Edit4.Text + ' прибыл в ' + Label4.Caption);
ListBox1.Items.Add('Корабль номер ' + Edit4.Text + ' завершил разгурзку за ' + IntTostr(t) + ' часов и готовиться к отправлению ');
end;
If d in [11..20] then begin
Edit5.Text:=IntToStr(g);
t:=random(3)+1;
ListBox1.Items.Add('Корабль номер ' + Edit5.Text + ' прибыл в ' + Label5.Caption);
ListBox1.Items.Add('Корабль номер ' + Edit5.Text + ' завершил разгурзку за ' + IntTostr(t) + ' часов и готовиться к отправлению ');
end;
If d in [21..30] then begin
Edit6.Text:=IntToStr(g);
t:=random(3)+1;
ListBox1.Items.Add('Корабль номер ' + Edit6.Text + ' прибыл в ' + Label6.Caption);
ListBox1.Items.Add('Корабль номер ' + Edit6.Text + ' завершил разгурзку за ' + IntTostr(t) + ' часов и готовиться к отправлению ');
end;
If d in [31..40] then begin
Edit7.Text:=IntToStr(g);
t:=random(3)+1;
ListBox1.Items.Add('Корабль номер ' + Edit7.Text + ' прибыл в ' + Label7.Caption);
ListBox1.Items.Add('Корабль номер ' + Edit7.Text + ' завершил разгурзку за ' + IntTostr(t) + ' часов и готовиться к отправлению ');
end;
If d in [41..50] then begin
Edit8.Text:=IntToStr(g);
t:=random(3)+1;
ListBox1.Items.Add('Корабль номер ' + Edit8.Text + ' прибыл в ' + Label8.Caption);
ListBox1.Items.Add('Корабль номер ' + Edit8.Text + ' завершил разгурзку за ' + IntTostr(t) + ' часов и готовиться к отправлению ');
end;
If d in [51..56] then begin
Edit9.Text:=IntToStr(g);
t:=random(3)+1;
ListBox1.Items.Add('Корабль номер ' + Edit9.Text + ' прибыл в ' + Label9.Caption);
ListBox1.Items.Add('Корабль номер ' + Edit9.Text + ' завершил разгурзку за ' + IntTostr(t) + ' часов и готовиться к отправлению ');
end;
end;
end;
If g>20 then begin
s:=random(20)+1;
If s<=10 then begin
d:=random(30)+1;
If d<10 then begin
Edit1.Text:=IntToStr(g);
t:=random(2)+1;
ListBox1.Items.Add('Корабль номер ' + Edit1.Text + ' прибыл в ' + Label1.Caption);
ListBox1.Items.Add('Корабль номер ' + Edit1.Text + ' завершил разгурзку за ' + IntTostr(t) + ' часов и готовиться к отправлению ');
end;

If d in [10..19] then begin
Edit2.Text:=IntToStr(g);
t:=random(2)+1;
ListBox1.Items.Add('Корабль номер ' + Edit2.Text + ' прибыл в ' + Label2.Caption);
ListBox1.Items.Add('Корабль номер ' + Edit2.Text + ' завершил разгурзку за ' + IntTostr(t) + ' часов и готовиться к отправлению ');
end;
If d in [20..29] then begin
Edit3.Text:=IntToStr(g);
t:=random(2)+1;
ListBox1.Items.Add('Корабль номер ' + Edit3.Text + ' прибыл в ' + Label3.Caption);
ListBox1.Items.Add('Корабль номер ' + Edit3.Text + ' завершил разгурзку за ' + IntTostr(t) + ' часов и готовиться к отправлению ');
end;
end;
If s>10 then begin
d:=random(60)+1;
If d<=10 then begin
Edit10.Text:=IntToStr(g);
t:=random(3)+1;
ListBox1.Items.Add('Корабль номер ' + Edit10.Text + ' прибыл в ' + Label10.Caption);
ListBox1.Items.Add('Корабль номер ' + Edit10.Text + ' завершил разгурзку за ' + IntTostr(t) + ' часов и готовиться к отправлению ');
end;
If d in [11..20] then begin
Edit11.Text:=IntToStr(g);
t:=random(3)+1;
ListBox1.Items.Add('Корабль номер ' + Edit11.Text + ' прибыл в ' + Label1.Caption);
ListBox1.Items.Add('Корабль номер ' + Edit11.Text + ' завершил разгурзку за ' + IntTostr(t) + ' часов и готовиться к отправлению ');
end;
If d in [21..30] then begin
Edit12.Text:=IntToStr(g);
t:=random(3)+1;
ListBox1.Items.Add('Корабль номер ' + Edit12.Text + ' прибыл в ' + Label12.Caption);
ListBox1.Items.Add('Корабль номер ' + Edit12.Text + ' завершил разгурзку за ' + IntTostr(t) + ' часов и готовиться к отправлению ');
end;
If d in [31..40] then begin
Edit13.Text:=IntToStr(g);
t:=random(3)+1;
ListBox1.Items.Add('Корабль номер ' + Edit13.Text + ' прибыл в ' + Label13.Caption);
ListBox1.Items.Add('Корабль номер ' + Edit13.Text + ' завершил разгурзку за ' + IntTostr(t) + ' часов и готовиться к отправлению ');
end;
If d in [41..50] then begin
Edit14.Text:=IntToStr(g);
t:=random(3)+1;
ListBox1.Items.Add('Корабль номер ' + Edit14.Text + ' прибыл в ' + Label14.Caption);
ListBox1.Items.Add('Корабль номер ' + Edit14.Text + ' завершил разгурзку за ' + IntTostr(t) + ' часов и готовиться к отправлению ');
end;
If d in [51..56] then begin
Edit15.Text:=IntToStr(g);
t:=random(3)+1;
ListBox1.Items.Add('Корабль номер ' + Edit15.Text + ' прибыл в ' + Label15.Caption);
ListBox1.Items.Add('Корабль номер ' + Edit15.Text + ' завершил разгурзку за ' + IntTostr(t) + ' часов и готовиться к отправлению ');
end;
end;
end;
end;



end;



procedure TForm1.Button2Click(Sender: TObject);
begin
If radiobutton1.Checked=true then begin
g:=A[0];
for i:=0 to 19 do
A[i]:=A[i+1];
A[19]:=g;
Edit16.Text:='';
for i:=0 to 19 do
Edit16.Text:=Edit16.Text + IntToStr(A[i]) +',';

If g<=20 then begin
s:=random(20)+1;
If s<=10 then begin
Edit1.Text:=IntToStr(g);
t:=random(2)+1;
ListBox1.Items.Add('Корабль номер ' + Edit1.Text + ' прибыл в ' + Label1.Caption);
ListBox1.Items.Add('Корабль номер ' + Edit1.Text + ' завершил разгурзку за ' + IntTostr(t) + ' часов и готовиться к отправлению ');
end;
If s>10 then begin
d:=random(20);
If d<=10 then begin
Edit2.Text:=IntToStr(g);
t:=random(3)+1;
ListBox1.Items.Add('Корабль номер ' + Edit2.Text + ' прибыл в ' + Label2.Caption);
ListBox1.Items.Add('Корабль номер ' + Edit2.Text + ' завершил разгурзку за ' + IntTostr(t) + ' часов и готовиться к отправлению ');
end;
If d>=10 then begin
Edit3.Text:=IntToStr(g);
t:=random(3)+1;
ListBox1.Items.Add('Корабль номер ' + Edit3.Text + ' прибыл в ' + Label2.Caption);
ListBox1.Items.Add('Корабль номер ' + Edit3.Text + ' завершил разгурзку за ' + IntTostr(t) + ' часов и готовиться к отправлению ');
end;
end;
end;

If g>20 then begin
s:=random(20)+1;
If s<=10 then begin
Edit1.Text:=IntToStr(g);
t:=random(2)+1;
ListBox1.Items.Add('Корабль номер ' + Edit1.Text + ' прибыл в ' + Label1.Caption);
ListBox1.Items.Add('Корабль номер ' + Edit1.Text + ' завершил разгурзку за ' + IntTostr(t) + ' часов и готовиться к отправлению ');
end;
If s>10 then begin
d:=random(20);
If d<=10 then begin
Edit4.Text:=IntToStr(g);
t:=random(3)+1;
ListBox1.Items.Add('Корабль номер ' + Edit4.Text + ' прибыл в ' + Label4.Caption);
ListBox1.Items.Add('Корабль номер ' + Edit4.Text + ' завершил разгурзку за ' + IntTostr(t) + ' часов и готовиться к отправлению ');
end;
If d>=10 then begin
Edit5.Text:=IntToStr(g);
t:=random(3)+1;
ListBox1.Items.Add('Корабль номер ' + Edit5.Text + ' прибыл в ' + Label5.Caption);
ListBox1.Items.Add('Корабль номер ' + Edit5.Text + ' завершил разгурзку за ' + IntTostr(t) + ' часов и готовиться к отправлению ');
end;
end;
end;
end;

If radiobutton2.Checked then begin
g:=A[0];
for i:=0 to 19 do
A[i]:=A[i+1];
A[19]:=g;
Edit16.Text:='';
for i:=0 to 19 do
Edit16.Text:=Edit16.Text + IntToStr(A[i]) +',';

If g<=20 then begin
s:=random(20)+1;
If s<=10 then begin
d:=random(20)+1;
If d<=10 then begin
Edit1.Text:=IntToStr(g);
t:=random(2)+1;
ListBox1.Items.Add('Корабль номер ' + Edit1.Text + ' прибыл в ' + Label1.Caption);
ListBox1.Items.Add('Корабль номер ' + Edit1.Text + ' завершил разгурзку за ' + IntTostr(t) + ' часов и готовиться к отправлению ');
end;

If d>10 then begin
Edit2.Text:=IntToStr(g);
t:=random(2)+1;
ListBox1.Items.Add('Корабль номер ' + Edit2.Text + ' прибыл в ' + Label2.Caption);
ListBox1.Items.Add('Корабль номер ' + Edit2.Text + ' завершил разгурзку за ' + IntTostr(t) + ' часов и готовиться к отправлению ');
end;
end;


If s>10 then begin
d:=random(40);
If d<=10 then begin
Edit3.Text:=IntToStr(g);
t:=random(3)+1;
ListBox1.Items.Add('Корабль номер ' + Edit3.Text + ' прибыл в ' + Label3.Caption);
ListBox1.Items.Add('Корабль номер ' + Edit3.Text + ' завершил разгурзку за ' + IntTostr(t) + ' часов и готовиться к отправлению ');
end;
If d in [11..20] then begin
Edit4.Text:=IntToStr(g);
t:=random(3)+1;
ListBox1.Items.Add('Корабль номер ' + Edit4.Text + ' прибыл в ' + Label4.Caption);
ListBox1.Items.Add('Корабль номер ' + Edit4.Text + ' завершил разгурзку за ' + IntTostr(t) + ' часов и готовиться к отправлению ');
end;
If d in [21..30] then begin
Edit5.Text:=IntToStr(g);
t:=random(3)+1;
ListBox1.Items.Add('Корабль номер ' + Edit5.Text + ' прибыл в ' + Label5.Caption);
ListBox1.Items.Add('Корабль номер ' + Edit5.Text + ' завершил разгурзку за ' + IntTostr(t) + ' часов и готовиться к отправлению ');
end;
If d in [31..40] then begin
Edit6.Text:=IntToStr(g);
t:=random(3)+1;
ListBox1.Items.Add('Корабль номер ' + Edit6.Text + ' прибыл в ' + Label6.Caption);
ListBox1.Items.Add('Корабль номер ' + Edit6.Text + ' завершил разгурзку за ' + IntTostr(t) + ' часов и готовиться к отправлению ');
end;
end;
end;
If g>20 then begin
s:=random(20)+1;
If s<=10 then begin
d:=random(20);
If d<=10 then begin
Edit1.Text:=IntToStr(g);
t:=random(2)+1;
ListBox1.Items.Add('Корабль номер ' + Edit1.Text + ' прибыл в ' + Label1.Caption);
ListBox1.Items.Add('Корабль номер ' + Edit1.Text + ' завершил разгурзку за ' + IntTostr(t) + ' часов и готовиться к отправлению ');
end;

If d>10 then begin
Edit2.Text:=IntToStr(g);
t:=random(2)+1;
ListBox1.Items.Add('Корабль номер ' + Edit2.Text + ' прибыл в ' + Label2.Caption);
ListBox1.Items.Add('Корабль номер ' + Edit2.Text + ' завершил разгурзку за ' + IntTostr(t) + ' часов и готовиться к отправлению ');
end;
end;

If s>10 then begin
d:=random(40)+1;
If d<=10 then begin
Edit7.Text:=IntToStr(g);
t:=random(3)+1;
ListBox1.Items.Add('Корабль номер ' + Edit7.Text + ' прибыл в ' + Label7.Caption);
ListBox1.Items.Add('Корабль номер ' + Edit7.Text + ' завершил разгурзку за ' + IntTostr(t) + ' часов и готовиться к отправлению ');
end;
If d in [11..20] then begin
Edit8.Text:=IntToStr(g);
t:=random(3)+1;
ListBox1.Items.Add('Корабль номер ' + Edit8.Text + ' прибыл в ' + Label8.Caption);
ListBox1.Items.Add('Корабль номер ' + Edit8.Text + ' завершил разгурзку за ' + IntTostr(t) + ' часов и готовиться к отправлению ');
end;
If d in [21..30] then begin
Edit9.Text:=IntToStr(g);
t:=random(3)+1;
ListBox1.Items.Add('Корабль номер ' + Edit9.Text + ' прибыл в ' + Label9.Caption);
ListBox1.Items.Add('Корабль номер ' + Edit9.Text + ' завершил разгурзку за ' + IntTostr(t) + ' часов и готовиться к отправлению ');
end;
If d in [31..40] then begin
Edit10.Text:=IntToStr(g);
t:=random(3)+1;
ListBox1.Items.Add('Корабль номер ' + Edit10.Text + ' прибыл в ' + Label10.Caption);
ListBox1.Items.Add('Корабль номер ' + Edit10.Text + ' завершил разгурзку за ' + IntTostr(t) + ' часов и готовиться к отправлению ');
end;
end;
end;
end;

If radiobutton3.Checked then begin
g:=A[0];
for i:=0 to 19 do
A[i]:=A[i+1];
A[19]:=g;
Edit16.Text:='';
for i:=0 to 19 do
Edit16.Text:=Edit16.Text + IntToStr(A[i]) +',';

If g<=20 then begin
s:=random(20)+1;
If s<=10 then begin
d:=random(30)+1;
If d<10 then begin
Edit1.Text:=IntToStr(g);
t:=random(2)+1;
ListBox1.Items.Add('Корабль номер ' + Edit1.Text + ' прибыл в ' + Label1.Caption);
ListBox1.Items.Add('Корабль номер ' + Edit1.Text + ' завершил разгурзку за ' + IntTostr(t) + ' часов и готовиться к отправлению ');
end;

If d in [10..19] then begin
Edit2.Text:=IntToStr(g);
t:=random(2)+1;
ListBox1.Items.Add('Корабль номер ' + Edit2.Text + ' прибыл в ' + Label2.Caption);
ListBox1.Items.Add('Корабль номер ' + Edit2.Text + ' завершил разгурзку за ' + IntTostr(t) + ' часов и готовиться к отправлению ');
end;
If d in [20..29] then begin
Edit3.Text:=IntToStr(g);
t:=random(2)+1;
ListBox1.Items.Add('Корабль номер ' + Edit3.Text + ' прибыл в ' + Label3.Caption);
ListBox1.Items.Add('Корабль номер ' + Edit3.Text + ' завершил разгурзку за ' + IntTostr(t) + ' часов и готовиться к отправлению ');
end;
end;


If s>10 then begin
d:=random(60)+1;
If d<=10 then begin
Edit4.Text:=IntToStr(g);
t:=random(3)+1;
ListBox1.Items.Add('Корабль номер ' + Edit4.Text + ' прибыл в ' + Label4.Caption);
ListBox1.Items.Add('Корабль номер ' + Edit4.Text + ' завершил разгурзку за ' + IntTostr(t) + ' часов и готовиться к отправлению ');
end;
If d in [11..20] then begin
Edit5.Text:=IntToStr(g);
t:=random(3)+1;
ListBox1.Items.Add('Корабль номер ' + Edit5.Text + ' прибыл в ' + Label5.Caption);
ListBox1.Items.Add('Корабль номер ' + Edit5.Text + ' завершил разгурзку за ' + IntTostr(t) + ' часов и готовиться к отправлению ');
end;
If d in [21..30] then begin
Edit6.Text:=IntToStr(g);
t:=random(3)+1;
ListBox1.Items.Add('Корабль номер ' + Edit6.Text + ' прибыл в ' + Label6.Caption);
ListBox1.Items.Add('Корабль номер ' + Edit6.Text + ' завершил разгурзку за ' + IntTostr(t) + ' часов и готовиться к отправлению ');
end;
If d in [31..40] then begin
Edit7.Text:=IntToStr(g);
t:=random(3)+1;
ListBox1.Items.Add('Корабль номер ' + Edit7.Text + ' прибыл в ' + Label7.Caption);
ListBox1.Items.Add('Корабль номер ' + Edit7.Text + ' завершил разгурзку за ' + IntTostr(t) + ' часов и готовиться к отправлению ');
end;
If d in [41..50] then begin
Edit8.Text:=IntToStr(g);
t:=random(3)+1;
ListBox1.Items.Add('Корабль номер ' + Edit8.Text + ' прибыл в ' + Label8.Caption);
ListBox1.Items.Add('Корабль номер ' + Edit8.Text + ' завершил разгурзку за ' + IntTostr(t) + ' часов и готовиться к отправлению ');
end;
If d in [51..56] then begin
Edit9.Text:=IntToStr(g);
t:=random(3)+1;
ListBox1.Items.Add('Корабль номер ' + Edit9.Text + ' прибыл в ' + Label9.Caption);
ListBox1.Items.Add('Корабль номер ' + Edit9.Text + ' завершил разгурзку за ' + IntTostr(t) + ' часов и готовиться к отправлению ');
end;
end;
end;
If g>20 then begin
s:=random(20)+1;
If s<=10 then begin
d:=random(30)+1;
If d<10 then begin
Edit1.Text:=IntToStr(g);
t:=random(2)+1;
ListBox1.Items.Add('Корабль номер ' + Edit1.Text + ' прибыл в ' + Label1.Caption);
ListBox1.Items.Add('Корабль номер ' + Edit1.Text + ' завершил разгурзку за ' + IntTostr(t) + ' часов и готовиться к отправлению ');
end;

If d in [10..19] then begin
Edit2.Text:=IntToStr(g);
t:=random(2)+1;
ListBox1.Items.Add('Корабль номер ' + Edit2.Text + ' прибыл в ' + Label2.Caption);
ListBox1.Items.Add('Корабль номер ' + Edit2.Text + ' завершил разгурзку за ' + IntTostr(t) + ' часов и готовиться к отправлению ');
end;
If d in [20..29] then begin
Edit3.Text:=IntToStr(g);
t:=random(2)+1;
ListBox1.Items.Add('Корабль номер ' + Edit3.Text + ' прибыл в ' + Label3.Caption);
ListBox1.Items.Add('Корабль номер ' + Edit3.Text + ' завершил разгурзку за ' + IntTostr(t) + ' часов и готовиться к отправлению ');
end;
end;
If s>10 then begin
d:=random(60)+1;
If d<=10 then begin
Edit10.Text:=IntToStr(g);
t:=random(3)+1;
ListBox1.Items.Add('Корабль номер ' + Edit10.Text + ' прибыл в ' + Label10.Caption);
ListBox1.Items.Add('Корабль номер ' + Edit10.Text + ' завершил разгурзку за ' + IntTostr(t) + ' часов и готовиться к отправлению ');
end;
If d in [11..20] then begin
Edit11.Text:=IntToStr(g);
t:=random(3)+1;
ListBox1.Items.Add('Корабль номер ' + Edit11.Text + ' прибыл в ' + Label1.Caption);
ListBox1.Items.Add('Корабль номер ' + Edit11.Text + ' завершил разгурзку за ' + IntTostr(t) + ' часов и готовиться к отправлению ');
end;
If d in [21..30] then begin
Edit12.Text:=IntToStr(g);
t:=random(3)+1;
ListBox1.Items.Add('Корабль номер ' + Edit12.Text + ' прибыл в ' + Label12.Caption);
ListBox1.Items.Add('Корабль номер ' + Edit12.Text + ' завершил разгурзку за ' + IntTostr(t) + ' часов и готовиться к отправлению ');
end;
If d in [31..40] then begin
Edit13.Text:=IntToStr(g);
t:=random(3)+1;
ListBox1.Items.Add('Корабль номер ' + Edit13.Text + ' прибыл в ' + Label13.Caption);
ListBox1.Items.Add('Корабль номер ' + Edit13.Text + ' завершил разгурзку за ' + IntTostr(t) + ' часов и готовиться к отправлению ');
end;
If d in [41..50] then begin
Edit14.Text:=IntToStr(g);
t:=random(3)+1;
ListBox1.Items.Add('Корабль номер ' + Edit14.Text + ' прибыл в ' + Label14.Caption);
ListBox1.Items.Add('Корабль номер ' + Edit14.Text + ' завершил разгурзку за ' + IntTostr(t) + ' часов и готовиться к отправлению ');
end;
If d in [51..56] then begin
Edit15.Text:=IntToStr(g);
t:=random(3)+1;
ListBox1.Items.Add('Корабль номер ' + Edit15.Text + ' прибыл в ' + Label15.Caption);
ListBox1.Items.Add('Корабль номер ' + Edit15.Text + ' завершил разгурзку за ' + IntTostr(t) + ' часов и готовиться к отправлению ');
end;
end;
end;
end;



If radiobutton1.Checked=true then begin
g:=A[0];
for i:=0 to 19 do
A[i]:=A[i+1];
A[19]:=g;
Edit16.Text:='';
for i:=0 to 19 do
Edit16.Text:=Edit16.Text + IntToStr(A[i]) +',';

If g<=20 then begin
s:=random(20)+1;
If s<=10 then begin
Edit1.Text:=IntToStr(g);
t:=random(2)+1;
ListBox1.Items.Add('Корабль номер ' + Edit1.Text + ' прибыл в ' + Label1.Caption);
ListBox1.Items.Add('Корабль номер ' + Edit1.Text + ' завершил разгурзку за ' + IntTostr(t) + ' часов и готовиться к отправлению ');
end;
If s>10 then begin
d:=random(20);
If d<=10 then begin
Edit2.Text:=IntToStr(g);
t:=random(3)+1;
ListBox1.Items.Add('Корабль номер ' + Edit2.Text + ' прибыл в ' + Label2.Caption);
ListBox1.Items.Add('Корабль номер ' + Edit2.Text + ' завершил разгурзку за ' + IntTostr(t) + ' часов и готовиться к отправлению ');
end;
If d>=10 then begin
Edit3.Text:=IntToStr(g);
t:=random(3)+1;
ListBox1.Items.Add('Корабль номер ' + Edit3.Text + ' прибыл в ' + Label2.Caption);
ListBox1.Items.Add('Корабль номер ' + Edit3.Text + ' завершил разгурзку за ' + IntTostr(t) + ' часов и готовиться к отправлению ');
end;
end;
end;

If g>20 then begin
s:=random(20)+1;
If s<=10 then begin
Edit1.Text:=IntToStr(g);
t:=random(2)+1;
ListBox1.Items.Add('Корабль номер ' + Edit1.Text + ' прибыл в ' + Label1.Caption);
ListBox1.Items.Add('Корабль номер ' + Edit1.Text + ' завершил разгурзку за ' + IntTostr(t) + ' часов и готовиться к отправлению ');
end;
If s>10 then begin
d:=random(20);
If d<=10 then begin
Edit4.Text:=IntToStr(g);
t:=random(3)+1;
ListBox1.Items.Add('Корабль номер ' + Edit4.Text + ' прибыл в ' + Label4.Caption);
ListBox1.Items.Add('Корабль номер ' + Edit4.Text + ' завершил разгурзку за ' + IntTostr(t) + ' часов и готовиться к отправлению ');
end;
If d>=10 then begin
Edit5.Text:=IntToStr(g);
t:=random(3)+1;
ListBox1.Items.Add('Корабль номер ' + Edit5.Text + ' прибыл в ' + Label5.Caption);
ListBox1.Items.Add('Корабль номер ' + Edit5.Text + ' завершил разгурзку за ' + IntTostr(t) + ' часов и готовиться к отправлению ');
end;
end;
end;
end;

If radiobutton2.Checked then begin
g:=A[0];
for i:=0 to 19 do
A[i]:=A[i+1];
A[19]:=g;
Edit16.Text:='';
for i:=0 to 19 do
Edit16.Text:=Edit16.Text + IntToStr(A[i]) +',';

If g<=20 then begin
s:=random(20)+1;
If s<=10 then begin
d:=random(20)+1;
If d<=10 then begin
Edit1.Text:=IntToStr(g);
t:=random(2)+1;
ListBox1.Items.Add('Корабль номер ' + Edit1.Text + ' прибыл в ' + Label1.Caption);
ListBox1.Items.Add('Корабль номер ' + Edit1.Text + ' завершил разгурзку за ' + IntTostr(t) + ' часов и готовиться к отправлению ');
end;

If d>10 then begin
Edit2.Text:=IntToStr(g);
t:=random(2)+1;
ListBox1.Items.Add('Корабль номер ' + Edit2.Text + ' прибыл в ' + Label2.Caption);
ListBox1.Items.Add('Корабль номер ' + Edit2.Text + ' завершил разгурзку за ' + IntTostr(t) + ' часов и готовиться к отправлению ');
end;
end;


If s>10 then begin
d:=random(40);
If d<=10 then begin
Edit3.Text:=IntToStr(g);
t:=random(3)+1;
ListBox1.Items.Add('Корабль номер ' + Edit3.Text + ' прибыл в ' + Label3.Caption);
ListBox1.Items.Add('Корабль номер ' + Edit3.Text + ' завершил разгурзку за ' + IntTostr(t) + ' часов и готовиться к отправлению ');
end;
If d in [11..20] then begin
Edit4.Text:=IntToStr(g);
t:=random(3)+1;
ListBox1.Items.Add('Корабль номер ' + Edit4.Text + ' прибыл в ' + Label4.Caption);
ListBox1.Items.Add('Корабль номер ' + Edit4.Text + ' завершил разгурзку за ' + IntTostr(t) + ' часов и готовиться к отправлению ');
end;
If d in [21..30] then begin
Edit5.Text:=IntToStr(g);
t:=random(3)+1;
ListBox1.Items.Add('Корабль номер ' + Edit5.Text + ' прибыл в ' + Label5.Caption);
ListBox1.Items.Add('Корабль номер ' + Edit5.Text + ' завершил разгурзку за ' + IntTostr(t) + ' часов и готовиться к отправлению ');
end;
If d in [31..40] then begin
Edit6.Text:=IntToStr(g);
t:=random(3)+1;
ListBox1.Items.Add('Корабль номер ' + Edit6.Text + ' прибыл в ' + Label6.Caption);
ListBox1.Items.Add('Корабль номер ' + Edit6.Text + ' завершил разгурзку за ' + IntTostr(t) + ' часов и готовиться к отправлению ');
end;
end;
end;
If g>20 then begin
s:=random(20)+1;
If s<=10 then begin
d:=random(20);
If d<=10 then begin
Edit1.Text:=IntToStr(g);
t:=random(2)+1;
ListBox1.Items.Add('Корабль номер ' + Edit1.Text + ' прибыл в ' + Label1.Caption);
ListBox1.Items.Add('Корабль номер ' + Edit1.Text + ' завершил разгурзку за ' + IntTostr(t) + ' часов и готовиться к отправлению ');
end;

If d>10 then begin
Edit2.Text:=IntToStr(g);
t:=random(2)+1;
ListBox1.Items.Add('Корабль номер ' + Edit2.Text + ' прибыл в ' + Label2.Caption);
ListBox1.Items.Add('Корабль номер ' + Edit2.Text + ' завершил разгурзку за ' + IntTostr(t) + ' часов и готовиться к отправлению ');
end;
end;

If s>10 then begin
d:=random(40)+1;
If d<=10 then begin
Edit7.Text:=IntToStr(g);
t:=random(3)+1;
ListBox1.Items.Add('Корабль номер ' + Edit7.Text + ' прибыл в ' + Label7.Caption);
ListBox1.Items.Add('Корабль номер ' + Edit7.Text + ' завершил разгурзку за ' + IntTostr(t) + ' часов и готовиться к отправлению ');
end;
If d in [11..20] then begin
Edit8.Text:=IntToStr(g);
t:=random(3)+1;
ListBox1.Items.Add('Корабль номер ' + Edit8.Text + ' прибыл в ' + Label8.Caption);
ListBox1.Items.Add('Корабль номер ' + Edit8.Text + ' завершил разгурзку за ' + IntTostr(t) + ' часов и готовиться к отправлению ');
end;
If d in [21..30] then begin
Edit9.Text:=IntToStr(g);
t:=random(3)+1;
ListBox1.Items.Add('Корабль номер ' + Edit9.Text + ' прибыл в ' + Label9.Caption);
ListBox1.Items.Add('Корабль номер ' + Edit9.Text + ' завершил разгурзку за ' + IntTostr(t) + ' часов и готовиться к отправлению ');
end;
If d in [31..40] then begin
Edit10.Text:=IntToStr(g);
t:=random(3)+1;
ListBox1.Items.Add('Корабль номер ' + Edit10.Text + ' прибыл в ' + Label10.Caption);
ListBox1.Items.Add('Корабль номер ' + Edit10.Text + ' завершил разгурзку за ' + IntTostr(t) + ' часов и готовиться к отправлению ');
end;
end;
end;
end;

If radiobutton3.Checked then begin
g:=A[0];
for i:=0 to 19 do
A[i]:=A[i+1];
A[19]:=g;
Edit16.Text:='';
for i:=0 to 19 do
Edit16.Text:=Edit16.Text + IntToStr(A[i]) +',';

If g<=20 then begin
s:=random(20)+1;
If s<=10 then begin
d:=random(30)+1;
If d<10 then begin
Edit1.Text:=IntToStr(g);
t:=random(2)+1;
ListBox1.Items.Add('Корабль номер ' + Edit1.Text + ' прибыл в ' + Label1.Caption);
ListBox1.Items.Add('Корабль номер ' + Edit1.Text + ' завершил разгурзку за ' + IntTostr(t) + ' часов и готовиться к отправлению ');
end;

If d in [10..19] then begin
Edit2.Text:=IntToStr(g);
t:=random(2)+1;
ListBox1.Items.Add('Корабль номер ' + Edit2.Text + ' прибыл в ' + Label2.Caption);
ListBox1.Items.Add('Корабль номер ' + Edit2.Text + ' завершил разгурзку за ' + IntTostr(t) + ' часов и готовиться к отправлению ');
end;
If d in [20..29] then begin
Edit3.Text:=IntToStr(g);
t:=random(2)+1;
ListBox1.Items.Add('Корабль номер ' + Edit3.Text + ' прибыл в ' + Label3.Caption);
ListBox1.Items.Add('Корабль номер ' + Edit3.Text + ' завершил разгурзку за ' + IntTostr(t) + ' часов и готовиться к отправлению ');
end;
end;


If s>10 then begin
d:=random(60)+1;
If d<=10 then begin
Edit4.Text:=IntToStr(g);
t:=random(3)+1;
ListBox1.Items.Add('Корабль номер ' + Edit4.Text + ' прибыл в ' + Label4.Caption);
ListBox1.Items.Add('Корабль номер ' + Edit4.Text + ' завершил разгурзку за ' + IntTostr(t) + ' часов и готовиться к отправлению ');
end;
If d in [11..20] then begin
Edit5.Text:=IntToStr(g);
t:=random(3)+1;
ListBox1.Items.Add('Корабль номер ' + Edit5.Text + ' прибыл в ' + Label5.Caption);
ListBox1.Items.Add('Корабль номер ' + Edit5.Text + ' завершил разгурзку за ' + IntTostr(t) + ' часов и готовиться к отправлению ');
end;
If d in [21..30] then begin
Edit6.Text:=IntToStr(g);
t:=random(3)+1;
ListBox1.Items.Add('Корабль номер ' + Edit6.Text + ' прибыл в ' + Label6.Caption);
ListBox1.Items.Add('Корабль номер ' + Edit6.Text + ' завершил разгурзку за ' + IntTostr(t) + ' часов и готовиться к отправлению ');
end;
If d in [31..40] then begin
Edit7.Text:=IntToStr(g);
t:=random(3)+1;
ListBox1.Items.Add('Корабль номер ' + Edit7.Text + ' прибыл в ' + Label7.Caption);
ListBox1.Items.Add('Корабль номер ' + Edit7.Text + ' завершил разгурзку за ' + IntTostr(t) + ' часов и готовиться к отправлению ');
end;
If d in [41..50] then begin
Edit8.Text:=IntToStr(g);
t:=random(3)+1;
ListBox1.Items.Add('Корабль номер ' + Edit8.Text + ' прибыл в ' + Label8.Caption);
ListBox1.Items.Add('Корабль номер ' + Edit8.Text + ' завершил разгурзку за ' + IntTostr(t) + ' часов и готовиться к отправлению ');
end;
If d in [51..56] then begin
Edit9.Text:=IntToStr(g);
t:=random(3)+1;
ListBox1.Items.Add('Корабль номер ' + Edit9.Text + ' прибыл в ' + Label9.Caption);
ListBox1.Items.Add('Корабль номер ' + Edit9.Text + ' завершил разгурзку за ' + IntTostr(t) + ' часов и готовиться к отправлению ');
end;
end;
end;
If g>20 then begin
s:=random(20)+1;
If s<=10 then begin
d:=random(30)+1;
If d<10 then begin
Edit1.Text:=IntToStr(g);
t:=random(2)+1;
ListBox1.Items.Add('Корабль номер ' + Edit1.Text + ' прибыл в ' + Label1.Caption);
ListBox1.Items.Add('Корабль номер ' + Edit1.Text + ' завершил разгурзку за ' + IntTostr(t) + ' часов и готовиться к отправлению ');
end;

If d in [10..19] then begin
Edit2.Text:=IntToStr(g);
t:=random(2)+1;
ListBox1.Items.Add('Корабль номер ' + Edit2.Text + ' прибыл в ' + Label2.Caption);
ListBox1.Items.Add('Корабль номер ' + Edit2.Text + ' завершил разгурзку за ' + IntTostr(t) + ' часов и готовиться к отправлению ');
end;
If d in [20..29] then begin
Edit3.Text:=IntToStr(g);
t:=random(2)+1;
ListBox1.Items.Add('Корабль номер ' + Edit3.Text + ' прибыл в ' + Label3.Caption);
ListBox1.Items.Add('Корабль номер ' + Edit3.Text + ' завершил разгурзку за ' + IntTostr(t) + ' часов и готовиться к отправлению ');
end;
end;
If s>10 then begin
d:=random(60)+1;
If d<=10 then begin
Edit10.Text:=IntToStr(g);
t:=random(3)+1;
ListBox1.Items.Add('Корабль номер ' + Edit10.Text + ' прибыл в ' + Label10.Caption);
ListBox1.Items.Add('Корабль номер ' + Edit10.Text + ' завершил разгурзку за ' + IntTostr(t) + ' часов и готовиться к отправлению ');
end;
If d in [11..20] then begin
Edit11.Text:=IntToStr(g);
t:=random(3)+1;
ListBox1.Items.Add('Корабль номер ' + Edit11.Text + ' прибыл в ' + Label1.Caption);
ListBox1.Items.Add('Корабль номер ' + Edit11.Text + ' завершил разгурзку за ' + IntTostr(t) + ' часов и готовиться к отправлению ');
end;
If d in [21..30] then begin
Edit12.Text:=IntToStr(g);
t:=random(3)+1;
ListBox1.Items.Add('Корабль номер ' + Edit12.Text + ' прибыл в ' + Label12.Caption);
ListBox1.Items.Add('Корабль номер ' + Edit12.Text + ' завершил разгурзку за ' + IntTostr(t) + ' часов и готовиться к отправлению ');
end;
If d in [31..40] then begin
Edit13.Text:=IntToStr(g);
t:=random(3)+1;
ListBox1.Items.Add('Корабль номер ' + Edit13.Text + ' прибыл в ' + Label13.Caption);
ListBox1.Items.Add('Корабль номер ' + Edit13.Text + ' завершил разгурзку за ' + IntTostr(t) + ' часов и готовиться к отправлению ');
end;
If d in [41..50] then begin
Edit14.Text:=IntToStr(g);
t:=random(3)+1;
ListBox1.Items.Add('Корабль номер ' + Edit14.Text + ' прибыл в ' + Label14.Caption);
ListBox1.Items.Add('Корабль номер ' + Edit14.Text + ' завершил разгурзку за ' + IntTostr(t) + ' часов и готовиться к отправлению ');
end;
If d in [51..56] then begin
Edit15.Text:=IntToStr(g);
t:=random(3)+1;
ListBox1.Items.Add('Корабль номер ' + Edit15.Text + ' прибыл в ' + Label15.Caption);
ListBox1.Items.Add('Корабль номер ' + Edit15.Text + ' завершил разгурзку за ' + IntTostr(t) + ' часов и готовиться к отправлению ');
end;
end;
end;
end;



If radiobutton1.Checked=true then begin
g:=A[0];
for i:=0 to 19 do
A[i]:=A[i+1];
A[19]:=g;
Edit16.Text:='';
for i:=0 to 19 do
Edit16.Text:=Edit16.Text + IntToStr(A[i]) +',';

If g<=20 then begin
s:=random(20)+1;
If s<=10 then begin
Edit1.Text:=IntToStr(g);
t:=random(2)+1;
ListBox1.Items.Add('Корабль номер ' + Edit1.Text + ' прибыл в ' + Label1.Caption);
ListBox1.Items.Add('Корабль номер ' + Edit1.Text + ' завершил разгурзку за ' + IntTostr(t) + ' часов и готовиться к отправлению ');
end;
If s>10 then begin
d:=random(20);
If d<=10 then begin
Edit2.Text:=IntToStr(g);
t:=random(3)+1;
ListBox1.Items.Add('Корабль номер ' + Edit2.Text + ' прибыл в ' + Label2.Caption);
ListBox1.Items.Add('Корабль номер ' + Edit2.Text + ' завершил разгурзку за ' + IntTostr(t) + ' часов и готовиться к отправлению ');
end;
If d>=10 then begin
Edit3.Text:=IntToStr(g);
t:=random(3)+1;
ListBox1.Items.Add('Корабль номер ' + Edit3.Text + ' прибыл в ' + Label2.Caption);
ListBox1.Items.Add('Корабль номер ' + Edit3.Text + ' завершил разгурзку за ' + IntTostr(t) + ' часов и готовиться к отправлению ');
end;
end;
end;

If g>20 then begin
s:=random(20)+1;
If s<=10 then begin
Edit1.Text:=IntToStr(g);
t:=random(2)+1;
ListBox1.Items.Add('Корабль номер ' + Edit1.Text + ' прибыл в ' + Label1.Caption);
ListBox1.Items.Add('Корабль номер ' + Edit1.Text + ' завершил разгурзку за ' + IntTostr(t) + ' часов и готовиться к отправлению ');
end;
If s>10 then begin
d:=random(20);
If d<=10 then begin
Edit4.Text:=IntToStr(g);
t:=random(3)+1;
ListBox1.Items.Add('Корабль номер ' + Edit4.Text + ' прибыл в ' + Label4.Caption);
ListBox1.Items.Add('Корабль номер ' + Edit4.Text + ' завершил разгурзку за ' + IntTostr(t) + ' часов и готовиться к отправлению ');
end;
If d>=10 then begin
Edit5.Text:=IntToStr(g);
t:=random(3)+1;
ListBox1.Items.Add('Корабль номер ' + Edit5.Text + ' прибыл в ' + Label5.Caption);
ListBox1.Items.Add('Корабль номер ' + Edit5.Text + ' завершил разгурзку за ' + IntTostr(t) + ' часов и готовиться к отправлению ');
end;
end;
end;
end;

If radiobutton2.Checked then begin
g:=A[0];
for i:=0 to 19 do
A[i]:=A[i+1];
A[19]:=g;
Edit16.Text:='';
for i:=0 to 19 do
Edit16.Text:=Edit16.Text + IntToStr(A[i]) +',';

If g<=20 then begin
s:=random(20)+1;
If s<=10 then begin
d:=random(20)+1;
If d<=10 then begin
Edit1.Text:=IntToStr(g);
t:=random(2)+1;
ListBox1.Items.Add('Корабль номер ' + Edit1.Text + ' прибыл в ' + Label1.Caption);
ListBox1.Items.Add('Корабль номер ' + Edit1.Text + ' завершил разгурзку за ' + IntTostr(t) + ' часов и готовиться к отправлению ');
end;

If d>10 then begin
Edit2.Text:=IntToStr(g);
t:=random(2)+1;
ListBox1.Items.Add('Корабль номер ' + Edit2.Text + ' прибыл в ' + Label2.Caption);
ListBox1.Items.Add('Корабль номер ' + Edit2.Text + ' завершил разгурзку за ' + IntTostr(t) + ' часов и готовиться к отправлению ');
end;
end;


If s>10 then begin
d:=random(40);
If d<=10 then begin
Edit3.Text:=IntToStr(g);
t:=random(3)+1;
ListBox1.Items.Add('Корабль номер ' + Edit3.Text + ' прибыл в ' + Label3.Caption);
ListBox1.Items.Add('Корабль номер ' + Edit3.Text + ' завершил разгурзку за ' + IntTostr(t) + ' часов и готовиться к отправлению ');
end;
If d in [11..20] then begin
Edit4.Text:=IntToStr(g);
t:=random(3)+1;
ListBox1.Items.Add('Корабль номер ' + Edit4.Text + ' прибыл в ' + Label4.Caption);
ListBox1.Items.Add('Корабль номер ' + Edit4.Text + ' завершил разгурзку за ' + IntTostr(t) + ' часов и готовиться к отправлению ');
end;
If d in [21..30] then begin
Edit5.Text:=IntToStr(g);
t:=random(3)+1;
ListBox1.Items.Add('Корабль номер ' + Edit5.Text + ' прибыл в ' + Label5.Caption);
ListBox1.Items.Add('Корабль номер ' + Edit5.Text + ' завершил разгурзку за ' + IntTostr(t) + ' часов и готовиться к отправлению ');
end;
If d in [31..40] then begin
Edit6.Text:=IntToStr(g);
t:=random(3)+1;
ListBox1.Items.Add('Корабль номер ' + Edit6.Text + ' прибыл в ' + Label6.Caption);
ListBox1.Items.Add('Корабль номер ' + Edit6.Text + ' завершил разгурзку за ' + IntTostr(t) + ' часов и готовиться к отправлению ');
end;
end;
end;
If g>20 then begin
s:=random(20)+1;
If s<=10 then begin
d:=random(20);
If d<=10 then begin
Edit1.Text:=IntToStr(g);
t:=random(2)+1;
ListBox1.Items.Add('Корабль номер ' + Edit1.Text + ' прибыл в ' + Label1.Caption);
ListBox1.Items.Add('Корабль номер ' + Edit1.Text + ' завершил разгурзку за ' + IntTostr(t) + ' часов и готовиться к отправлению ');
end;

If d>10 then begin
Edit2.Text:=IntToStr(g);
t:=random(2)+1;
ListBox1.Items.Add('Корабль номер ' + Edit2.Text + ' прибыл в ' + Label2.Caption);
ListBox1.Items.Add('Корабль номер ' + Edit2.Text + ' завершил разгурзку за ' + IntTostr(t) + ' часов и готовиться к отправлению ');
end;
end;

If s>10 then begin
d:=random(40)+1;
If d<=10 then begin
Edit7.Text:=IntToStr(g);
t:=random(3)+1;
ListBox1.Items.Add('Корабль номер ' + Edit7.Text + ' прибыл в ' + Label7.Caption);
ListBox1.Items.Add('Корабль номер ' + Edit7.Text + ' завершил разгурзку за ' + IntTostr(t) + ' часов и готовиться к отправлению ');
end;
If d in [11..20] then begin
Edit8.Text:=IntToStr(g);
t:=random(3)+1;
ListBox1.Items.Add('Корабль номер ' + Edit8.Text + ' прибыл в ' + Label8.Caption);
ListBox1.Items.Add('Корабль номер ' + Edit8.Text + ' завершил разгурзку за ' + IntTostr(t) + ' часов и готовиться к отправлению ');
end;
If d in [21..30] then begin
Edit9.Text:=IntToStr(g);
t:=random(3)+1;
ListBox1.Items.Add('Корабль номер ' + Edit9.Text + ' прибыл в ' + Label9.Caption);
ListBox1.Items.Add('Корабль номер ' + Edit9.Text + ' завершил разгурзку за ' + IntTostr(t) + ' часов и готовиться к отправлению ');
end;
If d in [31..40] then begin
Edit10.Text:=IntToStr(g);
t:=random(3)+1;
ListBox1.Items.Add('Корабль номер ' + Edit10.Text + ' прибыл в ' + Label10.Caption);
ListBox1.Items.Add('Корабль номер ' + Edit10.Text + ' завершил разгурзку за ' + IntTostr(t) + ' часов и готовиться к отправлению ');
end;
end;
end;
end;

If radiobutton3.Checked then begin
g:=A[0];
for i:=0 to 19 do
A[i]:=A[i+1];
A[19]:=g;
Edit16.Text:='';
for i:=0 to 19 do
Edit16.Text:=Edit16.Text + IntToStr(A[i]) +',';

If g<=20 then begin
s:=random(20)+1;
If s<=10 then begin
d:=random(30)+1;
If d<10 then begin
Edit1.Text:=IntToStr(g);
t:=random(2)+1;
ListBox1.Items.Add('Корабль номер ' + Edit1.Text + ' прибыл в ' + Label1.Caption);
ListBox1.Items.Add('Корабль номер ' + Edit1.Text + ' завершил разгурзку за ' + IntTostr(t) + ' часов и готовиться к отправлению ');
end;

If d in [10..19] then begin
Edit2.Text:=IntToStr(g);
t:=random(2)+1;
ListBox1.Items.Add('Корабль номер ' + Edit2.Text + ' прибыл в ' + Label2.Caption);
ListBox1.Items.Add('Корабль номер ' + Edit2.Text + ' завершил разгурзку за ' + IntTostr(t) + ' часов и готовиться к отправлению ');
end;
If d in [20..29] then begin
Edit3.Text:=IntToStr(g);
t:=random(2)+1;
ListBox1.Items.Add('Корабль номер ' + Edit3.Text + ' прибыл в ' + Label3.Caption);
ListBox1.Items.Add('Корабль номер ' + Edit3.Text + ' завершил разгурзку за ' + IntTostr(t) + ' часов и готовиться к отправлению ');
end;
end;


If s>10 then begin
d:=random(60)+1;
If d<=10 then begin
Edit4.Text:=IntToStr(g);
t:=random(3)+1;
ListBox1.Items.Add('Корабль номер ' + Edit4.Text + ' прибыл в ' + Label4.Caption);
ListBox1.Items.Add('Корабль номер ' + Edit4.Text + ' завершил разгурзку за ' + IntTostr(t) + ' часов и готовиться к отправлению ');
end;
If d in [11..20] then begin
Edit5.Text:=IntToStr(g);
t:=random(3)+1;
ListBox1.Items.Add('Корабль номер ' + Edit5.Text + ' прибыл в ' + Label5.Caption);
ListBox1.Items.Add('Корабль номер ' + Edit5.Text + ' завершил разгурзку за ' + IntTostr(t) + ' часов и готовиться к отправлению ');
end;
If d in [21..30] then begin
Edit6.Text:=IntToStr(g);
t:=random(3)+1;
ListBox1.Items.Add('Корабль номер ' + Edit6.Text + ' прибыл в ' + Label6.Caption);
ListBox1.Items.Add('Корабль номер ' + Edit6.Text + ' завершил разгурзку за ' + IntTostr(t) + ' часов и готовиться к отправлению ');
end;
If d in [31..40] then begin
Edit7.Text:=IntToStr(g);
t:=random(3)+1;
ListBox1.Items.Add('Корабль номер ' + Edit7.Text + ' прибыл в ' + Label7.Caption);
ListBox1.Items.Add('Корабль номер ' + Edit7.Text + ' завершил разгурзку за ' + IntTostr(t) + ' часов и готовиться к отправлению ');
end;
If d in [41..50] then begin
Edit8.Text:=IntToStr(g);
t:=random(3)+1;
ListBox1.Items.Add('Корабль номер ' + Edit8.Text + ' прибыл в ' + Label8.Caption);
ListBox1.Items.Add('Корабль номер ' + Edit8.Text + ' завершил разгурзку за ' + IntTostr(t) + ' часов и готовиться к отправлению ');
end;
If d in [51..56] then begin
Edit9.Text:=IntToStr(g);
t:=random(3)+1;
ListBox1.Items.Add('Корабль номер ' + Edit9.Text + ' прибыл в ' + Label9.Caption);
ListBox1.Items.Add('Корабль номер ' + Edit9.Text + ' завершил разгурзку за ' + IntTostr(t) + ' часов и готовиться к отправлению ');
end;
end;
end;
If g>20 then begin
s:=random(20)+1;
If s<=10 then begin
d:=random(30)+1;
If d<10 then begin
Edit1.Text:=IntToStr(g);
t:=random(2)+1;
ListBox1.Items.Add('Корабль номер ' + Edit1.Text + ' прибыл в ' + Label1.Caption);
ListBox1.Items.Add('Корабль номер ' + Edit1.Text + ' завершил разгурзку за ' + IntTostr(t) + ' часов и готовиться к отправлению ');
end;

If d in [10..19] then begin
Edit2.Text:=IntToStr(g);
t:=random(2)+1;
ListBox1.Items.Add('Корабль номер ' + Edit2.Text + ' прибыл в ' + Label2.Caption);
ListBox1.Items.Add('Корабль номер ' + Edit2.Text + ' завершил разгурзку за ' + IntTostr(t) + ' часов и готовиться к отправлению ');
end;
If d in [20..29] then begin
Edit3.Text:=IntToStr(g);
t:=random(2)+1;
ListBox1.Items.Add('Корабль номер ' + Edit3.Text + ' прибыл в ' + Label3.Caption);
ListBox1.Items.Add('Корабль номер ' + Edit3.Text + ' завершил разгурзку за ' + IntTostr(t) + ' часов и готовиться к отправлению ');
end;
end;
If s>10 then begin
d:=random(60)+1;
If d<=10 then begin
Edit10.Text:=IntToStr(g);
t:=random(3)+1;
ListBox1.Items.Add('Корабль номер ' + Edit10.Text + ' прибыл в ' + Label10.Caption);
ListBox1.Items.Add('Корабль номер ' + Edit10.Text + ' завершил разгурзку за ' + IntTostr(t) + ' часов и готовиться к отправлению ');
end;
If d in [11..20] then begin
Edit11.Text:=IntToStr(g);
t:=random(3)+1;
ListBox1.Items.Add('Корабль номер ' + Edit11.Text + ' прибыл в ' + Label1.Caption);
ListBox1.Items.Add('Корабль номер ' + Edit11.Text + ' завершил разгурзку за ' + IntTostr(t) + ' часов и готовиться к отправлению ');
end;
If d in [21..30] then begin
Edit12.Text:=IntToStr(g);
t:=random(3)+1;
ListBox1.Items.Add('Корабль номер ' + Edit12.Text + ' прибыл в ' + Label12.Caption);
ListBox1.Items.Add('Корабль номер ' + Edit12.Text + ' завершил разгурзку за ' + IntTostr(t) + ' часов и готовиться к отправлению ');
end;
If d in [31..40] then begin
Edit13.Text:=IntToStr(g);
t:=random(3)+1;
ListBox1.Items.Add('Корабль номер ' + Edit13.Text + ' прибыл в ' + Label13.Caption);
ListBox1.Items.Add('Корабль номер ' + Edit13.Text + ' завершил разгурзку за ' + IntTostr(t) + ' часов и готовиться к отправлению ');
end;
If d in [41..50] then begin
Edit14.Text:=IntToStr(g);
t:=random(3)+1;
ListBox1.Items.Add('Корабль номер ' + Edit14.Text + ' прибыл в ' + Label14.Caption);
ListBox1.Items.Add('Корабль номер ' + Edit14.Text + ' завершил разгурзку за ' + IntTostr(t) + ' часов и готовиться к отправлению ');
end;
If d in [51..56] then begin
Edit15.Text:=IntToStr(g);
t:=random(3)+1;
ListBox1.Items.Add('Корабль номер ' + Edit15.Text + ' прибыл в ' + Label15.Caption);
ListBox1.Items.Add('Корабль номер ' + Edit15.Text + ' завершил разгурзку за ' + IntTostr(t) + ' часов и готовиться к отправлению ');
end;
end;
end;
end;




end;

end.

