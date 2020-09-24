.class public Lcom/coloros/systemui/keyguard/security/KeyguardFlingDetector;
.super Ljava/lang/Object;
.source "KeyguardFlingDetector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coloros/systemui/keyguard/security/KeyguardFlingDetector$OnKeyguardFlingListener;
    }
.end annotation


# instance fields
.field private mFlingListener:Lcom/coloros/systemui/keyguard/security/KeyguardFlingDetector$OnKeyguardFlingListener;

.field private mGestureDetector:Landroid/view/GestureDetector;

.field private mMinFlingSlopSquare:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070412

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, v0

    .line 39
    iput v0, p0, Lcom/coloros/systemui/keyguard/security/KeyguardFlingDetector;->mMinFlingSlopSquare:F

    .line 40
    new-instance v0, Landroid/view/GestureDetector;

    new-instance v1, Lcom/coloros/systemui/keyguard/security/KeyguardFlingDetector$1;

    invoke-direct {v1, p0}, Lcom/coloros/systemui/keyguard/security/KeyguardFlingDetector$1;-><init>(Lcom/coloros/systemui/keyguard/security/KeyguardFlingDetector;)V

    invoke-direct {v0, p1, v1}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/coloros/systemui/keyguard/security/KeyguardFlingDetector;->mGestureDetector:Landroid/view/GestureDetector;

    return-void
.end method

.method static synthetic access$000(Lcom/coloros/systemui/keyguard/security/KeyguardFlingDetector;)Lcom/coloros/systemui/keyguard/security/KeyguardFlingDetector$OnKeyguardFlingListener;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/security/KeyguardFlingDetector;->mFlingListener:Lcom/coloros/systemui/keyguard/security/KeyguardFlingDetector$OnKeyguardFlingListener;

    return-object p0
.end method

.method static synthetic access$100(Lcom/coloros/systemui/keyguard/security/KeyguardFlingDetector;Landroid/view/MotionEvent;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 22
    invoke-direct {p0, p1, p2}, Lcom/coloros/systemui/keyguard/security/KeyguardFlingDetector;->canFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method private canFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    .line 57
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    sub-float/2addr v1, v2

    .line 58
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    sub-float/2addr p1, p2

    mul-float/2addr v1, v1

    mul-float/2addr p1, p1

    add-float/2addr v1, p1

    .line 59
    iget p0, p0, Lcom/coloros/systemui/keyguard/security/KeyguardFlingDetector;->mMinFlingSlopSquare:F

    cmpl-float p0, v1, p0

    if-lez p0, :cond_1

    const/4 v0, 0x1

    :cond_1
    :goto_0
    return v0
.end method


# virtual methods
.method public onTouchEvent(Landroid/view/MotionEvent;)V
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/security/KeyguardFlingDetector;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {p0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    return-void
.end method

.method public setOnKeyguardFlingListener(Lcom/coloros/systemui/keyguard/security/KeyguardFlingDetector$OnKeyguardFlingListener;)V
    .locals 0

    .line 34
    iput-object p1, p0, Lcom/coloros/systemui/keyguard/security/KeyguardFlingDetector;->mFlingListener:Lcom/coloros/systemui/keyguard/security/KeyguardFlingDetector$OnKeyguardFlingListener;

    return-void
.end method
