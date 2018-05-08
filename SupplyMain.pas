unit SupplyMain;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls, Mask, ToolEdit, Buttons, ExtCtrls, ComObj,
  Grids;

type
  TfMailSupply = class(TForm)
    pcData: TPageControl;
    tsDataUr: TTabSheet;
    tsSpecif: TTabSheet;
    lNamePred: TLabel;
    lFace: TLabel;
    lBase: TLabel;
    tsDataDeliv: TTabSheet;
    lUrAdres: TLabel;
    lINN: TLabel;
    lKPP: TLabel;
    lCheck: TLabel;
    lCorp: TLabel;
    lBIK: TLabel;
    lNameBank: TLabel;
    lTelefonUr: TLabel;
    lEmail: TLabel;
    lAbbrev: TLabel;
    lNumContr: TLabel;
    lDateContr: TLabel;
    lShip: TLabel;
    lDeliv: TLabel;
    eNumContr: TEdit;
    deDateContr: TDateEdit;
    eDay: TEdit;
    lDay: TLabel;
    eDeliv: TEdit;
    eNamePred: TEdit;
    eFace: TEdit;
    eBase: TEdit;
    eUrAdres: TEdit;
    eINN: TEdit;
    eKPP: TEdit;
    eCheck: TEdit;
    eCorp: TEdit;
    eBIK: TEdit;
    eNameBank: TEdit;
    eTelefonUr: TEdit;
    eEmail: TEdit;
    eAbbrev: TEdit;
    pButton: TPanel;
    bbForm: TBitBtn;
    bbClear: TBitBtn;
    sgSpecif: TStringGrid;
    lItog: TLabel;
    lNDS: TLabel;
    eItog: TEdit;
    eNDS: TEdit;
    rgBuyer: TRadioGroup;
    tsDataFiz: TTabSheet;
    lSeria: TLabel;
    lNumer: TLabel;
    lIss: TLabel;
    lFIO: TLabel;
    lAdres: TLabel;
    lTelefonFiz: TLabel;
    eFIO: TEdit;
    lDoc: TLabel;
    eDoc: TEdit;
    eSeria: TEdit;
    eNumer: TEdit;
    eIss: TEdit;
    eAdres: TEdit;
    eTelefonFiz: TEdit;
    deDateIss: TDateEdit;
    lDateIss: TLabel;
    procedure FormShow(Sender: TObject);
    procedure NewData;
    procedure bbClearClick(Sender: TObject);
    procedure ReplaceField(const ADocument: OleVariant);
    procedure bbFormClick(Sender: TObject);
    procedure NameCol;
    procedure Calculation;
    procedure sgSpecifKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure rgBuyerClick(Sender: TObject);
    function numprop(num: integer): string;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fMailSupply: TfMailSupply;
  NumEd:array [1..19] of string=('один','два','три','четыре','пять','шесть','семь','восемь','девять','десять','одиннадцать','двенадцать','тринадцать','четырнадцать','пятнадцать','шестнадцать','семнадцать','восемнадцать','девятнадцать');
  NumEd1:array [1..2] of string=('одна','две');
  NumDec:array [2..9] of string=('двадцать','тридцать','сорок','пятьдесят','шестьдесят','семьдесят','восемьдесят','девяносто');
  NumSot:array [1..9] of string=('сто','двести','триста','четыреста','пятьсот','шестьсот','семьсот','восемьсот','девятьсот');
  XLion0:array [1..3] of string=('тысяч','миллионов','миллиардов');
  XLion1:array [1..3] of string=('тысяча','миллион','миллиард');
  XLion2:array [1..3] of string=('тысячи','миллиона','миллиарда');
  Rub:array[1..3] of string=('рубль','рубля','рублей');
  mes:array [1..12] of string=('января','февраля','марта','апреля','мая','июня','июля','августа','сентября','октября','ноября','декабря');

implementation

{$R *.dfm}

procedure TfMailSupply.FormShow(Sender: TObject);
begin
  NewData;
  NameCol;
end;

procedure TfMailSupply.NewData;
var
  i: integer;
begin
  //Очистка данных полей по Юр.лицу
  eNamePred.Text := '';
  eFace.Text := '';
  eBase.Text := '';
  eAbbrev.Text := '';
  eUrAdres.Text := '';
  eINN.Text := '';
  eKPP.Text := '';
  eCheck.Text := '';
  eCorp.Text := '';
  eBIK.Text := '';
  eNameBank.Text := '';
  eTelefonUr.Text := '';
  eEmail.Text := '';

  //Очистка данных полей по физ.лицу
  eFIO.Text := '';
  eDoc.Text := '';
  eSeria.Text := '';
  eNumer.Text := '';
  eIss.Text := '';
  deDateIss.Text := '';
  eAdres.Text := '';
  eTelefonFiz.Text := '';

  //Очистка полей по данным договора и поставки
  eNumContr.Text := '';
  deDateContr.Date := Date;
  eDay.Text := '';
  eDeliv.Text := '';

  //очистка данных по данным спефицикации
  for i := 1 to 4 do
    sgSpecif.Rows[i].Clear;

  eItog.Text := '';
  eNDS.Text := '';

  rgBuyer.ItemIndex := 0;

