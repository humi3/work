import * as React from "react";
import { hot } from "react-hot-loader/root";
import Square from "./square";

type SquareValue = string | null;

type Props = {
  value: Array<SquareValue>;
  onClick: (i: number) => void;
};

class Board extends React.Component<Props> {
  constructor(props: Props) {
    super(props);
  }

  renderSquare(i: number) {
    return (
      <Square
        value={this.props.value[i]}
        onClick={() => this.props.onClick(i)}
      />
    );
  }

  render() {
    return (
      <div>
        <div className="board-row">
          {this.renderSquare(0)}
          {this.renderSquare(1)}
          {this.renderSquare(2)}
        </div>
        <div className="board-row">
          {this.renderSquare(3)}
          {this.renderSquare(4)}
          {this.renderSquare(5)}
        </div>
        <div className="board-row">
          {this.renderSquare(6)}
          {this.renderSquare(7)}
          {this.renderSquare(8)}
        </div>
      </div>
    );
  }
}

export default hot(Board);
