.class public Lcom/coloros/systemui/keyguard/security/SecurityTouchListener;
.super Ljava/lang/Object;
.source "SecurityTouchListener.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coloros/systemui/keyguard/security/SecurityTouchListener$OnRepeatListener;
    }
.end annotation


# static fields
.field private static final MESSAGE_REPEAT:I = 0x1

.field private static final REPEAT_INTERVAL:I = 0x32

.field private static final REPEAT_START_DELAY:I = 0x190


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private mIsTouchDown:Z

.field private mOnRepeatListener:Lcom/coloros/systemui/keyguard/security/SecurityTouchListener$OnRepeatListener;


# direct methods
.method public constructor <init>(Lcom/coloros/systemui/keyguard/security/SecurityTouchListener$OnRepeatListener;)V
    .locals 2
    .param p1    # Lcom/coloros/systemui/keyguard/security/SecurityTouchListener$OnRepeatListener;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    return-void

    .line 38
    :cond_0
    new-instance v0, Landroid/os/Handler;

    new-instance v1, Lcom/coloros/systemui/keyguard/security/-$$Lambda$SecurityTouchListener$XuXoYBDnPHVyvUaXqSGfb9UFkPU;

    invoke-direct {v1, p0}, Lcom/coloros/systemui/keyguard/security/-$$Lambda$SecurityTouchListener$XuXoYBDnPHVyvUaXqSGfb9UFkPU;-><init>(Lcom/coloros/systemui/keyguard/security/SecurityTouchListener;)V

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/coloros/systemui/keyguard/security/SecurityTouchListener;->mHandler:Landroid/os/Handler;

    .line 47
    iput-object p1, p0, Lcom/coloros/systemui/keyguard/security/SecurityTouchListener;->mOnRepeatListener:Lcom/coloros/systemui/keyguard/security/SecurityTouchListener$OnRepeatListener;

    return-void
.end method

.method private sendRepeatMessage(J)V
    .locals 1

    .line 77
    iget-boolean v0, p0, Lcom/coloros/systemui/keyguard/security/SecurityTouchListener;->mIsTouchDown:Z

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/coloros/systemui/keyguard/security/SecurityTouchListener;->mHandler:Landroid/os/Handler;

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 78
    invoke-virtual {p0, v0, p1, p2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public synthetic lambda$new$0$SecurityTouchListener(Landroid/os/Message;)Z
    .locals 3

    .line 39
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/coloros/systemui/keyguard/security/SecurityTouchListener;->mOnRepeatListener:Lcom/coloros/systemui/keyguard/security/SecurityTouchListener$OnRepeatListener;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/coloros/systemui/keyguard/security/SecurityTouchListener$OnRepeatListener;->needRepeat()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-boolean p1, p0, Lcom/coloros/systemui/keyguard/security/SecurityTouchListener;->mIsTouchDown:Z

    if-eqz p1, :cond_0

    .line 41
    iget-object p1, p0, Lcom/coloros/systemui/keyguard/security/SecurityTouchListener;->mOnRepeatListener:Lcom/coloros/systemui/keyguard/security/SecurityTouchListener$OnRepeatListener;

    invoke-interface {p1}, Lcom/coloros/systemui/keyguard/security/SecurityTouchListener$OnRepeatListener;->onRepeated()V

    const-wide/16 v1, 0x32

    .line 42
    invoke-direct {p0, v1, v2}, Lcom/coloros/systemui/keyguard/security/SecurityTouchListener;->sendRepeatMessage(J)V

    return v0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    .line 53
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p2

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p2, :cond_1

    if-eq p2, v1, :cond_0

    const/4 v2, 0x3

    if-eq p2, v2, :cond_0

    goto :goto_0

    .line 68
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 69
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const/high16 p2, 0x3f800000    # 1.0f

    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    new-instance p2, Landroid/view/animation/LinearInterpolator;

    invoke-direct {p2}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const-wide/16 v2, 0x96

    invoke-virtual {p1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 70
    iput-boolean v0, p0, Lcom/coloros/systemui/keyguard/security/SecurityTouchListener;->mIsTouchDown:Z

    goto :goto_0

    .line 55
    :cond_1
    iput-boolean v1, p0, Lcom/coloros/systemui/keyguard/security/SecurityTouchListener;->mIsTouchDown:Z

    .line 56
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 57
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const p2, 0x3e99999a    # 0.3f

    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    new-instance p2, Landroid/view/animation/LinearInterpolator;

    invoke-direct {p2}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const-wide/16 v2, 0x42

    invoke-virtual {p1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 58
    iget-object p1, p0, Lcom/coloros/systemui/keyguard/security/SecurityTouchListener;->mOnRepeatListener:Lcom/coloros/systemui/keyguard/security/SecurityTouchListener$OnRepeatListener;

    if-eqz p1, :cond_2

    .line 59
    invoke-interface {p1}, Lcom/coloros/systemui/keyguard/security/SecurityTouchListener$OnRepeatListener;->onTouchDown()V

    .line 60
    iget-object p1, p0, Lcom/coloros/systemui/keyguard/security/SecurityTouchListener;->mOnRepeatListener:Lcom/coloros/systemui/keyguard/security/SecurityTouchListener$OnRepeatListener;

    invoke-interface {p1}, Lcom/coloros/systemui/keyguard/security/SecurityTouchListener$OnRepeatListener;->needRepeat()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 61
    iget-object p1, p0, Lcom/coloros/systemui/keyguard/security/SecurityTouchListener;->mOnRepeatListener:Lcom/coloros/systemui/keyguard/security/SecurityTouchListener$OnRepeatListener;

    invoke-interface {p1}, Lcom/coloros/systemui/keyguard/security/SecurityTouchListener$OnRepeatListener;->onRepeated()V

    :cond_2
    const-wide/16 p1, 0x190

    .line 64
    invoke-direct {p0, p1, p2}, Lcom/coloros/systemui/keyguard/security/SecurityTouchListener;->sendRepeatMessage(J)V

    .line 73
    :goto_0
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/security/SecurityTouchListener;->mOnRepeatListener:Lcom/coloros/systemui/keyguard/security/SecurityTouchListener$OnRepeatListener;

    if-eqz p0, :cond_3

    invoke-interface {p0}, Lcom/coloros/systemui/keyguard/security/SecurityTouchListener$OnRepeatListener;->consumeTouchEvent()Z

    move-result p0

    if-eqz p0, :cond_3

    move v0, v1

    :cond_3
    return v0
.end method

.method public removeCallbacksAndMessages()V
    .locals 1

    .line 82
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/security/SecurityTouchListener;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/os/Handler;->hasMessagesOrCallbacks()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 83
    :cond_0
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/security/SecurityTouchListener;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_1
    :goto_0
    return-void
.end method
