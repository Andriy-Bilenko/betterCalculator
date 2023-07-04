#include "calculator.hpp"
#include <QStack>
#include <iostream>
#include <sstream>
#include <cmath>
#include <stack>
#include "tinyexpr.h"

Calculator::Calculator(QObject *parent)
    : QObject{parent}
{

}

QString Calculator::calculate(QString data)
{
    te_parser tep;
    const double r = tep.evaluate(data.toStdString());
    if(tep.success()){
        return QString::number(r);
    }else{
        return "NaN";
    }
}

