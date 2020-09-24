.class public Lcom/coloros/settings/widget/LocalColorTimePicker;
.super Lcom/color/support/widget/ColorTimePicker;
.source "LocalColorTimePicker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coloros/settings/widget/LocalColorTimePicker$a;
    }
.end annotation


# instance fields
.field private a:Lcom/coloros/settings/widget/LocalColorTimePicker$a;

.field private b:Ljava/util/Calendar;

.field private c:Z

.field private d:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 63
    invoke-direct {p0, p1}, Lcom/color/support/widget/ColorTimePicker;-><init>(Landroid/content/Context;)V

    .line 46
    new-instance p1, Lcom/coloros/settings/widget/LocalColorTimePicker$1;

    invoke-direct {p1, p0}, Lcom/coloros/settings/widget/LocalColorTimePicker$1;-><init>(Lcom/coloros/settings/widget/LocalColorTimePicker;)V

    iput-object p1, p0, Lcom/coloros/settings/widget/LocalColorTimePicker;->d:Landroid/os/Handler;

    .line 64
    invoke-direct {p0}, Lcom/coloros/settings/widget/LocalColorTimePicker;->b()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 68
    invoke-direct {p0, p1, p2}, Lcom/color/support/widget/ColorTimePicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 46
    new-instance p1, Lcom/coloros/settings/widget/LocalColorTimePicker$1;

    invoke-direct {p1, p0}, Lcom/coloros/settings/widget/LocalColorTimePicker$1;-><init>(Lcom/coloros/settings/widget/LocalColorTimePicker;)V

    iput-object p1, p0, Lcom/coloros/settings/widget/LocalColorTimePicker;->d:Landroid/os/Handler;

    .line 69
    invoke-direct {p0}, Lcom/coloros/settings/widget/LocalColorTimePicker;->b()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 73
    invoke-direct {p0, p1, p2, p3}, Lcom/color/support/widget/ColorTimePicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 46
    new-instance p1, Lcom/coloros/settings/widget/LocalColorTimePicker$1;

    invoke-direct {p1, p0}, Lcom/coloros/settings/widget/LocalColorTimePicker$1;-><init>(Lcom/coloros/settings/widget/LocalColorTimePicker;)V

    iput-object p1, p0, Lcom/coloros/settings/widget/LocalColorTimePicker;->d:Landroid/os/Handler;

    .line 74
    invoke-direct {p0}, Lcom/coloros/settings/widget/LocalColorTimePicker;->b()V

    return-void
.end method

.method static synthetic a(Lcom/coloros/settings/widget/LocalColorTimePicker;)Lcom/coloros/settings/widget/LocalColorTimePicker$a;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/coloros/settings/widget/LocalColorTimePicker;->a:Lcom/coloros/settings/widget/LocalColorTimePicker$a;

    return-object p0
.end method

.method private synthetic a(Landroid/view/View;Ljava/util/Calendar;)V
    .locals 2

    .line 80
    iput-object p2, p0, Lcom/coloros/settings/widget/LocalColorTimePicker;->b:Ljava/util/Calendar;

    .line 81
    iget-boolean p1, p0, Lcom/coloros/settings/widget/LocalColorTimePicker;->c:Z

    if-eqz p1, :cond_0

    .line 82
    iget-object p1, p0, Lcom/coloros/settings/widget/LocalColorTimePicker;->d:Landroid/os/Handler;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeMessages(I)V

    .line 83
    iget-object p1, p0, Lcom/coloros/settings/widget/LocalColorTimePicker;->d:Landroid/os/Handler;

    const-wide/16 v0, 0x1f4

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_0
    return-void
.end method

.method static synthetic b(Lcom/coloros/settings/widget/LocalColorTimePicker;)Ljava/util/Calendar;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/coloros/settings/widget/LocalColorTimePicker;->b:Ljava/util/Calendar;

    return-object p0
.end method

.method private b()V
    .locals 1

    const/4 v0, 0x1

    .line 78
    iput-boolean v0, p0, Lcom/coloros/settings/widget/LocalColorTimePicker;->c:Z

    .line 79
    new-instance v0, Lcom/coloros/settings/widget/-$$Lambda$LocalColorTimePicker$iSDf-D-onT-5rU2XFXO2Ib3EKn8;

    invoke-direct {v0, p0}, Lcom/coloros/settings/widget/-$$Lambda$LocalColorTimePicker$iSDf-D-onT-5rU2XFXO2Ib3EKn8;-><init>(Lcom/coloros/settings/widget/LocalColorTimePicker;)V

    invoke-virtual {p0, v0}, Lcom/coloros/settings/widget/LocalColorTimePicker;->setOnTimeChangeListener(Lcom/color/support/widget/ColorTimePicker$OnTimeChangeListener;)V

    return-void
.end method

.method public static synthetic lambda$iSDf-D-onT-5rU2XFXO2Ib3EKn8(Lcom/coloros/settings/widget/LocalColorTimePicker;Landroid/view/View;Ljava/util/Calendar;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/coloros/settings/widget/LocalColorTimePicker;->a(Landroid/view/View;Ljava/util/Calendar;)V

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 3

    .line 123
    iget-object v0, p0, Lcom/coloros/settings/widget/LocalColorTimePicker;->d:Landroid/os/Handler;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "LocalColorTimePicker"

    const-string v2, "hasTimeSetMessage"

    .line 124
    invoke-static {v0, v2}, Lcom/coloros/settings/utils/aa;->b(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    .line 94
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    if-eq v0, v2, :cond_0

    const/4 v3, 0x3

    if-eq v0, v3, :cond_0

    const/4 v3, 0x4

    if-eq v0, v3, :cond_0

    .line 108
    iput-boolean v1, p0, Lcom/coloros/settings/widget/LocalColorTimePicker;->c:Z

    goto :goto_0

    .line 103
    :cond_0
    iput-boolean v2, p0, Lcom/coloros/settings/widget/LocalColorTimePicker;->c:Z

    .line 104
    iget-object v0, p0, Lcom/coloros/settings/widget/LocalColorTimePicker;->d:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 105
    iget-object v0, p0, Lcom/coloros/settings/widget/LocalColorTimePicker;->d:Landroid/os/Handler;

    const-wide/16 v3, 0x1f4

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 97
    :cond_1
    iput-boolean v1, p0, Lcom/coloros/settings/widget/LocalColorTimePicker;->c:Z

    .line 98
    iget-object v0, p0, Lcom/coloros/settings/widget/LocalColorTimePicker;->d:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 111
    :goto_0
    invoke-virtual {p0}, Lcom/coloros/settings/widget/LocalColorTimePicker;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 113
    invoke-interface {v0, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 115
    :cond_2
    invoke-super {p0, p1}, Lcom/color/support/widget/ColorTimePicker;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public setOnTimeChangeEndListener(Lcom/coloros/settings/widget/LocalColorTimePicker$a;)V
    .locals 0

    .line 89
    iput-object p1, p0, Lcom/coloros/settings/widget/LocalColorTimePicker;->a:Lcom/coloros/settings/widget/LocalColorTimePicker$a;

    return-void
.end method
