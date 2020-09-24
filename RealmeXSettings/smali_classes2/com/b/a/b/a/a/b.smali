.class public final Lcom/b/a/b/a/a/b;
.super Ljava/lang/Object;
.source "OapsLog.java"


# static fields
.field private static a:Z = false


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static a(Ljava/lang/String;)V
    .locals 1

    .line 45
    sget-boolean v0, Lcom/b/a/b/a/a/b;->a:Z

    if-eqz v0, :cond_0

    const-string v0, "oaps_sdk"

    .line 46
    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static a()Z
    .locals 1

    .line 13
    sget-boolean v0, Lcom/b/a/b/a/a/b;->a:Z

    return v0
.end method
