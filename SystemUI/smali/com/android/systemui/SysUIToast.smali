.class public Lcom/android/systemui/SysUIToast;
.super Ljava/lang/Object;
.source "SysUIToast.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic lambda$showToastInMainThread$0(Landroid/content/Context;Ljava/lang/CharSequence;I)V
    .locals 0

    .line 46
    invoke-static {p0, p1, p2}, Lcom/android/systemui/SysUIToast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public static makeText(Landroid/content/Context;II)Landroid/widget/Toast;
    .locals 0

    .line 30
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, p2}, Lcom/android/systemui/SysUIToast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    return-object p0
.end method

.method public static makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;
    .locals 0

    .line 34
    invoke-static {p0, p1, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    .line 35
    invoke-virtual {p0}, Landroid/widget/Toast;->getWindowParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    iget p2, p1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 p2, p2, 0x10

    iput p2, p1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    return-object p0
.end method

.method public static showToastInMainThread(Landroid/content/Context;II)V
    .locals 0

    .line 41
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, p2}, Lcom/android/systemui/SysUIToast;->showToastInMainThread(Landroid/content/Context;Ljava/lang/CharSequence;I)V

    return-void
.end method

.method public static showToastInMainThread(Landroid/content/Context;Ljava/lang/CharSequence;I)V
    .locals 2

    .line 45
    invoke-static {}, Lcom/coloros/common/thread/ThreadManager;->getInstance()Lcom/coloros/common/thread/ThreadManager;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/-$$Lambda$SysUIToast$l-xuBA48ZkF1d_qv5UTE1ace47M;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/systemui/-$$Lambda$SysUIToast$l-xuBA48ZkF1d_qv5UTE1ace47M;-><init>(Landroid/content/Context;Ljava/lang/CharSequence;I)V

    invoke-virtual {v0, v1}, Lcom/coloros/common/thread/ThreadManager;->postInMainThread(Ljava/lang/Runnable;)V

    return-void
.end method
