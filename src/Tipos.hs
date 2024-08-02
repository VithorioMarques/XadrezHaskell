{-# LANGUAGE InstanceSigs #-}
module Tipos where
------------------------------ Tipos inspirados na biblioteca hchesslib-0.2.0.0 ------------------------------
data Color = White | Black deriving (Eq, Show)
type Coord = (Int, Int)
data Piece
    = Rook   { pieceColor :: Color, pieceCoord :: Coord }
    | Knight { pieceColor :: Color, pieceCoord :: Coord }
    | Bishop { pieceColor :: Color, pieceCoord :: Coord }
    | Queen  { pieceColor :: Color, pieceCoord :: Coord }
    | King   { pieceColor :: Color, pieceCoord :: Coord }
    | Pawn   { pieceColor :: Color, pieceCoord :: Coord }
    deriving (Eq)
data Square = Empty Coord | Occupied Piece deriving (Eq)
type Board = [[Square]]
--------------------------------------------------------------------------------------------------------------

instance Show Piece where
  show :: Piece -> String
  show (Rook Tipos.White _) = " ♖  "
  show (Rook Tipos.Black _) = " ♜  "

  show (Knight Tipos.White _) = " ♘  "
  show (Knight Tipos.Black _) = " ♞  "

  show (Bishop Tipos.White _) = " ♗  "
  show (Bishop Tipos.Black _) = " ♝  "

  show (Queen Tipos.White _) = " ♕  "
  show (Queen Tipos.Black _) = " ♛  "
  
  show (King Tipos.White _) = " ♔  "
  show (King Tipos.Black _) = " ♚  "

  show (Pawn Tipos.White _) = " ♙  "
  show (Pawn Tipos.Black _) = " ♟  "