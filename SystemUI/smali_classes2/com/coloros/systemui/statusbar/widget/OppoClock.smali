.class public Lcom/coloros/systemui/statusbar/widget/OppoClock;
.super Landroid/widget/TextView;
.source "OppoClock.java"

# interfaces
.implements Lcom/android/systemui/plugins/DarkIconDispatcher$DarkReceiver;
.implements Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coloros/systemui/statusbar/widget/OppoClock$OnClockVisibilityChangeListener;,
        Lcom/coloros/systemui/statusbar/widget/OppoClock$ClockUpdateHandler;
    }
.end annotation


# static fields
.field private static final AM_PM_STYLE_GONE:I = 0x2

.field private static final AM_PM_STYLE_NORMAL:I = 0x0

.field private static final AM_PM_STYLE_SMALL:I = 0x1

.field private static final CLOCK_SUPER_PARCELABLE:Ljava/lang/String; = "clock_super_parcelable"

.field private static final CURRENT_USER_ID:Ljava/lang/String; = "current_user_id"

.field private static final MSG_UPDATE_CLOCK:I = 0x0

.field private static final MSG_UPDATE_CONTENT_DESCRIPTION:I = 0x1

.field private static final TAG:Ljava/lang/String; = "OppoClock"

.field private static final TIMEZONE_CHANGED_UPDATE_DELAY:I = 0x12c


# instance fields
.field private mAmPmStyle:I

.field private mCalendar:Ljava/util/Calendar;

.field private mContentDescriptionType:Ljava/lang/String;

.field private mCurrentUserId:I

.field private mLayoutLeft:I

.field private final mMultiUserListener:Lcom/coloros/systemui/common/multiluser/IMultiUserListener;

.field private mOnClockVisibilityChangeListener:Lcom/coloros/systemui/statusbar/widget/OppoClock$OnClockVisibilityChangeListener;

.field private final mTimeListener:Lcom/coloros/systemui/common/receiver/IReceiverListener;

.field private mTint:I

.field private mTmpRect:Landroid/graphics/Rect;

