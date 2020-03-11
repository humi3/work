import * as React from "react";
import { hot } from "react-hot-loader/root";

type squareValue = string | null;

type Props = {
  value: squareValue;
  onClick: () => void;
};

function Square(props: Props) {
  return (
    <button className="square" onClick={props.onClick}>
      {props.value}
    </button>
  );
}

export default hot(Square);
