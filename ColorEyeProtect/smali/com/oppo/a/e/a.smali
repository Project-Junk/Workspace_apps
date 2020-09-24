.class public Lcom/oppo/a/e/a;
.super Ljava/lang/Object;


# direct methods
.method public static a(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    invoke-static {p0}, Lcom/oppo/a/d/a;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "0"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "NearMeStatistics"

    const-string v1, "ssoid not set."

    invoke-static {v0, v1}, Lcom/oppo/a/e/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-object p0
.end method