.field private mUpdateHandler:Lcom/coloros/systemui/statusbar/widget/OppoClock$ClockUpdateHandler;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 137
    invoke-direct {p0, p1, v0}, Lcom/coloros/systemui/statusbar/widget/OppoClock;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 141
    invoke-direct {p0, p1, p2, v0}, Lcom/coloros/systemui/statusbar/widget/OppoClock;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 145
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 71
    new-instance p3, Lcom/coloros/systemui/statusbar/widget/OppoClock$ClockUpdateHandler;

    invoke-direct {p3, p0}, Lcom/coloros/systemui/statusbar/widget/OppoClock$ClockUpdateHandler;-><init>(Lcom/coloros/systemui/statusbar/widget/OppoClock;)V

    iput-object p3, p0, Lcom/coloros/systemui/statusbar/widget/OppoClock;->mUpdateHandler:Lcom/coloros/systemui/statusbar/widget/OppoClock$ClockUpdateHandler;

    .line 76
    new-instance p3, Landroid/graphics/Rect;

    invoke-direct {p3}, Landroid/graphics/Rect;-><init>()V

    iput-object p3, p0, Lcom/coloros/systemui/statusbar/widget/OppoClock;->mTmpRect:Landroid/graphics/Rect;

    const/4 p3, -0x1

    .line 77
    iput p3, p0, Lcom/coloros/systemui/statusbar/widget/OppoClock;->mLayoutLeft:I

    .line 79
    new-instance p3, Lcom/coloros/systemui/statusbar/widget/OppoClock$1;

    invoke-direct {p3, p0}, Lcom/coloros/systemui/statusbar/widget/OppoClock$1;-><init>(Lcom/coloros/systemui/statusbar/widget/OppoClock;)V

    iput-object p3, p0, Lcom/coloros/systemui/statusbar/widget/OppoClock;->mMultiUserListener:Lcom/coloros/systemui/common/multiluser/IMultiUserListener;

    .line 87
    new-instance p3, Lcom/coloros/systemui/statusbar/widget/OppoClock$2;

    invoke-direct {p3, p0}, Lcom/coloros/systemui/statusbar/widget/OppoClock$2;-><init>(Lcom/coloros/systemui/statusbar/widget/OppoClock;)V

    iput-object p3, p0, Lcom/coloros/systemui/statusbar/widget/OppoClock;->mTimeListener:Lcom/coloros/systemui/common/receiver/IReceiverListener;

    .line 147
    sget-object p3, Lcom/android/systemui/R$styleable;->Clock:[I

    invoke-virtual {p1, p2, p3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 p2, 0x0

    .line 148
    invoke-virtual {p1, p2, p2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcom/coloros/systemui/statusbar/widget/OppoClock;->mAmPmStyle:I

    .line 149
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method static synthetic access$000(Lcom/coloros/systemui/statusbar/widget/OppoClock;I)V
    .locals 0

    .line 53
    invoke-direct {p0, p1}, Lcom/coloros/systemui/statusbar/widget/OppoClock;->updateClock(I)V

    return-void
.end method

.method static synthetic access$100(Lcom/coloros/systemui/statusbar/widget/OppoClock;)Ljava/lang/String;
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/coloros/systemui/statusbar/widget/OppoClock;->mContentDescriptionType:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$200(Lcom/coloros/systemui/statusbar/widget/OppoClock;Ljava/lang/CharSequence;)V
    .locals 0

    .line 53
    invoke-direct {p0, p1}, Lcom/coloros/systemui/statusbar/widget/OppoClock;->updateContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method static synthetic access$302(Lcom/coloros/systemui/statusbar/widget/OppoClock;Ljava/util/Calendar;)Ljava/util/Calendar;
    .locals 0

    .line 53
    iput-object p1, p0, Lcom/coloros/systemui/statusbar/widget/OppoClock;->mCalendar:Ljava/util/Calendar;

    return-object p1
.end method

.method private updateClock(I)V
    .locals 2

    .line 196
    iget-object p0, p0, Lcom/coloros/systemui/statusbar/widget/OppoClock;->mUpdateHandler:Lcom/coloros/systemui/statusbar/widget/OppoClock$ClockUpdateHandler;

    int-to-long v0, p1

    const/4 p1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/coloros/systemui/statusbar/widget/OppoClock$ClockUpdateHandler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method private updateContentDescription(Ljava/lang/CharSequence;)V
    .locals 2

    .line 189
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x1

    .line 190
    iput v1, v0, Landroid/os/Message;->what:I

    .line 191
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 192
    iget-object p0, p0, Lcom/coloros/systemui/statusbar/widget/OppoClock;->mUpdateHandler:Lcom/coloros/systemui/statusbar/widget/OppoClock$ClockUpdateHandler;

    invoke-virtual {p0, v0}, Lcom/coloros/systemui/statusbar/widget/OppoClock$ClockUpdateHandler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method


# virtual methods
.method public getTimeString()Ljava/lang/String;
    .locals 3

    .line 201
    iget-object v0, p0, Lcom/coloros/systemui/statusbar/widget/OppoClock;->mCalendar:Ljava/util/Calendar;

    if-nez v0, :cond_0

    .line 202
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/systemui/statusbar/widget/OppoClock;->mCalendar:Ljava/util/Calendar;

    .line 204
    :cond_0
    iget-object v0, p0, Lcom/coloros/systemui/statusbar/widget/OppoClock;->mCalendar:Ljava/util/Calendar;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 207
    iget v0, p0, Lcom/coloros/systemui/statusbar/widget/OppoClock;->mAmPmStyle:I

    if-eqz v0, :cond_2

    .line 218
    invoke-virtual {p0}, Lcom/coloros/systemui/statusbar/widget/OppoClock;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 219
    invoke-static {}, Lcom/coloros/systemui/common/multiluser/MultiUserReceiver;->getInstance()Lcom/coloros/systemui/common/multiluser/MultiUserReceiver;

    move-result-object v1

    invoke-virtual {v1}, Lcom/coloros/systemui/common/multiluser/MultiUserReceiver;->getCurrentUserId()I

    move-result v1

    invoke-static {v0, v1}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;I)Z

    move-result v1

    if-eqz v1, :cond_1

    const v1, 0x7f11084a

    goto :goto_0

    :cond_1
    const v1, 0x7f110849

    .line 226
    :goto_0
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 227
    new-instance v1, Ljava/text/SimpleDateFormat;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iget-object p0, p0, Lcom/coloros/systemui/statusbar/widget/OppoClock;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {p0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    .line 209
    :cond_2
    invoke-virtual {p0}, Lcom/coloros/systemui/statusbar/widget/OppoClock;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v0

    iget-object v1, p0, Lcom/coloros/systemui/statusbar/widget/OppoClock;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 210
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "update time mAmPmStyle:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/coloros/systemui/statusbar/widget/OppoClock;->mAmPmStyle:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", getTime:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/coloros/systemui/statusbar/widget/OppoClock;->mCalendar:Ljava/util/Calendar;

    .line 211
    invoke-virtual {p0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " showTime:"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "Statusbar"

    const-string v2, "OppoClock"

    .line 210
    invoke-static {v1, v2, p0}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object p0, v0

    :goto_1
    return-object p0
.end method

.method public getUnlimitedViewWidth()I
    .locals 1

    .line 239
    invoke-virtual {p0}, Lcom/coloros/systemui/statusbar/widget/OppoClock;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0}, Lcom/coloros/systemui/statusbar/widget/OppoClock;->getPaint()Landroid/text/TextPaint;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/text/Layout;->getDesiredWidth(Ljava/lang/CharSequence;Landroid/text/TextPaint;)F

    move-result p0

    float-to-int p0, p0

    return p0
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .line 163
    invoke-super {p0}, Landroid/widget/TextView;->onAttachedToWindow()V

    .line 164
    const-class v0, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/policy/ConfigurationController;->addCallback(Ljava/lang/Object;)V

    .line 165
    const-class v0, Lcom/android/systemui/plugins/DarkIconDispatcher;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/plugins/DarkIconDispatcher;

    invoke-interface {v0, p0}, Lcom/android/systemui/plugins/DarkIconDispatcher;->addDarkReceiver(Lcom/android/systemui/plugins/DarkIconDispatcher$DarkReceiver;)V

    .line 166
    invoke-static {}, Lcom/coloros/systemui/common/receiver/TimeReceiver;->getInstance()Lcom/coloros/systemui/common/receiver/TimeReceiver;

    move-result-object v0

    iget-object v1, p0, Lcom/coloros/systemui/statusbar/widget/OppoClock;->mTimeListener:Lcom/coloros/systemui/common/receiver/IReceiverListener;

    invoke-virtual {v0, v1}, Lcom/coloros/systemui/common/receiver/TimeReceiver;->addListener(Lcom/coloros/systemui/common/receiver/IReceiverListener;)V

    .line 167
    invoke-static {}, Lcom/coloros/systemui/common/multiluser/MultiUserManager;->getInstance()Lcom/coloros/systemui/common/multiluser/MultiUserManager;

    move-result-object v0

    iget-object v1, p0, Lcom/coloros/systemui/statusbar/widget/OppoClock;->mMultiUserListener:Lcom/coloros/systemui/common/multiluser/IMultiUserListener;

    invoke-virtual {v0, v1}, Lcom/coloros/systemui/common/multiluser/MultiUserManager;->addListener(Lcom/coloros/systemui/common/multiluser/IMultiUserListener;)V

    .line 168
    invoke-static {}, Lcom/coloros/systemui/common/multiluser/MultiUserReceiver;->getInstance()Lcom/coloros/systemui/common/multiluser/MultiUserReceiver;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coloros/systemui/common/multiluser/MultiUserReceiver;->getCurrentUserId()I

    move-result v0

    iput v0, p0, Lcom/coloros/systemui/statusbar/widget/OppoClock;->mCurrentUserId:I

    .line 170
    invoke-virtual {p0}, Lcom/coloros/systemui/statusbar/widget/OppoClock;->updateClock()V

    return-void
.end method

.method public onConfigChanged(Landroid/content/res/Configuration;)V
    .locals 1

    const-string p1, "sys-sans-en"

    const/4 v0, 0x1

    .line 311
    invoke-static {p1, v0}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/coloros/systemui/statusbar/widget/OppoClock;->setTypeface(Landroid/graphics/Typeface;)V

    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 245
    invoke-super {p0, p1}, Landroid/widget/TextView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 246
    invoke-virtual {p0}, Lcom/coloros/systemui/statusbar/widget/OppoClock;->updateClock()V

    return-void
.end method

.method public onDarkChanged(Landroid/graphics/Rect;FI)V
    .locals 0

    .line 303
    iput p3, p0, Lcom/coloros/systemui/statusbar/widget/OppoClock;->mTint:I

    .line 304
    iget-object p2, p0, Lcom/coloros/systemui/statusbar/widget/OppoClock;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {p2, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 305
    invoke-static {p1, p0, p3}, Lcom/android/systemui/plugins/DarkIconDispatcher;->getTint(Landroid/graphics/Rect;Landroid/view/View;I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/coloros/systemui/statusbar/widget/OppoClock;->setTextColor(I)V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .line 175
    invoke-super {p0}, Landroid/widget/TextView;->onDetachedFromWindow()V

    .line 176
    const-class v0, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/policy/ConfigurationController;->removeCallback(Ljava/lang/Object;)V

    .line 177
    const-class v0, Lcom/android/systemui/plugins/DarkIconDispatcher;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/plugins/DarkIconDispatcher;

    invoke-interface {v0, p0}, Lcom/android/systemui/plugins/DarkIconDispatcher;->removeDarkReceiver(Lcom/android/systemui/plugins/DarkIconDispatcher$DarkReceiver;)V

    .line 178
    invoke-static {}, Lcom/coloros/systemui/common/receiver/TimeReceiver;->getInstance()Lcom/coloros/systemui/common/receiver/TimeReceiver;

    move-result-object v0

    iget-object v1, p0, Lcom/coloros/systemui/statusbar/widget/OppoClock;->mTimeListener:Lcom/coloros/systemui/common/receiver/IReceiverListener;

    invoke-virtual {v0, v1}, Lcom/coloros/systemui/common/receiver/TimeReceiver;->removeListener(Lcom/coloros/systemui/common/receiver/IReceiverListener;)V

    .line 179
    invoke-static {}, Lcom/coloros/systemui/common/multiluser/MultiUserManager;->getInstance()Lcom/coloros/systemui/common/multiluser/MultiUserManager;

    move-result-object v0

    iget-object v1, p0, Lcom/coloros/systemui/statusbar/widget/OppoClock;->mMultiUserListener:Lcom/coloros/systemui/common/multiluser/IMultiUserListener;

    invoke-virtual {v0, v1}, Lcom/coloros/systemui/common/multiluser/MultiUserManager;->removeListener(Lcom/coloros/systemui/common/multiluser/IMultiUserListener;)V

    .line 180
    iget-object p0, p0, Lcom/coloros/systemui/statusbar/widget/OppoClock;->mUpdateHandler:Lcom/coloros/systemui/statusbar/widget/OppoClock$ClockUpdateHandler;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/coloros/systemui/statusbar/widget/OppoClock$ClockUpdateHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 292
    invoke-super/range {p0 .. p5}, Landroid/widget/TextView;->onLayout(ZIIII)V

    .line 293
    invoke-virtual {p0}, Lcom/coloros/systemui/statusbar/widget/OppoClock;->getLocationOnScreen()[I

    move-result-object p1

    if-eqz p1, :cond_0

    .line 294
    array-length p2, p1

    if-lez p2, :cond_0

    iget p2, p0, Lcom/coloros/systemui/statusbar/widget/OppoClock;->mLayoutLeft:I

    const/4 p3, 0x0

    aget p4, p1, p3

    if-eq p2, p4, :cond_0

    const-string p2, "Statusbar"

    const-string p4, "OppoClock"

    const-string p5, "onDarkChanged before onLayout"

    .line 295
    invoke-static {p2, p4, p5}, Lcom/coloros/common/util/LogUtil;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 296
    aget p1, p1, p3

    iput p1, p0, Lcom/coloros/systemui/statusbar/widget/OppoClock;->mLayoutLeft:I

    .line 297
    iget-object p1, p0, Lcom/coloros/systemui/statusbar/widget/OppoClock;->mTmpRect:Landroid/graphics/Rect;

    const/4 p2, 0x0

    iget p3, p0, Lcom/coloros/systemui/statusbar/widget/OppoClock;->mTint:I

    invoke-virtual {p0, p1, p2, p3}, Lcom/coloros/systemui/statusbar/widget/OppoClock;->onDarkChanged(Landroid/graphics/Rect;FI)V

    :cond_0
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2

    if-eqz p1, :cond_2

    .line 270
    instance-of v0, p1, Landroid/os/Bundle;

    if-nez v0, :cond_0

    goto :goto_0

    .line 274
    :cond_0
    check-cast p1, Landroid/os/Bundle;

    const-string v0, "clock_super_parcelable"

    .line 275
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    .line 276
    invoke-super {p0, v0}, Landroid/widget/TextView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    const-string v0, "current_user_id"

    .line 277
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 278
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/coloros/systemui/statusbar/widget/OppoClock;->mCurrentUserId:I

    :cond_1
    return-void

    .line 271
    :cond_2
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/TextView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .line 262
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 263
    invoke-super {p0}, Landroid/widget/TextView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    const-string v2, "clock_super_parcelable"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 264
    iget p0, p0, Lcom/coloros/systemui/statusbar/widget/OppoClock;->mCurrentUserId:I

    const-string v1, "current_user_id"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v0
.end method

.method public setContentDescriptionType(Ljava/lang/String;)V
    .locals 0

    .line 234
    iput-object p1, p0, Lcom/coloros/systemui/statusbar/widget/OppoClock;->mContentDescriptionType:Ljava/lang/String;

    return-void
.end method

.method public setOnClockVisibilityChangeListener(Lcom/coloros/systemui/statusbar/widget/OppoClock$OnClockVisibilityChangeListener;)V
    .locals 0

    .line 154
    iput-object p1, p0, Lcom/coloros/systemui/statusbar/widget/OppoClock;->mOnClockVisibilityChangeListener:Lcom/coloros/systemui/statusbar/widget/OppoClock$OnClockVisibilityChangeListener;

    return-void
.end method

.method public setVisibility(I)V
    .locals 0

    .line 284
    invoke-super {p0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 285
    iget-object p0, p0, Lcom/coloros/systemui/statusbar/widget/OppoClock;->mOnClockVisibilityChangeListener:Lcom/coloros/systemui/statusbar/widget/OppoClock$OnClockVisibilityChangeListener;

    if-eqz p0, :cond_0

    .line 286
    invoke-interface {p0, p1}, Lcom/coloros/systemui/statusbar/widget/OppoClock$OnClockVisibilityChangeListener;->onClockVisibilityChanged(I)V

    :cond_0
    return-void
.end method

.method public updateClock()V
    .locals 1

    const/4 v0, 0x0

    .line 184
    invoke-direct {p0, v0}, Lcom/coloros/systemui/statusbar/widget/OppoClock;->updateClock(I)V

    return-void
.end method
