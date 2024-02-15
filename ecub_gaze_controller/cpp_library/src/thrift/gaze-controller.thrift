service eCubGazeControllerInterface {
    bool look_at(1:list<double> point);
    bool set_gain(1:double gain);
    bool set_motor_actuation(1:bool enabled);
}
