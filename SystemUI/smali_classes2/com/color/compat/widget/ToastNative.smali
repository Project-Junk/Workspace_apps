.class public Lcom/color/compat/widget/ToastNative;
.super Ljava/lang/Object;
.source "ToastNative.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getWindowParams(Landroid/widget/Toast;)Landroid/view/WindowManager$LayoutParams;
    .locals 0
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1d
    .end annotation

    .line 35
    invoke-static {p0}, Lcom/color/inner/widget/ToastWrapper;->getWindowParams(Landroid/widget/Toast;)Landroid/view/WindowManager$LayoutParams;

    move-result-object p0

    return-object p0
.end method
