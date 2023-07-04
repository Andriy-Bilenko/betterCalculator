#include "additional.h"

Additional::Additional(QObject *parent)
    : QObject{parent}
{

}

QString Additional::clearOne(QString input)
{
    if(input.size() > 0){
        QString tmp = input;
        tmp.resize(tmp.size() - 1);
        return tmp;
    }
    return input;
}
