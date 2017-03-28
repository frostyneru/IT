const n=1; //Кол-во записей
x=2;
y=10;
type toy=record
    name:string;      //Название
    price:real;       //Цена
    number:integer;   //Количество
    x,y:byte;         //x-нижняя граница; y-верхняя;
end;
var
    toys:array[1..n] of toy;
    i:integer;
begin
    for i:=1 to n do   //Ввод информации об ассортименте игрушек
        begin
            readln(toys[i].name);
            readln(toys[i].price);
            readln(toys[i].number);
            readln(toys[i].x);
            readln(toys[i].y);
        end;
    for i:=1 to n do
        begin
            //writeln('Название : ',toys[i].name);'
            writeln('Цена : ',toys[i].price);
            writeln('Количество : ',toys[i].number);
            writeln('Возрастные границы : ',toys[i].x,'%',toys[i].y);
        end;
end.
