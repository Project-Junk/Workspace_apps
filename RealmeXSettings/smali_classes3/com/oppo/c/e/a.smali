.class public final Lcom/oppo/c/e/a;
.super Ljava/lang/Object;
.source "AccountUtil.java"


# direct methods
.method public static a(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .line 13
    invoke-static {p0}, Lcom/oppo/c/d/a;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "0"

    .line 14
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "NearMeStatistics"

    const-string v1, "ssoid not set."

    .line 15
    invoke-static {v0, v1}, Lcom/oppo/c/e/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-object p0
.end method
