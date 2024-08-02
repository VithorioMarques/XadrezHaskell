module Main (main) where
import Tipos ( Square(Empty, Occupied), Piece(Rook), Color(Black) )
import Uteis ( printSquareWithColor )
-- initBoard :: Board
-- initBoard =
--   [[("Torre", "Preto"), ("Cavalo", "Preto"), ("Bispo", "Preto"), ("Dama", "Preto"), ("Rei", "Preto"), ("Bispo", "Preto"), ("Cavalo", "Preto"), ("Torre", "Preto")],
--    [("Peao", "Preto") | _ <- [1..8]],
--    [("  -  ","  -  ") | _ <- [1..8]],
--    [("  -  ","  -  ") | _ <- [1..8]],
--    [("  -  ","  -  ") | _ <- [1..8]],
--    [("  -  ","  -  ") | _ <- [1..8]],
--    [("Peao", "Branco") | _ <- [1..8]],
--    [("Torre", "Branco"), ("Cavalo", "Branco"), ("Bispo", "Branco"), ("Dama", "Branco"), ("Rei", "Branco"), ("Bispo", "Branco"), ("Cavalo", "Branco"), ("Torre", "Branco")]]

-- printBoard :: Board -> IO ()
-- printBoard tabuleiro =
--   do
--   print (head tabuleiro)
--   print (tabuleiro !! 1)
--   print (tabuleiro !! 2)
--   print (tabuleiro !! 3)
--   print (tabuleiro !! 4)
--   print (tabuleiro !! 5)
--   print (tabuleiro !! 6)
--   print (tabuleiro !! 7)
--   print (tabuleiro !! 8)

-- loopGame :: Bool -> Board -> String -> IO()
-- loopGame jogando tabuleiro jogador = 
--   if jogador == "Branco"
--     then do
--   else
--     do
  

main :: IO ()
main = do
  putStrLn "hello world"
  putStrLn ""

  printSquareWithColor $ Empty (0,0)
  printSquareWithColor $ Empty (0,1)
  printSquareWithColor $ Empty (0,2)
  printSquareWithColor $ Empty (0,3)
  printSquareWithColor $ Occupied $ Rook Tipos.Black (1,0)
  printSquareWithColor $ Empty (1,1)
  printSquareWithColor $ Empty (1,2)
  printSquareWithColor $ Empty (1,3)

