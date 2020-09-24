.class public Lcom/coloros/settings/widget/LocalOppoTimePicker;
.super Lcom/color/support/widget/OppoTimePicker;
.source "LocalOppoTimePicker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coloros/settings/widget/LocalOppoTimePicker$a;
    }
.end annotation


# instance fields
.field public a:Z

.field private b:Lcom/coloros/settings/widget/LocalOppoTimePicker$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 39
    invoke-direct {p0, p1, p2, v0}, Lcom/coloros/settings/widget/LocalOppoTimePicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 43
    invoke-direct {p0, p1, p2, p3}, Lcom/color/support/widget/OppoTimePicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x1

    .line 44
    iput-boolean p1, p0, Lcom/coloros/settings/widget/LocalOppoTimePicker;->a:Z

    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 49
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    if-eq v0, v1, :cond_0

    const/4 v2, 0x3

    if-eq v0, v2, :cond_0

    const/4 v2, 0x4

    if-eq v0, v2, :cond_0

    goto :goto_0

    .line 57
    :cond_0
    iput-boolean v1, p0, Lcom/coloros/settings/widget/LocalOppoTimePicker;->a:Z

    .line 58
    iget-object v0, p0, Lcom/coloros/settings/widget/LocalOppoTimePicker;->b:Lcom/coloros/settings/widget/LocalOppoTimePicker$a;

    if-eqz v0, :cond_2

    .line 59
    invoke-interface {v0, p0}, Lcom/coloros/settings/widget/LocalOppoTimePicker$a;->a(Lcom/coloros/settings/widget/LocalOppoTimePicker;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 52
    iput-boolean v0, p0, Lcom/coloros/settings/widget/LocalOppoTimePicker;->a:Z

    .line 66
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/coloros/settings/widget/LocalOppoTimePicker;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 68
    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 71
    :cond_3
    invoke-super {p0, p1}, Lcom/color/support/widget/OppoTimePicker;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public setOnTouchEndListener(Lcom/coloros/settings/widget/LocalOppoTimePicker$a;)V
    .locals 0

    .line 35
    iput-object p1, p0, Lcom/coloros/settings/widget/LocalOppoTimePicker;->b:Lcom/coloros/settings/widget/LocalOppoTimePicker$a;

    return-void
.end method
