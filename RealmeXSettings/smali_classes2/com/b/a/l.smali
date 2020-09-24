.class public final Lcom/b/a/l;
.super Ljava/lang/Object;
.source "MKOPLauncherCompatible.java"


# direct methods
.method static a(Ljava/lang/String;)I
    .locals 2

    const-string v0, "4"

    .line 73
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/16 v1, 0x647

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "6"

    .line 75
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v1, 0x649

    goto :goto_0

    :cond_1
    const-string v0, "8"

    .line 77
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v1, 0x64b

    goto :goto_0

    :cond_2
    const-string v0, "7"

    .line 79
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/16 v1, 0x64a

    goto :goto_0

    :cond_3
    const-string v0, "5"

    .line 81
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    const/16 v1, 0x648

    :cond_4
    :goto_0
    return v1
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 5

    const-string v0, "Y29tLm9uZXBsdXMubWFya2V0"

    .line 88
    invoke-static {v0}, Lcom/b/a/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const v2, 0x1e8480

    invoke-static {p0, v1, v2}, Lcom/b/a/m;->a(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    return v2

    .line 91
    :cond_0
    invoke-static {v0}, Lcom/b/a/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v2}, Lcom/b/a/m;->a(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result p0

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    .line 93
    sget-object p0, Lcom/b/a/m;->a:[Ljava/lang/String;

    array-length v1, p0

    move v3, v0

    :goto_0
    if-ge v3, v1, :cond_2

    aget-object v4, p0, v3

    .line 94
    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    return v2

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return v0
.end method
