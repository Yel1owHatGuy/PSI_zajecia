podatek_Belki = function(przychod, koszt, typ_aktywa){
  zysk = przychod - koszt
  podatek = 0
  if (zysk <= 0){
    return (podatek)}
  else if (typ_aktywa == 'akcje' || typ_aktywa == 'obligacje'){
    podatek = 0.19 * zysk
    return (podatek)
  }
  else if (typ_aktywa == 'kryptowaluty'){
    baza = 85528
    if (zysk <= baza){
      podatek = zysk * 0.18
      return (podatek)
    }
    else {
      podatek = baza * 0.18 + (zysk - baza)*0.32
      return (podatek)
    }
  }
  else {
    print("Zly typ")
  }
}
podatek_Belki(15000, 10000, "akcje")        