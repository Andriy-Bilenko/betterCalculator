#ifndef ADDITIONAL_H
#define ADDITIONAL_H

#include <QObject>
#include <QQmlEngine>

/// \brief The Additional class
/// class with additional functions for data manipulation
class Additional : public QObject
{
    Q_OBJECT
    QML_ELEMENT
public:
    explicit Additional(QObject *parent = nullptr);

public slots:
    ///
    /// \brief clearOne()
    /// deletes last character in a QString if awailable
    /// \param input
    /// \return resulting QString
    QString clearOne(QString input);
};

#endif // ADDITIONAL_H
