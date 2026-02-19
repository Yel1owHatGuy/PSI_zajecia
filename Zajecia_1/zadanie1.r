wartosc_przyszla = function(kapital, stopa, lata){
  fp = kapital * (1 + stopa)^lata
  return(fp)
}
print(wartosc_przyszla(100, 0.01, 1))
