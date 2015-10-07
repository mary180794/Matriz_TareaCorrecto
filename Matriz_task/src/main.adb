with Ada.Text_IO,Ada.Integer_Text_IO; use Ada.Text_IO,Ada.Integer_Text_IO;

procedure Main is

   matrizA : array(1..300,1..300) of Integer;
   matrizB : array(1..300,1..300) of Integer;
   matrizC : array(1..300,1..300) of Integer;

   i ,j,k  : Integer := 1 ;

   task llenarMatrizA;
   task llenarMatrizB;
   task llenarMatrizC;
   task MaResultante;
   task Multiplicacion;
   task MostrarA;
   task MostrarB;


   task body llenarMatrizA is
   begin
   for i in 1..300 loop
    for j in 1..300 loop
   matrizA(i,j) := 1;
  -- matrizB(i,j) := 1;
      end loop;
    end loop;
   end llenarMatrizA;

   task body llenarMatrizB is
   begin
   for i in 1..300 loop
    for j in 1..300 loop
   --matrizA(i,j) := 1;
    matrizB(i,j) := 1;
     end loop;
    end loop;
   end llenarMatrizB;


   task body llenarMatrizC is
   begin
   for i in 1..300  loop
    for j in 1..300 loop
    matrizC(i,j) := 0;
    end loop;
   end loop;
   end llenarMatrizC;

   task body MostrarA is
      begin
    Put_Line("Matriz A");
     for i in 1..300 loop
     for j in 1..300  loop
         Put(matrizA(i,j));
      end loop;
      Put_Line("");
      end loop;
   end MostrarA;

   task body MostrarB is
      begin
    Put_Line("Matriz B");
     for i in 1..300 loop
     for j in 1..300  loop
         Put(matrizB(i,j));
      end loop;
      Put_Line("");
      end loop;
      end MostrarB;

   task  body Multiplicacion  is
   begin
   for i in 1..300 loop
     for j in 1..300 loop
         for k in 1..300  loop
               matrizC(i,j) := matrizC(i,j) +  matrizA(i,k) * matrizB(k,j);
              -- matrizC(i,j) := suma;
               end loop;
            end loop;
         end loop;
      end Multiplicacion;

   task body MaResultante is
   begin
   Put_Line("Matriz  C");
   for i in 1..300 loop
      for j in 1..300 loop
        Put(matrizC(i,j));
        end loop;
      Put_Line("");
         end loop;
   end MaResultante;

begin

   null;
end Main;
