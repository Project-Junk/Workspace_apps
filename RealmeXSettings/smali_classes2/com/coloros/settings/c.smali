.class public final Lcom/coloros/settings/c;
.super Ljava/lang/Object;
.source "UrlConfig.java"


# direct methods
.method public static a()Ljava/lang/String;
    .locals 1

    .line 40
    sget-boolean v0, Lcom/coloros/settings/a;->a:Z

    if-eqz v0, :cond_0

    const-string v0, "https://ifspk.coloros.com/"

    return-object v0

    :cond_0
    const-string v0, "https://ispk.coloros.com/"

    return-object v0
.end method
