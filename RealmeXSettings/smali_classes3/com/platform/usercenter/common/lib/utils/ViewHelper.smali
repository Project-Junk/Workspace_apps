.class public Lcom/platform/usercenter/common/lib/utils/ViewHelper;
.super Ljava/lang/Object;
.source "ViewHelper.java"


# static fields
.field private static sStatusBarHeight:I = -0x80000000


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createFakeText()Ljava/lang/String;
    .locals 3

    .line 33
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    :goto_0
    const/16 v2, 0x64

    if-ge v1, v2, :cond_0

    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 37
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static declared-synchronized getStatusBarHeight(Landroid/app/Activity;)I
    .locals 3

    const-class v0, Lcom/platform/usercenter/common/lib/utils/ViewHelper;

    monitor-enter v0

    .line 64
    :try_start_0
    sget v1, Lcom/platform/usercenter/common/lib/utils/ViewHelper;->sStatusBarHeight:I

    const/high16 v2, -0x80000000

    if-ne v1, v2, :cond_0

    .line 65
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 66
    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 67
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 68
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0, v2}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 69
    iget p0, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v1

    sub-int/2addr p0, v1

    sput p0, Lcom/platform/usercenter/common/lib/utils/ViewHelper;->sStatusBarHeight:I

    .line 71
    :cond_0
    sget p0, Lcom/platform/usercenter/common/lib/utils/ViewHelper;->sStatusBarHeight:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static setViewMarginTopBelowAnchor(Landroid/view/View;[Landroid/view/View;)V
    .locals 2

    if-eqz p0, :cond_0

    .line 42
    invoke-virtual {p0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/platform/usercenter/common/lib/utils/ViewHelper$2;

    invoke-direct {v1, p0, p1}, Lcom/platform/usercenter/common/lib/utils/ViewHelper$2;-><init>(Landroid/view/View;[Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    :cond_0
    return-void
.end method

.method public static setViewPaddingTopBelowAnchor(Landroid/view/View;[Landroid/view/View;)V
    .locals 2

    if-eqz p0, :cond_0

    .line 15
    invoke-virtual {p0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/platform/usercenter/common/lib/utils/ViewHelper$1;

    invoke-direct {v1, p0, p1}, Lcom/platform/usercenter/common/lib/utils/ViewHelper$1;-><init>(Landroid/view/View;[Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    :cond_0
    return-void
.end method
