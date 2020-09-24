.class public Lcom/oppo/camera/l;
.super Ljava/lang/Object;
.source "LocationHelper.java"


# direct methods
.method public static a(Landroid/content/Context;Lcom/oppo/camera/e$c;)Ljava/lang/String;
    .locals 10

    const-string v0, "LocationHelper"

    if-nez p1, :cond_0

    const-string p0, "getLocationInfoByAddress address is null, use empty string as default."

    .line 16
    invoke-static {v0, p0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, ""

    return-object p0

    .line 21
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 22
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 24
    invoke-static {p0, p1}, Lcom/oppo/camera/l;->c(Landroid/content/Context;Lcom/oppo/camera/e$c;)Z

    move-result v3

    const/4 v4, 0x4

    const/4 v5, 0x3

    const-string v6, ","

    const/4 v7, 0x2

    const/4 v8, 0x1

    const/4 v9, 0x0

    if-nez v3, :cond_11

    invoke-static {p0, p1}, Lcom/oppo/camera/l;->d(Landroid/content/Context;Lcom/oppo/camera/e$c;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto/16 :goto_8

    .line 53
    :cond_1
    invoke-static {p0, p1}, Lcom/oppo/camera/l;->e(Landroid/content/Context;Lcom/oppo/camera/e$c;)Z

    move-result v3

    if-eqz v3, :cond_2

    const p0, 0x7f0f00e3

    .line 54
    invoke-virtual {v1, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 59
    :cond_2
    invoke-static {p0, p1}, Lcom/oppo/camera/l;->b(Landroid/content/Context;Lcom/oppo/camera/e$c;)Z

    move-result v3

    if-eqz v3, :cond_3

    const p0, 0x7f0f00f6

    .line 60
    invoke-virtual {v1, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 65
    :cond_3
    invoke-static {}, Lcom/oppo/camera/o/d;->y()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 66
    new-array v1, v4, [Ljava/lang/String;

    iget-object v3, p1, Lcom/oppo/camera/e$c;->c:Ljava/lang/String;

    aput-object v3, v1, v9

    iget-object v3, p1, Lcom/oppo/camera/e$c;->d:Ljava/lang/String;

    aput-object v3, v1, v8

    iget-object v3, p1, Lcom/oppo/camera/e$c;->e:Ljava/lang/String;

    aput-object v3, v1, v7

    iget-object v3, p1, Lcom/oppo/camera/e$c;->f:Ljava/lang/String;

    aput-object v3, v1, v5

    .line 73
    new-array v3, v5, [Ljava/lang/String;

    iget-object v4, p1, Lcom/oppo/camera/e$c;->d:Ljava/lang/String;

    aput-object v4, v3, v9

    iget-object v4, p1, Lcom/oppo/camera/e$c;->e:Ljava/lang/String;

    aput-object v4, v3, v8

    iget-object v4, p1, Lcom/oppo/camera/e$c;->f:Ljava/lang/String;

    aput-object v4, v3, v7

    .line 81
    invoke-static {p0, p1}, Lcom/oppo/camera/l;->f(Landroid/content/Context;Lcom/oppo/camera/e$c;)Z

    move-result p0

    if-eqz p0, :cond_4

    move-object v1, v3

    .line 87
    :cond_4
    array-length p0, v1

    move v3, v9

    :goto_0
    if-ge v3, p0, :cond_7

    aget-object v4, v1, v3

    .line 88
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_5

    goto :goto_1

    .line 92
    :cond_5
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_6

    .line 93
    invoke-virtual {v2, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 96
    :cond_6
    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 100
    :cond_7
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_10

    .line 101
    new-array p0, v7, [Ljava/lang/String;

    iget-object v1, p1, Lcom/oppo/camera/e$c;->a:Ljava/lang/String;

    aput-object v1, p0, v9

    iget-object p1, p1, Lcom/oppo/camera/e$c;->b:Ljava/lang/String;

    aput-object p1, p0, v8

    .line 106
    array-length p1, p0

    :goto_2
    if-ge v9, p1, :cond_10

    aget-object v1, p0, v9

    .line 107
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_8

    goto :goto_3

    .line 111
    :cond_8
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_9

    .line 112
    invoke-virtual {v2, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 115
    :cond_9
    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_3
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 119
    :cond_a
    new-array p0, v5, [Ljava/lang/String;

    iget-object v1, p1, Lcom/oppo/camera/e$c;->f:Ljava/lang/String;

    aput-object v1, p0, v9

    iget-object v1, p1, Lcom/oppo/camera/e$c;->e:Ljava/lang/String;

    aput-object v1, p0, v8

    iget-object v1, p1, Lcom/oppo/camera/e$c;->d:Ljava/lang/String;

    aput-object v1, p0, v7

    .line 125
    array-length v1, p0

    move v3, v9

    :goto_4
    if-ge v3, v1, :cond_d

    aget-object v4, p0, v3

    .line 126
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_b

    goto :goto_5

    .line 130
    :cond_b
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_c

    .line 131
    invoke-virtual {v2, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 134
    :cond_c
    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 138
    :cond_d
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_10

    .line 139
    new-array p0, v7, [Ljava/lang/String;

    iget-object v1, p1, Lcom/oppo/camera/e$c;->a:Ljava/lang/String;

    aput-object v1, p0, v9

    iget-object p1, p1, Lcom/oppo/camera/e$c;->b:Ljava/lang/String;

    aput-object p1, p0, v8

    .line 144
    array-length p1, p0

    :goto_6
    if-ge v9, p1, :cond_10

    aget-object v1, p0, v9

    .line 145
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_e

    goto :goto_7

    .line 149
    :cond_e
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_f

    .line 150
    invoke-virtual {v2, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 153
    :cond_f
    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_7
    add-int/lit8 v9, v9, 0x1

    goto :goto_6

    .line 158
    :cond_10
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "getAddressInfoByAddress, currentAddress: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/oppo/camera/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 25
    :cond_11
    :goto_8
    invoke-static {}, Lcom/oppo/camera/o/d;->y()Z

    move-result v0

    if-eqz v0, :cond_12

    const v0, 0x7f0f018a

    .line 26
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    .line 27
    invoke-virtual {v2, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object p0, p1, Lcom/oppo/camera/e$c;->b:Ljava/lang/String;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_b

    :cond_12
    const/4 p0, 0x5

    .line 29
    new-array p0, p0, [Ljava/lang/String;

    iget-object v0, p1, Lcom/oppo/camera/e$c;->b:Ljava/lang/String;

    aput-object v0, p0, v9

    iget-object v0, p1, Lcom/oppo/camera/e$c;->c:Ljava/lang/String;

    aput-object v0, p0, v8

    iget-object v0, p1, Lcom/oppo/camera/e$c;->d:Ljava/lang/String;

    aput-object v0, p0, v7

    iget-object v0, p1, Lcom/oppo/camera/e$c;->e:Ljava/lang/String;

    aput-object v0, p0, v5

    iget-object p1, p1, Lcom/oppo/camera/e$c;->f:Ljava/lang/String;

    aput-object p1, p0, v4

    .line 37
    array-length p1, p0

    :goto_9
    if-ge v9, p1, :cond_15

    aget-object v0, p0, v9

    .line 38
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_13

    goto :goto_a

    .line 42
    :cond_13
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_14

    .line 43
    invoke-virtual {v2, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 46
    :cond_14
    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_a
    add-int/lit8 v9, v9, 0x1

    goto :goto_9

    .line 50
    :cond_15
    :goto_b
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static b(Landroid/content/Context;Lcom/oppo/camera/e$c;)Z
    .locals 6

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 168
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v1, 0x7f0f00f5

    .line 169
    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 171
    iget-object v2, p1, Lcom/oppo/camera/e$c;->f:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_1

    iget-object v2, p1, Lcom/oppo/camera/e$c;->f:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    :cond_1
    iget-object v2, p1, Lcom/oppo/camera/e$c;->e:Ljava/lang/String;

    .line 172
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p1, Lcom/oppo/camera/e$c;->e:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_2
    return v3

    :cond_3
    const v1, 0x7f020018

    .line 176
    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p0

    .line 178
    array-length v1, p0

    move v2, v0

    :goto_0
    if-ge v2, v1, :cond_7

    aget-object v4, p0, v2

    .line 179
    iget-object v5, p1, Lcom/oppo/camera/e$c;->f:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_4

    iget-object v5, p1, Lcom/oppo/camera/e$c;->f:Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_5

    :cond_4
    iget-object v5, p1, Lcom/oppo/camera/e$c;->e:Ljava/lang/String;

    .line 180
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_6

    iget-object v5, p1, Lcom/oppo/camera/e$c;->e:Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_6

    :cond_5
    return v3

    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_7
    return v0
.end method

.method public static c(Landroid/content/Context;Lcom/oppo/camera/e$c;)Z
    .locals 9

    .line 189
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f02000a

    .line 190
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 192
    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_2

    aget-object v4, v0, v3

    .line 193
    iget-object v5, p1, Lcom/oppo/camera/e$c;->e:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    iget-object v5, p1, Lcom/oppo/camera/e$c;->e:Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    const v4, 0x7f020015

    .line 194
    invoke-virtual {p0, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    .line 196
    array-length v5, v4

    move v6, v2

    :goto_1
    if-ge v6, v5, :cond_1

    aget-object v7, v4, v6

    .line 197
    iget-object v8, p1, Lcom/oppo/camera/e$c;->b:Ljava/lang/String;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_0

    iget-object v8, p1, Lcom/oppo/camera/e$c;->b:Ljava/lang/String;

    invoke-virtual {v8, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return v2
.end method

.method public static d(Landroid/content/Context;Lcom/oppo/camera/e$c;)Z
    .locals 9

    .line 208
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f02000a

    .line 209
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 211
    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_2

    aget-object v4, v0, v3

    .line 212
    iget-object v5, p1, Lcom/oppo/camera/e$c;->e:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    iget-object v5, p1, Lcom/oppo/camera/e$c;->e:Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    const v4, 0x7f020016

    .line 213
    invoke-virtual {p0, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    .line 215
    array-length v5, v4

    move v6, v2

    :goto_1
    if-ge v6, v5, :cond_1

    aget-object v7, v4, v6

    .line 216
    iget-object v8, p1, Lcom/oppo/camera/e$c;->b:Ljava/lang/String;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_0

    iget-object v8, p1, Lcom/oppo/camera/e$c;->b:Ljava/lang/String;

    invoke-virtual {v8, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return v2
.end method

.method public static e(Landroid/content/Context;Lcom/oppo/camera/e$c;)Z
    .locals 6

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 231
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v1, 0x7f0f00e2

    .line 232
    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 234
    iget-object v2, p1, Lcom/oppo/camera/e$c;->f:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_1

    iget-object v2, p1, Lcom/oppo/camera/e$c;->f:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    :cond_1
    iget-object v2, p1, Lcom/oppo/camera/e$c;->e:Ljava/lang/String;

    .line 235
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p1, Lcom/oppo/camera/e$c;->e:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_2
    return v3

    :cond_3
    const v1, 0x7f020017

    .line 239
    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p0

    .line 241
    array-length v1, p0

    move v2, v0

    :goto_0
    if-ge v2, v1, :cond_7

    aget-object v4, p0, v2

    .line 242
    iget-object v5, p1, Lcom/oppo/camera/e$c;->f:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_4

    iget-object v5, p1, Lcom/oppo/camera/e$c;->f:Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_5

    :cond_4
    iget-object v5, p1, Lcom/oppo/camera/e$c;->e:Ljava/lang/String;

    .line 243
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_6

    iget-object v5, p1, Lcom/oppo/camera/e$c;->e:Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_6

    :cond_5
    return v3

    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_7
    return v0
.end method

.method public static f(Landroid/content/Context;Lcom/oppo/camera/e$c;)Z
    .locals 6

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 257
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v1, 0x7f0f018a

    .line 258
    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 260
    iget-object v2, p1, Lcom/oppo/camera/e$c;->f:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_1

    iget-object v2, p1, Lcom/oppo/camera/e$c;->f:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    :cond_1
    iget-object v2, p1, Lcom/oppo/camera/e$c;->e:Ljava/lang/String;

    .line 261
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p1, Lcom/oppo/camera/e$c;->e:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_2
    return v3

    :cond_3
    const v1, 0x7f020040

    .line 265
    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p0

    .line 267
    array-length v1, p0

    move v2, v0

    :goto_0
    if-ge v2, v1, :cond_7

    aget-object v4, p0, v2

    .line 268
    iget-object v5, p1, Lcom/oppo/camera/e$c;->f:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_4

    iget-object v5, p1, Lcom/oppo/camera/e$c;->f:Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_5

    :cond_4
    iget-object v5, p1, Lcom/oppo/camera/e$c;->e:Ljava/lang/String;

    .line 269
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_6

    iget-object v5, p1, Lcom/oppo/camera/e$c;->e:Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_6

    :cond_5
    return v3

    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_7
    return v0
.end method
