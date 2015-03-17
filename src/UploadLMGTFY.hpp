/*
 * UploadLMGTFY.hpp
 *
 *  Created on: Mar 17, 2015
 *      Author: Thurask
 */

#ifndef UPLOADLMGTFY_HPP_
#define UPLOADLMGTFY_HPP_

#include <QtCore>
#include <QtNetwork>

class UploadLMGTFY: public QObject
{
    Q_OBJECT

public:
    UploadLMGTFY();
    virtual ~UploadLMGTFY();

public Q_SLOTS:
    void formatURL(QString subject, bool lucky);
    QString returnURL();

private:
    QString lmgtfyurl;
};

#endif /* UPLOADLMGTFY_HPP_ */
