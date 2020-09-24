.class public Lcom/color/compat/view/inputmethod/InputMethodManagerNative;
.super Ljava/lang/Object;


# static fields
.field private static final TAG:Ljava/lang/String; = "InputMethodManagerNative"


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInputMethodWindowVisibleHeight(Landroid/view/inputmethod/InputMethodManager;)I
    .locals 1

    :try_start_0
    invoke-static {p0}, Lcom/color/inner/view/inputmethod/InputMethodManagerWrapper;->getInputMethodWindowVisibleHeight(Landroid/view/inputmethod/InputMethodManager;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "InputMethodManagerNative"

    invoke-virtual {p0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    :goto_0
    return p0
.end method
