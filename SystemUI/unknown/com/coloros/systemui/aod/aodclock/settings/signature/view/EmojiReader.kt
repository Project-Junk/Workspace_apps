package com.coloros.systemui.aod.aodclock.settings.signature.view

import java.util.*

@Suppress("MemberVisibilityCanBePrivate", "unused")
object EmojiReader {

    fun getTextLength(str: CharSequence): Int {
        val sm = StateMachine()
        sm.read(str)
        return sm.getCurrentCharSize()
    }

    fun analyzeText(str: CharSequence): List<Node> {
        val sm = StateMachine()
        sm.read(str)
        return sm.getCharList().map { data ->
            val length = data.codePoint.fold(0) { sum, code ->
                sum + Character.charCount(code)
            }
            Node(data.startIndex, length, data.isEmoji, data.codePoint.toList())
        }
    }

    fun isEmojiOfVisionIndex(str: CharSequence, idx: Int): Boolean =
            isEmojiOfVisionIndex(analyzeText(str), idx)

    fun isEmojiOfVisionIndex(nodeList: List<Node>, idx: Int): Boolean {
        return nodeList[idx].isEmoji
    }

    fun isEmojiOfCharIndex(str: CharSequence, idx: Int): Boolean =
            isEmojiOfCharIndex(analyzeText(str), idx)

    fun isEmojiOfCharIndex(nodeList: List<Node>, idx: Int): Boolean {
        val visionIdx = nodeList.binarySearch { node ->
            when {
                idx < node.startIndex -> 1
                idx >= node.startIndex + node.length -> -1
                else -> 0
            }
        }
        if (visionIdx < 0) {
            return false
        }
        return isEmojiOfVisionIndex(nodeList, visionIdx)
    }

    fun subSequence(str: CharSequence, end: Int): CharSequence = subSequence(str, 0, end)
    fun subSequence(str: CharSequence, start: Int, end: Int): CharSequence {
        if (start < 0 || end > str.length) {
            throw IndexOutOfBoundsException(
                    "The index should be in range [0,${str.length}]," +
                            "but actually start = $start and end = $end."
            )
        }
        if (start > end) {
            throw IndexOutOfBoundsException(
                    "The start index should be not bigger than end," +
                            "but actually start = $start and end = $end."
            )
        }
        if (start == end) {
            return ""
        }
        val sm = StateMachine()
        sm.read(str, start + end)
        val charList = sm.getCharList()

        val startIdx = charList.getOrNull(start)?.startIndex
                ?: return ""

        val endIdx = charList.getOrNull(end - 1)?.let {
            it.startIndex + it.codePoint.fold(0) { sum, cp -> sum + Character.charCount(cp) }
        }
        return if (endIdx == null) {
            str.subSequence(startIdx, str.length)
        } else {
            str.subSequence(startIdx, endIdx)
        }
    }

    fun transToUnicode(str: CharSequence): List<String> {
        val result = mutableListOf<String>()
        str.forEachCodePoint { codePoint ->
            result.add("U+" + Integer.toHexString(codePoint))
        }
        return result
    }

    private inline fun CharSequence.forEachCodePoint(action: (Int) -> Unit) {
        var i = 0
        while (i < this.length) {
            val codePoint = Character.codePointAt(this, i)
            action(codePoint)
            i += Character.charCount(codePoint)
        }
    }

    private class StateMachine {

        companion object {
            const val Joiner = 0x200D
            const val ModifierBlack = 0xFE0E
            const val ModifierColorFul = 0xFE0F
            const val ModifierKeyCap = 0x20E3
            val ModifierTagRange = 0xE0020..0xE007F
            const val STATE_DEFAULT = 0x0
            const val STATE_EMOJI = 0x1
            const val STATE_PRE_EMOJI = 0x10
            const val STATE_NATIONAL_FLAG = STATE_EMOJI or 0x100
            const val STATE_EMOJI_MODIFIER = STATE_EMOJI or 0x1000
            const val STATE_EMOJI_JOIN = 0x10000
        }

        private val emojiModifier = setOf(
                ModifierBlack,
                ModifierColorFul,
                ModifierKeyCap
        ) + ModifierTagRange


        private val charUnitList = mutableListOf<InnerNode>()

