.class public Lcom/android/keyguard/clock/SmallClockPosition;
.super Ljava/lang/Object;
.source "SmallClockPosition.java"


# instance fields
.field private final mBurnInOffsetY:I

.field private mDarkAmount:F

.field private final mKeyguardLockHeight:I

.field private final mKeyguardLockPadding:I

.field private final mStatusBarHeight:I


# direct methods
.method public constructor <init>(IIII)V
    .locals 0
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput p1, p0, Lcom/android/keyguard/clock/SmallClockPosition;->mStatusBarHeight:I

    .line 54
    iput p2, p0, Lcom/android/keyguard/clock/SmallClockPosition;->mKeyguardLockPadding:I

    .line 55
    iput p3, p0, Lcom/android/keyguard/clock/SmallClockPosition;->mKeyguardLockHeight:I

    .line 56
    iput p4, p0, Lcom/android/keyguard/clock/SmallClockPosition;->mBurnInOffsetY:I

    return-void
.end method

.method public constructor <init>(Landroid/content/res/Resources;)V
    .locals 4

    const v0, 0x7f0707c3

    .line 44
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    const v1, 0x7f0703ff

    .line 45
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    const v2, 0x7f0703fc

    .line 46
    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    const v3, 0x7f07014d

    .line 47
    invoke-virtual {p1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    .line 44
    invoke-direct {p0, v0, v1, v2, p1}, Lcom/android/keyguard/clock/SmallClockPosition;-><init>(IIII)V

    return-void
.end method


# virtual methods
.method public getPreferredY()I
    .locals 4

    .line 71
    iget v0, p0, Lcom/android/keyguard/clock/SmallClockPosition;->mStatusBarHeight:I

    iget v1, p0, Lcom/android/keyguard/clock/SmallClockPosition;->mKeyguardLockPadding:I

    add-int v2, v0, v1

    iget v3, p0, Lcom/android/keyguard/clock/SmallClockPosition;->mBurnInOffsetY:I

    add-int/2addr v2, v3

    .line 73
    iget v3, p0, Lcom/android/keyguard/clock/SmallClockPosition;->mKeyguardLockHeight:I

    add-int/2addr v0, v3

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    int-to-float v0, v0

    int-to-float v1, v2

    .line 74
    iget p0, p0, Lcom/android/keyguard/clock/SmallClockPosition;->mDarkAmount:F

    invoke-static {v0, v1, p0}, Landroid/util/MathUtils;->lerp(FFF)F

    move-result p0

    float-to-int p0, p0

    return p0
.end method

.method setDarkAmount(F)V
    .locals 0

    .line 63
    iput p1, p0, Lcom/android/keyguard/clock/SmallClockPosition;->mDarkAmount:F

    return-void
.end method
