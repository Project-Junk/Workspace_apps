.class public final Lcom/color/injector/adaptor/j;
.super Ljava/lang/Object;
.source "Style.java"


# static fields
.field static a:I


# direct methods
.method public static a()V
    .locals 1

    :try_start_0
    const-string v0, "style"

    .line 25
    invoke-static {v0}, Lcom/color/injector/adaptor/f;->b(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/color/injector/adaptor/j;->a:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 27
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x1

    .line 28
    sput v0, Lcom/color/injector/adaptor/j;->a:I

    return-void
.end method

.method public static b()Z
    .locals 2

    .line 37
    sget v0, Lcom/color/injector/adaptor/j;->a:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
