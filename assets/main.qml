/*
 * Copyright (c) 2011-2014 BlackBerry Limited.
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 * http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

import bb.cascades 1.4

Page {
    titleBar: TitleBar {
        title: qsTr("LMGTFY Client") + Retranslate.onLanguageChanged
    }
    Container {
        topPadding: ui.du(10)
        horizontalAlignment: HorizontalAlignment.Center
        TextField {
            id: inputbox
            hintText: qsTr("Let Me Google That For You") + Retranslate.onLanguageChanged
        }
        Container {
            horizontalAlignment: HorizontalAlignment.Center
            layout: StackLayout {
                orientation: LayoutOrientation.LeftToRight
            }
            Button {
                text: qsTr("Search")
                onClicked: {
                    LMGTFY.formatURL(inputbox.text, false)
                    resultfield.text = LMGTFY.returnURL();
                }
            }
            Button {
                text: qsTr("I'm Feeling Lucky")
                onClicked: {
                    LMGTFY.formatURL(inputbox.text, true)
                    resultfield.text = LMGTFY.returnURL();
                }
            }
        }
        TextArea {
            id: resultfield
            topPadding: ui.du(15)
            horizontalAlignment: HorizontalAlignment.Center
            editable: false
            text: qsTr("URL") + Retranslate.onLanguageChanged
            textStyle.fontSize: FontSize.Large
        }
    }
}
