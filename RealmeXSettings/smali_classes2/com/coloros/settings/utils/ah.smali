.class public final Lcom/coloros/settings/utils/ah;
.super Ljava/lang/Object;
.source "OppoRestrictedUtils.java"


# direct methods
.method public static a(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    .line 25
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    nop

    :cond_0
    return v0
.end method
