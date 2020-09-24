.class final Lcom/android/keyguard/KeyguardDisplayManager$KeyguardPresentation;
.super Landroid/app/Presentation;
.source "KeyguardDisplayManager.java"


# annotations
.annotation build Lcom/android/internal/annotations/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/KeyguardDisplayManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "KeyguardPresentation"
.end annotation


# static fields
.field private static final MOVE_CLOCK_TIMEOUT:I = 0x2710

.field private static final VIDEO_SAFE_REGION:I = 0x50


# instance fields
.field private mClock:Landroid/view/View;

.field private final mInjectableInflater:Lcom/android/systemui/util/InjectionInflationController;

.field private mMarginLeft:I

.field private mMarginTop:I

.field mMoveTextRunnable:Ljava/lang/Runnable;

.field private mUsableHeight:I

.field private mUsableWidth:I


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/view/Display;Lcom/android/systemui/util/InjectionInflationController;)V
    .locals 1

    const v0, 0x7f1202ec

    .line 263
    invoke-direct {p0, p1, p2, v0}, Landroid/app/Presentation;-><init>(Landroid/content/Context;Landroid/view/Display;I)V

    .line 250
    new-instance p1, Lcom/android/keyguard/KeyguardDisplayManager$KeyguardPresentation$1;

    invoke-direct {p1, p0}, Lcom/android/keyguard/KeyguardDisplayManager$KeyguardPresentation$1;-><init>(Lcom/android/keyguard/KeyguardDisplayManager$KeyguardPresentation;)V

    iput-object p1, p0, Lcom/android/keyguard/KeyguardDisplayManager$KeyguardPresentation;->mMoveTextRunnable:Ljava/lang/Runnable;

    .line 264
    iput-object p3, p0, Lcom/android/keyguard/KeyguardDisplayManager$KeyguardPresentation;->mInjectableInflater:Lcom/android/systemui/util/InjectionInflationController;

    .line 265
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardDisplayManager$KeyguardPresentation;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 p2, 0x7d9

    invoke-virtual {p1, p2}, Landroid/view/Window;->setType(I)V

    const/4 p1, 0x0

    .line 266
    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardDisplayManager$KeyguardPresentation;->setCancelable(Z)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/keyguard/KeyguardDisplayManager$KeyguardPresentation;)I
    .locals 0

    .line 241
    iget p0, p0, Lcom/android/keyguard/KeyguardDisplayManager$KeyguardPresentation;->mMarginTop:I

    return p0
.end method

.method static synthetic access$1100(Lcom/android/keyguard/KeyguardDisplayManager$KeyguardPresentation;)I
    .locals 0

    .line 241
    iget p0, p0, Lcom/android/keyguard/KeyguardDisplayManager$KeyguardPresentation;->mUsableHeight:I

    return p0
.end method

.method static synthetic access$700(Lcom/android/keyguard/KeyguardDisplayManager$KeyguardPresentation;)I
    .locals 0

    .line 241
    iget p0, p0, Lcom/android/keyguard/KeyguardDisplayManager$KeyguardPresentation;->mMarginLeft:I

    return p0
.end method

.method static synthetic access$800(Lcom/android/keyguard/KeyguardDisplayManager$KeyguardPresentation;)I
    .locals 0

    .line 241
    iget p0, p0, Lcom/android/keyguard/KeyguardDisplayManager$KeyguardPresentation;->mUsableWidth:I

    return p0
.end method

.method static synthetic access$900(Lcom/android/keyguard/KeyguardDisplayManager$KeyguardPresentation;)Landroid/view/View;
    .locals 0

    .line 241
    iget-object p0, p0, Lcom/android/keyguard/KeyguardDisplayManager$KeyguardPresentation;->mClock:Landroid/view/View;

    return-object p0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 276
    invoke-super {p0, p1}, Landroid/app/Presentation;->onCreate(Landroid/os/Bundle;)V

    .line 278
    new-instance p1, Landroid/graphics/Point;

    invoke-direct {p1}, Landroid/graphics/Point;-><init>()V

    .line 279
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardDisplayManager$KeyguardPresentation;->getDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 280
    iget v0, p1, Landroid/graphics/Point;->x:I

    mul-int/lit8 v0, v0, 0x50

    div-int/lit8 v0, v0, 0x64

    iput v0, p0, Lcom/android/keyguard/KeyguardDisplayManager$KeyguardPresentation;->mUsableWidth:I

    .line 281
    iget v0, p1, Landroid/graphics/Point;->y:I

    mul-int/lit8 v0, v0, 0x50

    div-int/lit8 v0, v0, 0x64

    iput v0, p0, Lcom/android/keyguard/KeyguardDisplayManager$KeyguardPresentation;->mUsableHeight:I

    .line 282
    iget v0, p1, Landroid/graphics/Point;->x:I

    mul-int/lit8 v0, v0, 0x14

    div-int/lit16 v0, v0, 0xc8

    iput v0, p0, Lcom/android/keyguard/KeyguardDisplayManager$KeyguardPresentation;->mMarginLeft:I

    .line 283
    iget p1, p1, Landroid/graphics/Point;->y:I

    mul-int/lit8 p1, p1, 0x14

    div-int/lit16 p1, p1, 0xc8

    iput p1, p0, Lcom/android/keyguard/KeyguardDisplayManager$KeyguardPresentation;->mMarginTop:I

    .line 285
    iget-object p1, p0, Lcom/android/keyguard/KeyguardDisplayManager$KeyguardPresentation;->mInjectableInflater:Lcom/android/systemui/util/InjectionInflationController;

    .line 286
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardDisplayManager$KeyguardPresentation;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 285
    invoke-virtual {p1, v0}, Lcom/android/systemui/util/InjectionInflationController;->injectable(Landroid/view/LayoutInflater;)Landroid/view/LayoutInflater;

    move-result-object p1

    const v0, 0x7f0d00e4

    const/4 v1, 0x0

    .line 287
    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardDisplayManager$KeyguardPresentation;->setContentView(Landroid/view/View;)V

    .line 290
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardDisplayManager$KeyguardPresentation;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    const/16 v0, 0x700

    invoke-virtual {p1, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 294
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardDisplayManager$KeyguardPresentation;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/Window;->setNavigationBarContrastEnforced(Z)V

    .line 295
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardDisplayManager$KeyguardPresentation;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/Window;->setNavigationBarColor(I)V

    const p1, 0x7f0a016b

    .line 297
    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardDisplayManager$KeyguardPresentation;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/android/keyguard/KeyguardDisplayManager$KeyguardPresentation;->mClock:Landroid/view/View;

    .line 300
    iget-object p1, p0, Lcom/android/keyguard/KeyguardDisplayManager$KeyguardPresentation;->mClock:Landroid/view/View;

    iget-object p0, p0, Lcom/android/keyguard/KeyguardDisplayManager$KeyguardPresentation;->mMoveTextRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, p0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 1

    .line 271
    iget-object v0, p0, Lcom/android/keyguard/KeyguardDisplayManager$KeyguardPresentation;->mClock:Landroid/view/View;

    iget-object p0, p0, Lcom/android/keyguard/KeyguardDisplayManager$KeyguardPresentation;->mMoveTextRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, p0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    return-void
.end method