end;

procedure TfMailSupply.bbClearClick(Sender: TObject);
begin
  NewData;
end;

procedure TfMailSupply.ReplaceField(const ADocument: OleVariant);
var
  i: Integer;
  BookmarkName: string;
  Range: OleVariant;
  s,s1:string;

  function CompareBm(ABmName: string; const AName: string): Boolean;
  var
    i: Integer;
  begin
    i := Pos('_', ABmName);
    if i > 0 then
      Delete(ABmName, i, Length(ABmName) - i + 1);

    Result := SameText(ABmName, AName);
  end;
 
begin
  for i := ADocument.Bookmarks.Count downto 1 do
  begin
    BookmarkName := ADocument.Bookmarks.Item(i).Name;
    Range := ADocument.Bookmarks.Item(i).Range;

    if CompareBm(BookmarkName, 'Номердоговора') then
      Range.Text := eNumContr.Text
    else
    if CompareBm(BookmarkName, 'Дата') then
      Range.Text := deDateContr.Text
    else
    if CompareBm(BookmarkName, 'Наименование') then
      Range.Text := eNamePred.Text
    else
    if CompareBm(BookmarkName, 'КорНаименование') then
      Range.Text := eAbbrev.Text
    else
    if CompareBm(BookmarkName, 'Лице') then
      Range.Text := eFace.Text
    else
    if CompareBm(BookmarkName, 'Основание') then
      Range.Text := eBase.Text
    else
    if CompareBm(BookmarkName, 'Дней') then
      Range.Text := eDay.Text
    else
    if CompareBm(BookmarkName, 'Доставкакуда') then
      Range.Text := eDeliv.Text
    else
    if CompareBm(BookmarkName, 'Где') then
      begin
        s := eDeliv.Text;
        s1 := copy(s, 1, pos(' ', s) - 2);
        delete(s, 1, pos(' ', s) - 1);
        s := s1 + s;
        Range.Text := s
      end
    else
    if CompareBm(BookmarkName, 'Юрадрес') then
      Range.Text := eUrAdres.Text
    else
    if CompareBm(BookmarkName, 'ИНН') then
      Range.Text := eINN.Text
    else
    if CompareBm(BookmarkName, 'КПП') then
      Range.Text := eKPP.Text
    else
    if CompareBm(BookmarkName, 'Расчетныйсчет') then
      Range.Text := eCheck.Text
    else
    if CompareBm(BookmarkName, 'Коррсчет') then
      Range.Text := eCorp.Text
    else
    if CompareBm(BookmarkName, 'БИК') then
      Range.Text := eBIK.Text
    else
    if CompareBm(BookmarkName, 'Реквизитыбанка') then
      Range.Text := eNameBank.Text
    else
    if CompareBm(BookmarkName, 'Телефон') then
      Range.Text := eTelefonUr.Text
    else
    if CompareBm(BookmarkName, 'Емайл') then
      Range.Text := eEmail.Text
    else
    if CompareBm(BookmarkName, 'ИТОГО1') then
      Range.Text := eItog.Text
    else
    if CompareBm(BookmarkName, 'НДС') then
      Range.Text := eNDS.Text
    else
    if CompareBm(BookmarkName, 'ИТОГО2') then
      begin
        s := copy(eItog.Text, 1, pos(',', eItog.Text) - 1);
        s1 := copy(eItog.Text, pos(',', eItog.Text) + 1, length(eItog.Text));
        Range.Text := numprop(StrToInt(s)) + ' ' + s1 + ' коп';

      end;
  end;
end;

procedure TfMailSupply.bbFormClick(Sender: TObject);
var
  TempleateFileName: string;
  WordApp, Document, WordTable: OleVariant;
  path: string;
  j, i: integer;
