#ifndef CALCULATOR_HPP
#define CALCULATOR_HPP

#include <QObject>
#include <QQmlEngine>

/// \brief The Calculator class
/// class with function for calculation of equations using tinyexpr
class Calculator : public QObject
{
    Q_OBJECT
    QML_ELEMENT
public:
    explicit Calculator(QObject *parent = nullptr);


public slots:
    /// \brief calculate()
    /// calculates the equation (QString) and outputs result as a return value,
    /// if equation is invalid outputs "NaN"
    /// \param data - equation as a QString
    /// \return result as a QString
    QString calculate(QString data);
};

#endif // CALCULATOR_HPP
