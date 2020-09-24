package com.color.eyeprotect.util

import android.annotation.XmlRes
import android.content.Context
import android.content.res.XmlResourceParser
import android.util.Log
import com.color.common.util.LogUtil
import com.color.eyeprotect.R
import com.color.eyeprotect.model.AiNode
import org.xmlpull.v1.XmlPullParserException
import java.io.IOException
import kotlin.math.log

object AiCCTParseUtil {
    const val TAG = "AiCCTParseUtil"

    private fun parserXmlData(context: Context, @XmlRes xmlRes: Int): AiNode? {
        var currentNode: AiNode? = null
        val parser = context.resources.getXml(xmlRes)
        try {
            var eventType = parser.eventType
            end@ while (eventType != XmlResourceParser.END_DOCUMENT) {
                when (eventType) {
                    XmlResourceParser.START_DOCUMENT -> {
                        currentNode = AiNode()
                    }
                    XmlResourceParser.START_TAG -> {
                        val name = parser.name
                        if (currentNode == null) {
                            break@end
                        }
                        when (name) {
                            "Color_Temp" -> {
                                parser.next()
                                currentNode!!.mColorTemp = stringArray2FloatArray(parser.text.trim().split(",").toTypedArray())
                            }
                            "Screen" -> {
                                parser.next()
                                currentNode!!.mColorScreen = stringArray2FloatArray(parser.text.trim().split(",").toTypedArray())
                            }
                        }
                    }
                    else -> {
                    }
                }
                eventType = parser.next()
            }
        } catch (e: XmlPullParserException) {
            LogUtil.logE(TAG, "Got execption parsing permissions.", e)
            currentNode = null
        } catch (e: IOException) {
            LogUtil.logE(TAG, "Got execption parsing permissions.", e)
            currentNode = null
        }

        parser?.close()
        return currentNode
    }

    private fun stringArray2FloatArray(str: Array<String>): FloatArray {
        val len = str.size
        val a = FloatArray(len)
        for (i in 0 until len) {
            a[i] = java.lang.Float.parseFloat(str[i])
        }
        return a
    }

    fun getAiSpline(context: Context, @XmlRes xmlRes: Int): Spline? {
        var aiNode = parserXmlData(context, xmlRes)
        LogUtil.logD(TAG, "getAiSpline--> $aiNode")
        return if (aiNode == null) null else Spline.createSpline(aiNode?.mColorTemp, aiNode?.mColorScreen, Spline.CUBIC_SPLINE_METHOD)
    }
}