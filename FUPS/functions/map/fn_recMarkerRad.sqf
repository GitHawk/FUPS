private ["_data","_angle"];
_data = _this select 0;
_angle = _this select 1;

private ["_yVec","_xVec","_dir"];
_yVec = (_data select 2) vectorMultiply 0.5;
_xVec = (_data select 3) vectorMultiply 0.5;
_dir = _data select 4;

_yVec = _yVec vectorMultiply (cos (_angle - _dir));
_xVec = _xVec vectorMultiply (sin (_angle - _dir));

vectorMagnitude (_yVec vectorAdd _xVec)