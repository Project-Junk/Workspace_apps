.class public Lcom/color/commons/view/LinkedEditText;
.super Landroid/widget/EditText;
.source "LinkedEditText.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/color/commons/view/LinkedEditText$OnSuperLinkClickListener;,
        Lcom/color/commons/view/LinkedEditText$LINK_TYPE;
    }
.end annotation


# static fields
.field public static final NAME_ADDR_EMAIL_PATTERN:Ljava/util/regex/Pattern;

.field public static final PHONE:Ljava/util/regex/Pattern;


# instance fields
.field private mAllowLink:Z

.field private mHasPerformedLongPress:Z

.field private mHasTouchSuperLink:Z

.field private mLinkClickListener:Lcom/color/commons/view/LinkedEditText$OnSuperLinkClickListener;

.field private mSuperLinkString:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "\\s*(\"[^\"]*\"|[^<>\"]+)\\s*<([^<>]+)>\\s*"

    .line 22
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/color/commons/view/LinkedEditText;->NAME_ADDR_EMAIL_PATTERN:Ljava/util/regex/Pattern;

    const-string v0, "(\\+[0-9]+[\\- \\.]*)?([^0-9\\+][0-9]+[\\- \\.]*)?(\\([0-9]+\\)[\\- \\.]*)?([0-9][0-9\\- \\.]+[0-9])"

    .line 24
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/color/commons/view/LinkedEditText;->PHONE:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 39
    invoke-direct {p0, p1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 32
    iput-object p1, p0, Lcom/color/commons/view/LinkedEditText;->mSuperLinkString:Ljava/lang/String;

    const/4 p1, 0x0

    .line 34
    iput-boolean p1, p0, Lcom/color/commons/view/LinkedEditText;->mHasPerformedLongPress:Z

    const/4 v0, 0x1

    .line 35
    iput-boolean v0, p0, Lcom/color/commons/view/LinkedEditText;->mAllowLink:Z

    .line 36
    iput-boolean p1, p0, Lcom/color/commons/view/LinkedEditText;->mHasTouchSuperLink:Z

    .line 40
    invoke-direct {p0}, Lcom/color/commons/view/LinkedEditText;->setLongClickListener()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 49
    invoke-direct {p0, p1, p2}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 32
    iput-object p1, p0, Lcom/color/commons/view/LinkedEditText;->mSuperLinkString:Ljava/lang/String;

    const/4 p1, 0x0

    .line 34
    iput-boolean p1, p0, Lcom/color/commons/view/LinkedEditText;->mHasPerformedLongPress:Z

    const/4 p2, 0x1

    .line 35
    iput-boolean p2, p0, Lcom/color/commons/view/LinkedEditText;->mAllowLink:Z

    .line 36
    iput-boolean p1, p0, Lcom/color/commons/view/LinkedEditText;->mHasTouchSuperLink:Z

    .line 50
    invoke-direct {p0}, Lcom/color/commons/view/LinkedEditText;->setLongClickListener()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 44
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 32
    iput-object p1, p0, Lcom/color/commons/view/LinkedEditText;->mSuperLinkString:Ljava/lang/String;

    const/4 p1, 0x0

    .line 34
    iput-boolean p1, p0, Lcom/color/commons/view/LinkedEditText;->mHasPerformedLongPress:Z

    const/4 p2, 0x1

    .line 35
    iput-boolean p2, p0, Lcom/color/commons/view/LinkedEditText;->mAllowLink:Z

    .line 36
    iput-boolean p1, p0, Lcom/color/commons/view/LinkedEditText;->mHasTouchSuperLink:Z

    .line 45
    invoke-direct {p0}, Lcom/color/commons/view/LinkedEditText;->setLongClickListener()V

    return-void
.end method

.method static synthetic access$002(Lcom/color/commons/view/LinkedEditText;Z)Z
    .locals 0

    .line 20
    iput-boolean p1, p0, Lcom/color/commons/view/LinkedEditText;->mHasPerformedLongPress:Z

    return p1
.end method

.method public static extractAddrSpec(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 113
    sget-object v0, Lcom/color/commons/view/LinkedEditText;->NAME_ADDR_EMAIL_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 115
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p0, 0x2

    .line 116
    invoke-virtual {v0, p0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method public static isEmailAddress(Ljava/lang/String;)Z
    .locals 1

    .line 104
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 107
    :cond_0
    invoke-static {p0}, Lcom/color/commons/view/LinkedEditText;->extractAddrSpec(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 108
    sget-object v0, Landroid/util/Patterns;->EMAIL_ADDRESS:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    .line 109
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->matches()Z

    move-result p0

    return p0
.end method

.method public static isWebUrl(Ljava/lang/String;)Z
    .locals 1

    .line 95
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 99
    :cond_0
    sget-object v0, Lcom/color/commons/view/Linkify;->WEB_URL:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    .line 100
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->matches()Z

    move-result p0

    return p0
.end method

.method private setLongClickListener()V
    .locals 1

    .line 54
    new-instance v0, Lcom/color/commons/view/LinkedEditText$1;

    invoke-direct {v0, p0}, Lcom/color/commons/view/LinkedEditText$1;-><init>(Lcom/color/commons/view/LinkedEditText;)V

    invoke-virtual {p0, v0}, Lcom/color/commons/view/LinkedEditText;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    return-void
.end method

.method private touchEvent(Landroid/widget/TextView;Landroid/text/Spannable;Landroid/view/MotionEvent;)Z
    .locals 7

    .line 123
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    if-nez v0, :cond_4

    .line 126
    :cond_0
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v3, v3

    .line 127
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getY()F

    move-result p3

    float-to-int p3, p3

    .line 129
    invoke-virtual {p1}, Landroid/widget/TextView;->getTotalPaddingLeft()I

    move-result v4

    sub-int/2addr v3, v4

    .line 130
    invoke-virtual {p1}, Landroid/widget/TextView;->getTotalPaddingTop()I

    move-result v4

    sub-int/2addr p3, v4

    .line 132
    invoke-virtual {p1}, Landroid/widget/TextView;->getScrollX()I

    move-result v4

    add-int/2addr v3, v4

    .line 133
    invoke-virtual {p1}, Landroid/widget/TextView;->getScrollY()I

    move-result v4

    add-int/2addr p3, v4

    .line 135
    invoke-virtual {p1}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object p1

    .line 136
    invoke-virtual {p1, p3}, Landroid/text/Layout;->getLineForVertical(I)I

    move-result v4

    int-to-float v3, v3

    .line 137
    invoke-virtual {p1, v4, v3}, Landroid/text/Layout;->getOffsetForHorizontal(IF)I

    move-result v5

    .line 139
    invoke-virtual {p1, v4}, Landroid/text/Layout;->getLineRight(I)F

    move-result v6

    cmpl-float v3, v3, v6

    if-lez v3, :cond_1

    return v2

    .line 143
    :cond_1
    invoke-virtual {p1, v4}, Landroid/text/Layout;->getLineBottom(I)I

    move-result p1

    if-le p3, p1, :cond_2

    return v2

    .line 147
    :cond_2
    const-class p1, Landroid/text/style/ClickableSpan;

    invoke-interface {p2, v5, v5, p1}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Landroid/text/style/ClickableSpan;

    .line 149
    array-length p3, p1

    if-eqz p3, :cond_3

    if-ne v0, v1, :cond_3

    .line 154
    aget-object p3, p1, v2

    invoke-interface {p2, p3}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    move-result p3

    .line 155
    aget-object p1, p1, v2

    invoke-interface {p2, p1}, Landroid/text/Spannable;->getSpanEnd(Ljava/lang/Object;)I

    move-result p1

    .line 157
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    .line 158
    invoke-virtual {p2, p3, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 160
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    if-eqz p2, :cond_3

    iget-boolean p2, p0, Lcom/color/commons/view/LinkedEditText;->mHasPerformedLongPress:Z

    if-nez p2, :cond_3

    .line 161
    iput-object p1, p0, Lcom/color/commons/view/LinkedEditText;->mSuperLinkString:Ljava/lang/String;

    return v1

    .line 166
    :cond_3
    iput-boolean v2, p0, Lcom/color/commons/view/LinkedEditText;->mHasPerformedLongPress:Z

    :cond_4
    return v2
.end method


# virtual methods
.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 73
    invoke-virtual {p0}, Lcom/color/commons/view/LinkedEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 74
    instance-of v1, v0, Landroid/text/Spannable;

    if-eqz v1, :cond_4

    .line 75
    check-cast v0, Landroid/text/Spannable;

    invoke-direct {p0, p0, v0, p1}, Lcom/color/commons/view/LinkedEditText;->touchEvent(Landroid/widget/TextView;Landroid/text/Spannable;Landroid/view/MotionEvent;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/color/commons/view/LinkedEditText;->mHasTouchSuperLink:Z

    .line 76
    iget-boolean v0, p0, Lcom/color/commons/view/LinkedEditText;->mHasTouchSuperLink:Z

    if-eqz v0, :cond_3

    .line 77
    sget-object p1, Lcom/color/commons/view/LinkedEditText$LINK_TYPE;->TYPE_PHONE:Lcom/color/commons/view/LinkedEditText$LINK_TYPE;

    .line 78
    iget-object v0, p0, Lcom/color/commons/view/LinkedEditText;->mSuperLinkString:Ljava/lang/String;

    invoke-static {v0}, Lcom/color/commons/view/LinkedEditText;->isEmailAddress(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 79
    sget-object p1, Lcom/color/commons/view/LinkedEditText$LINK_TYPE;->TYPE_EMAIL:Lcom/color/commons/view/LinkedEditText$LINK_TYPE;

    goto :goto_0

    .line 80
    :cond_0
    iget-object v0, p0, Lcom/color/commons/view/LinkedEditText;->mSuperLinkString:Ljava/lang/String;

    invoke-static {v0}, Lcom/color/commons/view/LinkedEditText;->isWebUrl(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 81
    sget-object p1, Lcom/color/commons/view/LinkedEditText$LINK_TYPE;->TYPE_WEB:Lcom/color/commons/view/LinkedEditText$LINK_TYPE;

    .line 83
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/color/commons/view/LinkedEditText;->mLinkClickListener:Lcom/color/commons/view/LinkedEditText$OnSuperLinkClickListener;

    if-eqz v0, :cond_2

    .line 84
    iget-object p0, p0, Lcom/color/commons/view/LinkedEditText;->mSuperLinkString:Ljava/lang/String;

    invoke-interface {v0, p1, p0}, Lcom/color/commons/view/LinkedEditText$OnSuperLinkClickListener;->onSuperLinkClick(Ljava/lang/Enum;Ljava/lang/String;)V

    :cond_2
    const/4 p0, 0x1

    return p0

    .line 88
    :cond_3
    invoke-super {p0, p1}, Landroid/widget/EditText;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0

    .line 91
    :cond_4
    invoke-super {p0, p1}, Landroid/widget/EditText;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public setAutoLinkFlag(Z)V
    .locals 0

    .line 68
    iput-boolean p1, p0, Lcom/color/commons/view/LinkedEditText;->mAllowLink:Z

    return-void
.end method

.method public setOnSuperLinkClickListener(Lcom/color/commons/view/LinkedEditText$OnSuperLinkClickListener;)V
    .locals 0

    .line 64
    iput-object p1, p0, Lcom/color/commons/view/LinkedEditText;->mLinkClickListener:Lcom/color/commons/view/LinkedEditText$OnSuperLinkClickListener;

    return-void
.end method

.method public setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V
    .locals 0

    .line 174
    invoke-super {p0, p1, p2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 175
    invoke-virtual {p0}, Lcom/color/commons/view/LinkedEditText;->getEditableText()Landroid/text/Editable;

    move-result-object p1

    iget-boolean p0, p0, Lcom/color/commons/view/LinkedEditText;->mAllowLink:Z

    invoke-static {p1, p0}, Lcom/color/commons/view/Linkify;->addLinks(Landroid/text/Spannable;Z)Z

    return-void
.end method
