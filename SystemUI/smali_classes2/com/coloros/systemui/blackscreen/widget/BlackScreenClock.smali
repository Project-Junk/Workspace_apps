.class public Lcom/coloros/systemui/blackscreen/widget/BlackScreenClock;
.super Landroid/widget/TextView;
.source "BlackScreenClock.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "BlackScreenClock"


# instance fields
.field private mCalendar:Ljava/util/Calendar;

.field private final mTimeListener:Lcom/coloros/systemui/common/receiver/IReceiverListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 45
    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 36
    new-instance v0, Lcom/coloros/systemui/blackscreen/widget/-$$Lambda$BlackScreenClock$_exiqcuthxWv4TG-Ts9aeLfoSws;

    invoke-direct {v0, p0}, Lcom/coloros/systemui/blackscreen/widget/-$$Lambda$BlackScreenClock$_exiqcuthxWv4TG-Ts9aeLfoSws;-><init>(Lcom/coloros/systemui/blackscreen/widget/BlackScreenClock;)V

    iput-object v0, p0, Lcom/coloros/systemui/blackscreen/widget/BlackScreenClock;->mTimeListener:Lcom/coloros/systemui/common/receiver/IReceiverListener;

    .line 46
    invoke-direct {p0, p1}, Lcom/coloros/systemui/blackscreen/widget/BlackScreenClock;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 50
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 36
    new-instance p2, Lcom/coloros/systemui/blackscreen/widget/-$$Lambda$BlackScreenClock$_exiqcuthxWv4TG-Ts9aeLfoSws;

    invoke-direct {p2, p0}, Lcom/coloros/systemui/blackscreen/widget/-$$Lambda$BlackScreenClock$_exiqcuthxWv4TG-Ts9aeLfoSws;-><init>(Lcom/coloros/systemui/blackscreen/widget/BlackScreenClock;)V

    iput-object p2, p0, Lcom/coloros/systemui/blackscreen/widget/BlackScreenClock;->mTimeListener:Lcom/coloros/systemui/common/receiver/IReceiverListener;

    .line 51
    invoke-direct {p0, p1}, Lcom/coloros/systemui/blackscreen/widget/BlackScreenClock;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 55
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 36
    new-instance p2, Lcom/coloros/systemui/blackscreen/widget/-$$Lambda$BlackScreenClock$_exiqcuthxWv4TG-Ts9aeLfoSws;

    invoke-direct {p2, p0}, Lcom/coloros/systemui/blackscreen/widget/-$$Lambda$BlackScreenClock$_exiqcuthxWv4TG-Ts9aeLfoSws;-><init>(Lcom/coloros/systemui/blackscreen/widget/BlackScreenClock;)V

    iput-object p2, p0, Lcom/coloros/systemui/blackscreen/widget/BlackScreenClock;->mTimeListener:Lcom/coloros/systemui/common/receiver/IReceiverListener;

    .line 56
    invoke-direct {p0, p1}, Lcom/coloros/systemui/blackscreen/widget/BlackScreenClock;->init(Landroid/content/Context;)V

    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 0

    .line 60
    iput-object p1, p0, Lcom/coloros/systemui/blackscreen/widget/BlackScreenClock;->mContext:Landroid/content/Context;

    return-void
.end method

.method private updateTime()V
    .locals 3

    .line 79
    iget-object v0, p0, Lcom/coloros/systemui/blackscreen/widget/BlackScreenClock;->mCalendar:Ljava/util/Calendar;

    if-nez v0, :cond_0

    .line 80
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/systemui/blackscreen/widget/BlackScreenClock;->mCalendar:Ljava/util/Calendar;

    .line 82
    :cond_0
    iget-object v0, p0, Lcom/coloros/systemui/blackscreen/widget/BlackScreenClock;->mCalendar:Ljava/util/Calendar;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 83
    invoke-virtual {p0}, Lcom/coloros/systemui/blackscreen/widget/BlackScreenClock;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v0

    iget-object v1, p0, Lcom/coloros/systemui/blackscreen/widget/BlackScreenClock;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 84
    new-instance v1, Lcom/coloros/systemui/blackscreen/widget/-$$Lambda$BlackScreenClock$1X2Vhc7arAeB1npiXLrW_TJCl_Y;

    invoke-direct {v1, p0, v0}, Lcom/coloros/systemui/blackscreen/widget/-$$Lambda$BlackScreenClock$1X2Vhc7arAeB1npiXLrW_TJCl_Y;-><init>(Lcom/coloros/systemui/blackscreen/widget/BlackScreenClock;Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/coloros/systemui/blackscreen/widget/BlackScreenClock;->post(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method public synthetic lambda$new$0$BlackScreenClock(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 37
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "android.intent.action.TIMEZONE_CHANGED"

    .line 38
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 39
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/systemui/blackscreen/widget/BlackScreenClock;->mCalendar:Ljava/util/Calendar;

    .line 41
    :cond_0
    invoke-direct {p0}, Lcom/coloros/systemui/blackscreen/widget/BlackScreenClock;->updateTime()V

    return-void
.end method

.method public synthetic lambda$updateTime$1$BlackScreenClock(Ljava/lang/String;)V
    .locals 0

    .line 84
    invoke-virtual {p0, p1}, Lcom/coloros/systemui/blackscreen/widget/BlackScreenClock;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 3

    .line 65
    invoke-super {p0}, Landroid/widget/TextView;->onAttachedToWindow()V

    const-string v0, "Statusbar"

    const-string v1, "BlackScreenClock"

    const-string v2, "onAttachedToWindow()"

    .line 66
    invoke-static {v0, v1, v2}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    invoke-static {}, Lcom/coloros/systemui/common/receiver/TimeReceiver;->getInstance()Lcom/coloros/systemui/common/receiver/TimeReceiver;

    move-result-object v0

    iget-object v1, p0, Lcom/coloros/systemui/blackscreen/widget/BlackScreenClock;->mTimeListener:Lcom/coloros/systemui/common/receiver/IReceiverListener;

    invoke-virtual {v0, v1}, Lcom/coloros/systemui/common/receiver/TimeReceiver;->addListener(Lcom/coloros/systemui/common/receiver/IReceiverListener;)V

    .line 68
    invoke-direct {p0}, Lcom/coloros/systemui/blackscreen/widget/BlackScreenClock;->updateTime()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 3

    .line 73
    invoke-super {p0}, Landroid/widget/TextView;->onDetachedFromWindow()V

    const-string v0, "Statusbar"

    const-string v1, "BlackScreenClock"

    const-string v2, "onDetachedFromWindow()"

    .line 74
    invoke-static {v0, v1, v2}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    invoke-static {}, Lcom/coloros/systemui/common/receiver/TimeReceiver;->getInstance()Lcom/coloros/systemui/common/receiver/TimeReceiver;

    move-result-object v0

    iget-object p0, p0, Lcom/coloros/systemui/blackscreen/widget/BlackScreenClock;->mTimeListener:Lcom/coloros/systemui/common/receiver/IReceiverListener;

    invoke-virtual {v0, p0}, Lcom/coloros/systemui/common/receiver/TimeReceiver;->removeListener(Lcom/coloros/systemui/common/receiver/IReceiverListener;)V

    return-void
.end method
