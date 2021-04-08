/**
 * TODO:
 * 1. create board with varying difficulties
 * 2. solve board
 * 3.
 */

class sudoku {
  var _board = new List.generate(9, (_) => new List(9), growable: false);
  int _difficulty = 0;

  //generates a new board when a new object is created
  sudoku() {
    this._board = generate();
  }

  /// Set entry on board. Return true if succesfully set
  bool setBoardEntry(int row, int column, int value) {
    if (row < 0 || column < 0) {
      return false;
    }
    if (row > 8 || column > 8) {
      return false;
    }
    if (value < 1 || value > 9){
      return false;
    }
    _board[row][column] = value;
    return true;
  }

  int getBoardEntry(int row, int column) {
    return _board[row][column];
  }

  List<List<int>> getBoard(){
    return _board;
  }

  int getDifficulty(){
    return _difficulty;
  }

  /// Generates a sudoku and with some given difficulty
  /// 1 = easy, 2 = normal, 3 = hard, 4 = master, 5 = better luck next time
  List<List<int>> generate({int difficulty = 1}) {
    _difficulty = difficulty;
    List<List<int>> board = new List.generate(9, (_) => new List(9), growable: false);
    return board;

  }

  ///Solves the current sudoku
  void solveSudoku() {}

  ///Check if board entry is correct
  bool verifyEntry() {
    return false;
  }

  void printBoard() {
    _board.forEach((element) {
      print(element);
    });
  }

}

void main() {
  var test = new sudoku();
  test.printBoard();
  test.setBoardEntry(5, 5, 6);
  test.printBoard();
}
