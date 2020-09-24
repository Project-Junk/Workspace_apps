.class public Lcom/coloros/systemui/keyguard/face/anim/ColorSequentialAnimController;
.super Ljava/lang/Object;
.source "ColorSequentialAnimController.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ColorSequentialAnimController"


# instance fields
.field private mAnimationHandler:Landroid/os/Handler;

.field private mFirstDrawable:Landroid/graphics/drawable/Drawable;

.field private mLockIcon:Lcom/android/systemui/statusbar/phone/LockIcon;

.field private mNextAnimRun:Ljava/lang/Runnable;

.field private mNextDrawable:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/phone/LockIcon;)V
    .locals 1

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Lcom/coloros/systemui/keyguard/face/anim/ColorSequentialAnimController$1;

    invoke-direct {v0, p0}, Lcom/coloros/systemui/keyguard/face/anim/ColorSequentialAnimController$1;-><init>(Lcom/coloros/systemui/keyguard/face/anim/ColorSequentialAnimController;)V

    iput-object v0, p0, Lcom/coloros/systemui/keyguard/face/anim/ColorSequentialAnimController;->mNextAnimRun:Ljava/lang/Runnable;

    .line 49
    iput-object p1, p0, Lcom/coloros/systemui/keyguard/face/anim/ColorSequentialAnimController;->mLockIcon:Lcom/android/systemui/statusbar/phone/LockIcon;

    .line 50
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/coloros/systemui/keyguard/face/anim/ColorSequentialAnimController;->mAnimationHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/coloros/systemui/keyguard/face/anim/ColorSequentialAnimController;)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/face/anim/ColorSequentialAnimController;->mNextDrawable:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method static synthetic access$100(Lcom/coloros/systemui/keyguard/face/anim/ColorSequentialAnimController;)Lcom/android/systemui/statusbar/phone/LockIcon;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/face/anim/ColorSequentialAnimController;->mLockIcon:Lcom/android/systemui/statusbar/phone/LockIcon;

    return-object p0
.end method

.method private getTotalDuration(Landroid/graphics/drawable/Drawable;)I
    .locals 2

    .line 112
    instance-of p0, p1, Lcom/coloros/systemui/keyguard/view/ColorAnimationDrawable;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 115
    :cond_0
    check-cast p1, Lcom/coloros/systemui/keyguard/view/ColorAnimationDrawable;

    move p0, v0

    .line 117
    :goto_0
    invoke-virtual {p1}, Lcom/coloros/systemui/keyguard/view/ColorAnimationDrawable;->getNumberOfFrames()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 118
    invoke-virtual {p1, v0}, Lcom/coloros/systemui/keyguard/view/ColorAnimationDrawable;->getDuration(I)I

    move-result v1

    add-int/2addr p0, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return p0
.end method

.method private stopAllAnimation()V
    .locals 2

    .line 85
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/face/anim/ColorSequentialAnimController;->mFirstDrawable:Landroid/graphics/drawable/Drawable;

    instance-of v1, v0, Lcom/coloros/systemui/keyguard/view/ColorAnimationDrawable;

    if-eqz v1, :cond_0

    .line 86
    check-cast v0, Lcom/coloros/systemui/keyguard/view/ColorAnimationDrawable;

    .line 87
    invoke-virtual {v0}, Lcom/coloros/systemui/keyguard/view/ColorAnimationDrawable;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 88
    invoke-virtual {v0}, Lcom/coloros/systemui/keyguard/view/ColorAnimationDrawable;->stop()V

    .line 91
    :cond_0
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/face/anim/ColorSequentialAnimController;->mNextDrawable:Landroid/graphics/drawable/Drawable;

    instance-of v0, p0, Lcom/coloros/systemui/keyguard/view/ColorAnimationDrawable;

    if-eqz v0, :cond_1

    .line 92
    check-cast p0, Lcom/coloros/systemui/keyguard/view/ColorAnimationDrawable;

    .line 93
    invoke-virtual {p0}, Lcom/coloros/systemui/keyguard/view/ColorAnimationDrawable;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 94
    invoke-virtual {p0}, Lcom/coloros/systemui/keyguard/view/ColorAnimationDrawable;->stop()V

    :cond_1
    return-void
.end method


# virtual methods
.method public isFirsDrawableRunning()Z
    .locals 3

    .line 100
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/face/anim/ColorSequentialAnimController;->mFirstDrawable:Landroid/graphics/drawable/Drawable;

    instance-of v1, v0, Lcom/coloros/systemui/keyguard/view/ColorAnimationDrawable;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 101
    check-cast v0, Lcom/coloros/systemui/keyguard/view/ColorAnimationDrawable;

    invoke-virtual {v0}, Lcom/coloros/systemui/keyguard/view/ColorAnimationDrawable;->isRunning()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/coloros/systemui/keyguard/face/anim/ColorSequentialAnimController;->mAnimationHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/coloros/systemui/keyguard/face/anim/ColorSequentialAnimController;->mNextAnimRun:Ljava/lang/Runnable;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    const/4 v2, 0x1

    :cond_1
    return v2
