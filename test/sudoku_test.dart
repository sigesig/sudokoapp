import 'package:flutter_test/flutter_test.dart';
import 'package:sudoko_app/api/sudoku.dart';

void main() {
  group("Board manipulation", (){
    final testSudoku = new sudoku();
    test("Should create a board when sudoku object is initialized and get it", () {
      var board = testSudoku.getBoard();

      expect(board.length, 9);
      expect(board[0].length, 9);
    });

    test("Default difficulty should be 1", (){
      expect(testSudoku.getDifficulty(), 1);
    });

    test("set entry on board", (){
      var prevEntry = testSudoku.getBoardEntry(0, 0);
      var result = testSudoku.setBoardEntry(0, 0, 8);
      var newEntry = testSudoku.getBoardEntry(0, 0);
      expect(result, true);
      expect(prevEntry, isNot(equals(newEntry)));
      expect(newEntry, 8);
    });
    test("should not be able to set entry on board to 10", (){
      var prevEntry = testSudoku.getBoardEntry(0, 0);
      var result = testSudoku.setBoardEntry(0, 0, 10);
      var newEntry = testSudoku.getBoardEntry(0, 0);
      expect(result, false);
      expect(prevEntry, equals(newEntry));
    });
    test("should not be able to set out of bounds value", (){
      var prevEntry = testSudoku.getBoardEntry(0, 0);
      var result = testSudoku.setBoardEntry(10, 0, 7);
      var newEntry = testSudoku.getBoardEntry(0, 0);
      expect(result, false);
      expect(prevEntry, equals(newEntry));
    });
  });

}