        private var currentIndex = 0

        private var currentCodePoint = 0x0

        private var currentChar = InnerNode(0)

        private var currentState = STATE_DEFAULT

        private fun endChar() {
            currentState = STATE_DEFAULT
            if (currentChar.codePoint.isNotEmpty()) {
                charUnitList.add(currentChar)
                currentChar = InnerNode(currentIndex)
            }
        }

        private fun assertEmoji() {
            currentChar.isEmoji = true
        }

        private fun moveToNext() {
            currentChar.codePoint.add(currentCodePoint)
            currentIndex += Character.charCount(currentCodePoint)
        }

        private fun moveToPrev() {
            val lastCodePoint = currentChar.codePoint.removeLast()
            currentIndex -= Character.charCount(lastCodePoint)
        }

        fun read(str: CharSequence, end: Int = str.length) {

            while (currentIndex < str.length) {

                currentCodePoint = Character.codePointAt(str, currentIndex)

                when {
                    currentState == STATE_EMOJI_JOIN -> when {
                        isEmojiCodePoint(currentCodePoint) -> {
                            currentState = STATE_EMOJI
                            moveToNext()
                        }
                        else -> {
                            moveToPrev()
                            endChar()
                        }
                    }
                    currentState == STATE_NATIONAL_FLAG -> when {
                        isRegionalIndicator(currentCodePoint) -> {
                            moveToNext()
                            assertEmoji()
                            endChar()
                        }
                        else -> {
                            assertEmoji()
                            endChar()
                        }
                    }
                    currentState == STATE_PRE_EMOJI -> when {
                        emojiModifier.contains(currentCodePoint) -> {
                            currentState = STATE_EMOJI_MODIFIER
                            moveToNext()
                        }
                        else -> {
                            endChar()
                        }
                    }
                    currentState and STATE_EMOJI != 0 -> when {
                        Joiner == currentCodePoint -> {
                            currentState = STATE_EMOJI_JOIN
                            moveToNext()
                        }
                        emojiModifier.contains(currentCodePoint) -> {
                            currentState = STATE_EMOJI_MODIFIER
                            moveToNext()
                        }
                        else -> {
                            assertEmoji()
                            endChar()
                        }
                    }
                    else -> when {
                        isRegionalIndicator(currentCodePoint) -> {
                            currentState = STATE_NATIONAL_FLAG
                            moveToNext()
                        }
                        maybeEmojiCodePoint(currentCodePoint) -> {
                            currentState = STATE_PRE_EMOJI
                            moveToNext()
                        }

                        isEmojiCodePoint(currentCodePoint) -> {
                            currentState = STATE_EMOJI
                            moveToNext()
                        }

                        else -> {
                            moveToNext()
                            endChar()
                        }
                    }
                }

                if (getCurrentCharSize() >= end) {
                    break
                }
            }

            if (currentState != STATE_DEFAULT) {
                if (currentState and STATE_EMOJI != 0) {
                    assertEmoji()
                }
                endChar()
            }
        }

        fun getCurrentIndex(): Int = currentIndex

        fun getCurrentCharSize(): Int = charUnitList.size

        fun getCharList(): List<InnerNode> = charUnitList

        private fun isEmojiCodePoint(codePoint: Int) =
                (codePoint in 0x1F200..0x1FFFF) ||
                        (codePoint in 0x2500..0x2FFF) ||
                        isSpecialSymbol(codePoint)

        private fun isSpecialSymbol(codePoint: Int) =
                codePoint == 0x3030 || //wavy dash
                        codePoint == 0x00A9 || //copyright
                        codePoint == 0x00AE || //registered
                        codePoint == 0x2122 //trade mark

        private fun maybeEmojiCodePoint(codePoint: Int) =
                codePoint in 0x0..0x39

        private fun isRegionalIndicator(codePoint: Int) = codePoint in 0x1F000..0x1F1FF
    }

    private data class InnerNode(
            val startIndex: Int,
            var isEmoji: Boolean = false,
            val codePoint: Deque<Int> = LinkedList()
    )

    data class Node(
            val startIndex: Int,
            val length: Int,
            val isEmoji: Boolean,
            val codePoint: List<Int>
    )
}