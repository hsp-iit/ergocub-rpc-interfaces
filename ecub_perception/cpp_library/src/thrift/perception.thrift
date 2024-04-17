struct YarpMatrix
{
}
(
    yarp.name="yarp::sig::Matrix"
    yarp.includefile="yarp/sig/Matrix.h"
)

struct YarpVector
{
}
(
    yarp.name="yarp::sig::Vector"
    yarp.includefile="yarp/sig/Vector.h"
)

service eCubPerceptionInterface
{
    list<YarpMatrix> get_poses();
    YarpVector get_center();
    double get_distance();
    bool is_focused();
    YarpVector get_face_position();
    string get_action();
    YarpVector get_human_position();
}