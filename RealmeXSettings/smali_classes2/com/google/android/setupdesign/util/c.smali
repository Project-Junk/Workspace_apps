.class public final Lcom/google/android/setupdesign/util/c;
.super Ljava/lang/Object;
.source "PartnerStyleHelper.java"


# direct methods
.method public static a(Landroid/content/Context;)I
    .locals 5

    .line 30
    invoke-static {p0}, Lcom/google/android/setupcompat/b/b;->a(Landroid/content/Context;)Lcom/google/android/setupcompat/b/b;

    move-result-object v0

    sget-object v1, Lcom/google/android/setupcompat/b/a;->B:Lcom/google/android/setupcompat/b/a;

    invoke-virtual {v0, p0, v1}, Lcom/google/android/setupcompat/b/b;->c(Landroid/content/Context;Lcom/google/android/setupcompat/b/a;)Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_5

    .line 32
    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    const/4 v1, -0x1

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v2

    const v3, -0x514d33ab

    const/4 v4, 0x1

    if-eq v2, v3, :cond_1

    const v3, 0x68ac462

    if-eq v2, v3, :cond_0

    goto :goto_0

    :cond_0
    const-string v2, "start"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    move v1, v4

    goto :goto_0

    :cond_1
    const-string v2, "center"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    move v1, v0

    :cond_2
    :goto_0
    if-eqz v1, :cond_4

    if-eq v1, v4, :cond_3

    return v0

    :cond_3
    const p0, 0x800003

    return p0

    :cond_4
    const/16 p0, 0x11

    return p0

    :cond_5
    return v0
.end method
