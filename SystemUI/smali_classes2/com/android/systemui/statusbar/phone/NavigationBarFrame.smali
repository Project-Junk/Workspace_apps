.class public Lcom/android/systemui/statusbar/phone/NavigationBarFrame;
.super Landroid/widget/FrameLayout;
.source "NavigationBarFrame.java"


# instance fields
.field private mDeadZone:Lcom/android/systemui/statusbar/policy/DeadZone;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 34
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 31
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFrame;->mDeadZone:Lcom/android/systemui/statusbar/policy/DeadZone;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 38
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 31
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFrame;->mDeadZone:Lcom/android/systemui/statusbar/policy/DeadZone;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 43
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 31
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFrame;->mDeadZone:Lcom/android/systemui/statusbar/policy/DeadZone;

    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 60
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public setDeadZone(Lcom/android/systemui/statusbar/policy/DeadZone;)V
    .locals 0

    .line 47
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFrame;->mDeadZone:Lcom/android/systemui/statusbar/policy/DeadZone;

    return-void
.end method
