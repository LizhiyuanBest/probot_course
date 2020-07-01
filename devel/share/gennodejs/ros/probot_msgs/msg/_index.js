
"use strict";

let SFUVersionNum = require('./SFUVersionNum.js');
let JogJoint = require('./JogJoint.js');
let IOStatus = require('./IOStatus.js');
let DemoCtrl = require('./DemoCtrl.js');
let SetOutputIO = require('./SetOutputIO.js');
let ControllerCtrl = require('./ControllerCtrl.js');
let JogPose = require('./JogPose.js');
let InterfaceReturnCode = require('./InterfaceReturnCode.js');
let PredefinedPointList = require('./PredefinedPointList.js');
let PredefinedPoint = require('./PredefinedPoint.js');

module.exports = {
  SFUVersionNum: SFUVersionNum,
  JogJoint: JogJoint,
  IOStatus: IOStatus,
  DemoCtrl: DemoCtrl,
  SetOutputIO: SetOutputIO,
  ControllerCtrl: ControllerCtrl,
  JogPose: JogPose,
  InterfaceReturnCode: InterfaceReturnCode,
  PredefinedPointList: PredefinedPointList,
  PredefinedPoint: PredefinedPoint,
};
