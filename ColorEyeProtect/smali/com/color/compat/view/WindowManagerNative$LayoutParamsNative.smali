.class public Lcom/color/compat/view/WindowManagerNative$LayoutParamsNative;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/color/compat/view/WindowManagerNative;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LayoutParamsNative"
.end annotation


# static fields
.field public static DEFAULT_STATUS_BAR:I = 0x0

.field public static DISABLE_STATUS_BAR:I = 0x1

.field public static ENABLE_STATUS_BAR:I = 0x2

.field public static IGNORE_HOME_KEY:I = 0x2

.field public static IGNORE_HOME_MENU_KEY:I = 0x1

.field public static IGNORE_MENU_KEY:I = 0x3

.field public static UNSET_ANY_KEY:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getHomeAndMenuKeyState(Landroid/view/WindowManager$LayoutParams;)I
    .locals 1

    :try_start_0
    invoke-static {p0}, Lcom/color/inner/view/WindowManagerWrapper$LayoutParamsWrapper;->getHomeAndMenuKeyState(Landroid/view/WindowManager$LayoutParams;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "WindowManagerNative"

    invoke-virtual {p0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, -0x1

    :goto_0
    return p0
.end method

.method public static getStatusBarStateByWindowManager(Landroid/view/WindowManager$LayoutParams;)I
    .locals 1

    :try_start_0
    invoke-static {p0}, Lcom/color/inner/view/WindowManagerWrapper$LayoutParamsWrapper;->getStatusBarStateByWindowManager(Landroid/view/WindowManager$LayoutParams;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "WindowManagerNative"

    invoke-virtual {p0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, -0x1

    :goto_0
    return p0
.end method

.method public static setHomeAndMenuKeyState(Landroid/view/WindowManager$LayoutParams;I)V
    .locals 0

    :try_start_0
    invoke-static {p0, p1}, Lcom/color/inner/view/WindowManagerWrapper$LayoutParamsWrapper;->setHomeAndMenuKeyState(Landroid/view/WindowManager$LayoutParams;I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "WindowManagerNative"

    invoke-virtual {p0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public static setStatusBarStateByWindowManager(Landroid/view/WindowManager$LayoutParams;I)V
    .locals 0

    :try_start_0
    invoke-static {p0, p1}, Lcom/color/inner/view/WindowManagerWrapper$LayoutParamsWrapper;->setStatusBarStateByWindowManager(Landroid/view/WindowManager$LayoutParams;I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "WindowManagerNative"

    invoke-virtual {p0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method
