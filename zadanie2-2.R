oblicz_godziny <- function(bieżący_rok, bieżący_dzień, bieżący_miesiąc, obsuwa)
{
  Godziny_W_Tym_Roku <- (((12 - bieżący_miesiąc) * 30 ) - (30 - bieżący_dzień)) * 24
  Godziny_Przez_Kolejne_Lata <- (2022 - bieżący_rok - 1 + obsuwa) * 365 * 24
  Godziny_W_Ostatnim_Roku <-  (6 * 30 * 24)
  return (Godziny_W_Tym_Roku + Godziny_Przez_Kolejne_Lata + Godziny_W_Ostatnim_Roku)
}
oblicz_godziny(2018, 31, 05, 0)
