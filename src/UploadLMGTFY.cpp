/*
 * UploadLMGTFY.cpp
 *
 *  Created on: Mar 17, 2015
 *      Author: Thurask
 */

#include "UploadLMGTFY.hpp"
#include <QtCore>

UploadLMGTFY::UploadLMGTFY()
{
    lmgtfyurl = "";
}

void UploadLMGTFY::formatURL(QString subject, bool lucky)
{
    QByteArray qba = QUrl::toPercentEncoding(subject, " ", "+*/@");
    QString query(qba);
    query.replace(" ", "+");
    if (lucky == true) {
        query.append("&l=1");
    }
    QString url = "http://lmgtfy.com/?q=" + query;
    lmgtfyurl = url;
}

QString UploadLMGTFY::returnURL()
{
    return lmgtfyurl;
}

UploadLMGTFY::~UploadLMGTFY()
{

}

