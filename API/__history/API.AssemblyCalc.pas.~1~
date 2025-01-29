Unit API.AssemblyCalc;

interface

type
  TAsmMath = class
  public
    class function Add(A, B: Integer): Integer; static;
    class function Subtract(A, B: Integer): Integer; static;
    class function Multiply(A, B: Integer): Integer; static;
    class function Divide(A, B: Integer): Double; static;
  end;

implementation
uses
  System.SysUtils, Winapi.Windows;

class function TAsmMath.Add(A, B: Integer): Integer;
asm
  mov eax, A    // Load first number into eax
  add eax, B    // Add second number
end;

class function TAsmMath.Subtract(A, B: Integer): Integer;
asm
  mov eax, A    // Load first number
  sub eax, B    // Subtract second number
end;

class function TAsmMath.Multiply(A, B: Integer): Integer;
asm
  mov eax, A    // Load first number
  imul eax, B   // Multiply by second number
end;

class function TAsmMath.Divide(A, B: Integer): Double;
var
  LTempA, LTempB: Integer;
begin
  if B = 0 then
    raise Exception.Create('Division by zero error!');

  LTempA := A;
  LTempB := B;

  asm
    fild LTempA   // Load A into FPU stack
    fild LTempB   // Load B into FPU stack
    fdiv         // Perform floating-point division
    fstp Result  // Store result into function return value
  end;
end;

end.