begin
  path:='Договор';
  
  TempleateFileName := ExtractFilePath(Application.ExeName) + path + '.docx';
    try
      // Если нет то запускаем
      WordApp := CreateOleObject('Word.Application');
    except
      on E: Exception do
      begin
        ShowMessage('Не удалось запустить Word!'#13#10 + E.Message);
        Exit;
      end;
    end;
  //end;

  try
    Screen.Cursor := crHourGlass;

    // Создание нового документа на основе шаблона
    Document := WordApp.Documents.Add(Template := TempleateFileName, NewTemplate := False);

    // Заменяем закладки на данные
    ReplaceField(Document);

    //Работа с таблицей
    WordTable := WordApp.ActiveDocument.Tables.Item(1);

   for i := 1 to 5 do
      begin
        if sgSpecif.Cells[0, i] <> '' then
          begin
            if i > 1 then
              begin
                WordTable.Rows.Add(WordTable.Rows.Item(i));
              end;
          end;
      end;

    for i := 1 to 5 do
      begin
        if sgSpecif.Cells[0, i] <> '' then
          begin
            for j := 0 to 5 do
              begin
                WordTable.Cell(i + 1, j + 1).Range.Text := sgSpecif.Cells[j, i];
              end;
          end;
      end;

    // По умолчание окно Word скрыто, делаем его видимым с готовым отчетом
    WordApp.Visible := True;

  finally
    // Необходимо для удаления экземпляра Word.
    WordApp := Unassigned;

    Screen.Cursor := crDefault;
  end;
end;

procedure TfMailSupply.NameCol;
begin
  with sgSpecif do
    begin
      Cells[0, 0] := '№';
      Cells[1, 0] := 'Товар';
      Cells[2, 0] := 'Кол-во';
      Cells[3, 0] := 'Ед.';
      Cells[4, 0] := 'Цена';
      Cells[5, 0] := 'Сумма';
    end;
end;

procedure TfMailSupply.Calculation;
var
  i, Count: integer;
  Price, Summa, Itog: real;
begin
  with sgSpecif do
    begin
      Itog := 0;

      for i := 1 to 5 do
        begin
          if Cells[2, i] <> '' then
            Count := StrToInt(Cells[2, i])
          else
            Count := 0;

          if Cells[4, i] <> '' then
            Price := StrToFloat(Cells[4, i])
          else
            Price := 0;

          Summa := Count * Price;
          Itog := Itog + Summa;

          Cells[5, i] := FloatToStrF(Summa, ffFixed, 10, 2);
          eItog.Text := FloatToStrF(Itog, ffFixed, 10, 2);
        end;
    end;
end;

procedure TfMailSupply.sgSpecifKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = 113 then
    Calculation;
end;

procedure TfMailSupply.rgBuyerClick(Sender: TObject);
begin
  tsDataUr.TabVisible := (rgBuyer.ItemIndex = 0);
  tsDataFiz.TabVisible := (rgBuyer.ItemIndex = 1);
  lNDS.Visible := (rgBuyer.ItemIndex = 0);
  eNDS.Visible := (rgBuyer.ItemIndex = 0);
end;

//Формирование прописью числа
function TfMailSupply.numprop(num: integer): string;
var
  rub1, rub2: string;
  i, int, k, numer: integer;
begin
  i := - 1;
  k := 0;
  rub1 := '';
  rub2 := '';

  while num > 0 do
    begin
      k := k + 1;

      numer := num mod 1000;
      num := num div 1000;

      i := i + 1;

      if (numer div 100) > 0 then
        begin
          int := numer div 100;
          numer := numer mod 100;
          rub1 := rub1 + numsot[int] + ' ';
        end;

      if numer >= 20 then
        begin
          if (numer div 10) > 0 then
            begin
              int := numer div 10;
              numer := numer mod 10;

              if numer > 0 then
                if (numer < 3) and (i = 1) then
                  rub1 := rub1 + numdec[int] + ' ' + NumEd1[numer] + ' '
                else
                  rub1 := rub1 + numdec[int] + ' ' + NumEd[numer] + ' '
              else
                rub1 := rub1 + numdec[int] + ' ';
            end;
        end
      else
        if (numer < 20) and (numer > 2) then
          rub1 := rub1 + NumEd[numer] + ' '
        else
          if (numer < 3) and (numer > 0) and (i = 1) then
            rub1 := rub1 + NumEd1[numer] + ' '
          else
            if (numer < 3) and (numer > 0) and (i <> 1) then
              rub1 := rub1 + NumEd[numer] + ' ';

        if k > 1 then
          if i > 0 then
            if rub1 <> '' then
              begin
                if numer = 1 then
                  rub1 := rub1 + XLion1[i] + ' ';

                if (numer > 1) and (numer < 5) then
                  rub1 := rub1 + XLion2[i] + ' ';

                if (numer >= 5) or (numer = 0) then
                  rub1 := rub1 + XLion0[i] + ' ';
              end;

        if k = 1 then
          begin
            if numer = 1 then
              rub2 := rub[1]
            else
              if (numer > 1) and (numer < 5) then
                rub2 := rub[2]
              else
                if (numer >= 5) or (numer = 0) then
                  rub2 := rub[3];
          end;

        rub2 := rub1 + rub2;
        rub1 := '';
    end;
  rub1 := copy(rub2, 2, length(rub2));
  rub2 := copy(rub2, 1, 1);
  rub2 := AnsiUpperCase(rub2);
  Result := rub2 + rub1;
end;

end.