.end method

.method public setDrawableAndStart(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 2

    .line 54
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/face/anim/ColorSequentialAnimController;->mLockIcon:Lcom/android/systemui/statusbar/phone/LockIcon;

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-nez p1, :cond_1

    if-nez p2, :cond_1

    return-void

    .line 61
    :cond_1
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/face/anim/ColorSequentialAnimController;->mAnimationHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/coloros/systemui/keyguard/face/anim/ColorSequentialAnimController;->mNextAnimRun:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 62
    invoke-direct {p0}, Lcom/coloros/systemui/keyguard/face/anim/ColorSequentialAnimController;->stopAllAnimation()V

    .line 64
    iput-object p1, p0, Lcom/coloros/systemui/keyguard/face/anim/ColorSequentialAnimController;->mFirstDrawable:Landroid/graphics/drawable/Drawable;

    .line 65
    iput-object p2, p0, Lcom/coloros/systemui/keyguard/face/anim/ColorSequentialAnimController;->mNextDrawable:Landroid/graphics/drawable/Drawable;

    .line 67
    iget-object p1, p0, Lcom/coloros/systemui/keyguard/face/anim/ColorSequentialAnimController;->mFirstDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_3

    .line 68
    iget-object p2, p0, Lcom/coloros/systemui/keyguard/face/anim/ColorSequentialAnimController;->mLockIcon:Lcom/android/systemui/statusbar/phone/LockIcon;

    const/4 v0, 0x0

    invoke-virtual {p2, p1, v0}, Lcom/android/systemui/statusbar/phone/LockIcon;->setImageDrawable(Landroid/graphics/drawable/Drawable;Z)V

    .line 69
    iget-object p1, p0, Lcom/coloros/systemui/keyguard/face/anim/ColorSequentialAnimController;->mFirstDrawable:Landroid/graphics/drawable/Drawable;

    instance-of p1, p1, Lcom/coloros/systemui/keyguard/view/ColorAnimationDrawable;

    const-string p2, "ColorSequentialAnimController"

    if-eqz p1, :cond_2

    const-string p1, "first animation start"

    .line 70
    invoke-static {p2, p1}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    iget-object p1, p0, Lcom/coloros/systemui/keyguard/face/anim/ColorSequentialAnimController;->mFirstDrawable:Landroid/graphics/drawable/Drawable;

    check-cast p1, Lcom/coloros/systemui/keyguard/view/ColorAnimationDrawable;

    iget-object p2, p0, Lcom/coloros/systemui/keyguard/face/anim/ColorSequentialAnimController;->mLockIcon:Lcom/android/systemui/statusbar/phone/LockIcon;

    invoke-virtual {p2}, Lcom/android/systemui/statusbar/phone/LockIcon;->getBlendColor()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/coloros/systemui/keyguard/view/ColorAnimationDrawable;->updateColor(I)V

    .line 74
    iget-object p1, p0, Lcom/coloros/systemui/keyguard/face/anim/ColorSequentialAnimController;->mFirstDrawable:Landroid/graphics/drawable/Drawable;

    check-cast p1, Lcom/coloros/systemui/keyguard/view/ColorAnimationDrawable;

    invoke-virtual {p1}, Lcom/coloros/systemui/keyguard/view/ColorAnimationDrawable;->start()V

    goto :goto_0

    :cond_2
    const-string p1, "first only setImageDrawable"

    .line 76
    invoke-static {p2, p1}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/coloros/systemui/keyguard/face/anim/ColorSequentialAnimController;->mNextDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_4

    .line 80
    iget-object p1, p0, Lcom/coloros/systemui/keyguard/face/anim/ColorSequentialAnimController;->mAnimationHandler:Landroid/os/Handler;

    iget-object p2, p0, Lcom/coloros/systemui/keyguard/face/anim/ColorSequentialAnimController;->mNextAnimRun:Ljava/lang/Runnable;

    iget-object v0, p0, Lcom/coloros/systemui/keyguard/face/anim/ColorSequentialAnimController;->mFirstDrawable:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v0}, Lcom/coloros/systemui/keyguard/face/anim/ColorSequentialAnimController;->getTotalDuration(Landroid/graphics/drawable/Drawable;)I

    move-result p0

    int-to-long v0, p0

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_4
    return-void
.end method
