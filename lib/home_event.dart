abstract class HomeEvent {}

class ChanelEvent extends HomeEvent {}

class VolumnEvent extends HomeEvent {}

class IncreaseEvent extends ChanelEvent {}

class DecreaseEvent extends ChanelEvent {}

class IncreaseVolumnEvent extends VolumnEvent {}

class DecreaseVolumnEvent extends VolumnEvent {}

class MuteVolumnEvent extends VolumnEvent {}
