unit UTaxService;

interface

type
  ITaxService = interface
      //ctrl+Shift+G
      ['{6DD13F1C-807E-4E74-B80F-25A64EF9330E}']

      function Tax(const aAmount: Double): Double;
  end;

implementation

end.
