module Uteis where

import Tipos
    ( Board,
      Square(..),
      Piece(Pawn, Queen, King, Bishop, Knight, Rook, pieceCoord),
      Color(White, Black) )
import System.Console.ANSI
    ( setSGR,
      Color(White, Green, Black),
      ColorIntensity(Vivid, Dull),
      ConsoleLayer(Background, Foreground),
      SGR(Reset, SetColor, SetConsoleIntensity, SetPaletteColor), ConsoleIntensity (BoldIntensity), xterm24LevelGray )


initBoard :: Board
initBoard = 
        [[Occupied (Rook Tipos.Black (0,0)), Occupied (Knight Tipos.Black (0,1)), Occupied (Bishop Tipos.Black (0,2)), Occupied (Queen Tipos.Black (0,3)), Occupied (King Tipos.Black (0,4)), Occupied (Bishop Tipos.Black (0,5)), Occupied (Knight Tipos.Black (0,6)), Occupied (Rook Tipos.Black (0,7))]
        ,[Occupied (Pawn Tipos.Black (1,i)) | i <- [0..7]]
        ,[Empty (2,i) | i <- [0..7]]
        ,[Empty (3,i) | i <- [0..7]]
        ,[Empty (4,i) | i <- [0..7]]
        ,[Empty (5,i) | i <- [0..7]]
        ,[Occupied (Pawn Tipos.White (6,i)) | i <- [0..7]]
        ,[Occupied (Rook Tipos.White (7,0)), Occupied (Knight Tipos.White (7,1)), Occupied (Bishop Tipos.White (7,2)), Occupied (Queen Tipos.White (7,3)), Occupied (King Tipos.White (7,4)), Occupied (Bishop Tipos.White (7,5)), Occupied (Knight Tipos.White (7,6)), Occupied (Rook Tipos.White (7,7))]]

-- Function to print a square with alternating background colors
printSquareWithColor :: Square -> IO ()
printSquareWithColor square = do
    let (x, y) = case square of
                    Empty coord -> coord
                    Occupied peca -> pieceCoord peca
    let bgColor = if even(x + y) then Green else System.Console.ANSI.White
    --let bgAnsiColor = if bgColor == Green then Green else System.Console.ANSI.White -- Alternate colors
    setSGR [SetConsoleIntensity BoldIntensity,
            SetColor Foreground Vivid System.Console.ANSI.Black,
            SetColor Background Dull bgColor,
            SetPaletteColor Foreground $ xterm24LevelGray 0]
    putStr $ case square of
               Empty _         -> "  "  -- Print empty square
               Occupied piece  -> show piece -- Print the piece
    setSGR [Reset]  -- Reset terminal colors

-- printBoardLine :: Board -> Int -> IO ()
-- printBoardLine [] _ = putStrLn ""
-- printBoardLine (x:xs) col = do putStr $ " " ++ show col ++ " "
--                                 mapM_ printSquareWithColor x
--                                 putStrLn $ ""
--                                 printBoardLine xs (col + 1)