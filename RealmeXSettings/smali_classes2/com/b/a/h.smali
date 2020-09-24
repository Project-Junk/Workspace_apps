.class public final Lcom/b/a/h;
.super Ljava/lang/Object;
.source "MKLauncherCompatible.java"


# direct methods
.method private static a(Ljava/lang/String;)I
    .locals 2

    const-string v0, "4"

    .line 248
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/16 v1, 0x647

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "6"

    .line 250
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v1, 0x649

    goto :goto_0

    :cond_1
    const-string v0, "8"

    .line 252
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v1, 0x64b

    goto :goto_0

    :cond_2
    const-string v0, "7"

    .line 254
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/16 v1, 0x64a

    goto :goto_0

    :cond_3
    const-string v0, "5"

    .line 256
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    const/16 v1, 0x648

    :cond_4
    :goto_0
    return v1
.end method

.method private static a(Landroid/content/Context;Lcom/b/a/c/b;)Ljava/lang/String;
    .locals 3

    .line 211
    invoke-virtual {p1}, Lcom/b/a/c/b;->f()Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    .line 210
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 212
    invoke-virtual {p1}, Lcom/b/a/c/b;->g()Ljava/lang/String;

    move-result-object v1

    .line 213
    invoke-virtual {p1}, Lcom/b/a/c/b;->h()Ljava/lang/String;

    move-result-object p1

    const/16 v2, 0x11f8

    .line 214
    invoke-static {p0, v2}, Lcom/b/a/j;->a(Landroid/content/Context;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 215
    invoke-static {v1, p1, v0}, Lcom/b/a/f;->a(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/16 v2, 0x11c6

    .line 217
    invoke-static {p0, v2}, Lcom/b/a/j;->a(Landroid/content/Context;I)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 218
    invoke-static {v1, p1, v0}, Lcom/b/a/e;->a(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    const-string p0, ""

    return-object p0
.end method

.method private static a(Landroid/content/Context;Lcom/b/a/c/e;)Ljava/lang/String;
    .locals 10

    .line 161
    invoke-virtual {p1}, Lcom/b/a/c/e;->l()J

    move-result-wide v0

    .line 162
    invoke-virtual {p1}, Lcom/b/a/c/e;->e()Ljava/lang/String;

    move-result-object v2

    .line 163
    invoke-virtual {p1}, Lcom/b/a/c/e;->m()Z

    move-result v3

    .line 165
    invoke-virtual {p1}, Lcom/b/a/c/e;->f()Ljava/lang/String;

    move-result-object v4

    const-string v5, "1"

    .line 164
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    .line 166
    invoke-virtual {p1}, Lcom/b/a/c/e;->g()Ljava/lang/String;

    move-result-object v5

    .line 167
    invoke-virtual {p1}, Lcom/b/a/c/e;->h()Ljava/lang/String;

    move-result-object v6

    .line 168
    invoke-virtual {p1}, Lcom/b/a/c/e;->j()Ljava/lang/String;

    move-result-object v8

    .line 169
    invoke-static {v5}, Lcom/b/a/h;->a(Ljava/lang/String;)I

    move-result v9

    .line 170
    invoke-virtual {p1}, Lcom/b/a/c/e;->i()Ljava/lang/String;

    move-result-object p1

    const/16 v7, 0x11f8

    .line 172
    invoke-static {p0, v7}, Lcom/b/a/j;->a(Landroid/content/Context;I)Z

    move-result v7

    if-eqz v7, :cond_0

    move-object v7, v8

    move v8, v9

    move-object v9, p1

    .line 173
    invoke-static/range {v0 .. v9}, Lcom/b/a/f;->a(JLjava/lang/String;ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/16 p1, 0x11c6

    .line 176
    invoke-static {p0, p1}, Lcom/b/a/j;->a(Landroid/content/Context;I)Z

    move-result p0

    if-eqz p0, :cond_1

    move v7, v9

    .line 177
    invoke-static/range {v0 .. v8}, Lcom/b/a/e;->a(JLjava/lang/String;ZZLjava/lang/String;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    const-string p0, ""

    return-object p0
.end method

.method private static a(Landroid/content/Context;Lcom/b/a/c/f;)Ljava/lang/String;
    .locals 8

    .line 185
    invoke-virtual {p1}, Lcom/b/a/c/f;->e()Ljava/lang/String;

    move-result-object v0

    .line 186
    invoke-virtual {p1}, Lcom/b/a/c/f;->l()Ljava/lang/String;

    move-result-object v1

    .line 187
    invoke-virtual {p1}, Lcom/b/a/c/f;->m()Z

    move-result v2

    .line 189
    invoke-virtual {p1}, Lcom/b/a/c/f;->f()Ljava/lang/String;

    move-result-object v3

    const-string v4, "1"

    .line 188
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 190
    invoke-virtual {p1}, Lcom/b/a/c/f;->g()Ljava/lang/String;

    move-result-object v4

    .line 191
    invoke-virtual {p1}, Lcom/b/a/c/f;->h()Ljava/lang/String;

    move-result-object v5

    .line 192
    invoke-virtual {p1}, Lcom/b/a/c/f;->j()Ljava/lang/String;

    move-result-object v6

    .line 193
    invoke-static {v4}, Lcom/b/a/h;->a(Ljava/lang/String;)I

    move-result v7

    const/16 p1, 0x11f8

    .line 195
    invoke-static {p0, p1}, Lcom/b/a/j;->a(Landroid/content/Context;I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 196
    invoke-static/range {v0 .. v7}, Lcom/b/a/f;->a(Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/16 p1, 0x11c6

    .line 200
    invoke-static {p0, p1}, Lcom/b/a/j;->a(Landroid/content/Context;I)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 201
    invoke-static/range {v0 .. v7}, Lcom/b/a/e;->a(Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    const-string p0, ""

    return-object p0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 5

    const/16 v0, 0x13ec

    .line 263
    invoke-static {p0, v0}, Lcom/b/a/j;->a(Landroid/content/Context;I)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/16 v0, 0x11f8

    .line 265
    invoke-static {p0, v0}, Lcom/b/a/j;->a(Landroid/content/Context;I)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 266
    sget-object p0, Lcom/b/a/j;->c:[Ljava/lang/String;

    array-length v0, p0

    move v3, v2

    :goto_0
    if-ge v3, v0, :cond_6

    aget-object v4, p0, v3

    .line 267
    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    return v1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    const/16 v0, 0x11c6

    .line 271
    invoke-static {p0, v0}, Lcom/b/a/j;->a(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 272
    sget-object p0, Lcom/b/a/j;->b:[Ljava/lang/String;

    array-length v0, p0

    move v3, v2

    :goto_1
    if-ge v3, v0, :cond_6

    aget-object v4, p0, v3

    .line 273
    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    return v1

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_4
    const/16 v0, 0x186

    .line 277
    invoke-static {p0, v0}, Lcom/b/a/j;->a(Landroid/content/Context;I)Z

    move-result p0

    if-eqz p0, :cond_6

    .line 278
    sget-object p0, Lcom/b/a/j;->a:[Ljava/lang/String;

    array-length v0, p0

    move v3, v2

    :goto_2
    if-ge v3, v0, :cond_6

    aget-object v4, p0, v3

    .line 279
    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    return v1

    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_6
    return v2
.end method

.method static a(Landroid/content/Context;Ljava/util/Map;I)Z
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;I)Z"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 30
    invoke-static/range {p1 .. p1}, Lcom/b/a/b;->a(Ljava/util/Map;)Lcom/b/a/b;

    move-result-object v1

    .line 32
    invoke-virtual {v1}, Lcom/b/a/b;->c()Ljava/lang/String;

    move-result-object v2

    const-string v3, "/dt"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v3, "1"

    const/16 v4, 0x186

    const/4 v5, 0x1

    if-eqz v2, :cond_3

    .line 34
    invoke-virtual {v1}, Lcom/b/a/b;->d()Ljava/util/Map;

    move-result-object v2

    invoke-static {v2}, Lcom/b/a/c/e;->b(Ljava/util/Map;)Lcom/b/a/c/e;

    move-result-object v2

    if-nez p2, :cond_0

    .line 37
    invoke-static {v0, v2}, Lcom/b/a/h;->a(Landroid/content/Context;Lcom/b/a/c/e;)Ljava/lang/String;

    move-result-object v6

    .line 36
    invoke-static {v0, v6}, Lcom/b/a/i;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    goto :goto_0

    .line 38
    :cond_0
    invoke-static {v0, v2}, Lcom/b/a/h;->a(Landroid/content/Context;Lcom/b/a/c/e;)Ljava/lang/String;

    move-result-object v6

    .line 37
    invoke-static {v0, v6}, Lcom/b/a/i;->b(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    :goto_0
    return v5

    .line 42
    :cond_1
    invoke-static {v0, v4}, Lcom/b/a/j;->a(Landroid/content/Context;I)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 43
    invoke-virtual {v2}, Lcom/b/a/c/e;->l()J

    move-result-wide v6

    .line 44
    invoke-virtual {v2}, Lcom/b/a/c/e;->e()Ljava/lang/String;

    move-result-object v8

    .line 45
    invoke-virtual {v2}, Lcom/b/a/c/e;->m()Z

    move-result v9

    .line 47
    invoke-virtual {v2}, Lcom/b/a/c/e;->f()Ljava/lang/String;

    move-result-object v10

    .line 46
    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    .line 48
    invoke-virtual {v2}, Lcom/b/a/c/e;->g()Ljava/lang/String;

    move-result-object v2

    .line 49
    invoke-static {v2}, Lcom/b/a/h;->a(Ljava/lang/String;)I

    move-result v11

    const-wide/16 v12, 0x0

    cmp-long v2, v6, v12

    if-lez v2, :cond_2

    move-object/from16 v0, p0

    move-wide v1, v6

    move v3, v9

    move v4, v10

    move v5, v11

    .line 51
    invoke-static/range {v0 .. v5}, Lcom/b/a/g;->a(Landroid/content/Context;JZZI)Z

    move-result v0

    return v0

    .line 53
    :cond_2
    invoke-static {v8}, Lcom/b/a/i;->a(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 54
    invoke-static {v0, v8, v9, v10, v11}, Lcom/b/a/g;->a(Landroid/content/Context;Ljava/lang/String;ZZI)Z

    move-result v0

    return v0

    .line 60
    :cond_3
    invoke-virtual {v1}, Lcom/b/a/b;->c()Ljava/lang/String;

    move-result-object v2

    const-string v6, "/search"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 61
    invoke-virtual {v1}, Lcom/b/a/b;->d()Ljava/util/Map;

    move-result-object v2

    invoke-static {v2}, Lcom/b/a/c/f;->b(Ljava/util/Map;)Lcom/b/a/c/f;

    move-result-object v2

    if-nez p2, :cond_4

    .line 64
    invoke-static {v0, v2}, Lcom/b/a/h;->a(Landroid/content/Context;Lcom/b/a/c/f;)Ljava/lang/String;

    move-result-object v6

    .line 63
    invoke-static {v0, v6}, Lcom/b/a/i;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    goto :goto_1

    .line 65
    :cond_4
    invoke-static {v0, v2}, Lcom/b/a/h;->a(Landroid/content/Context;Lcom/b/a/c/f;)Ljava/lang/String;

    move-result-object v6

    .line 64
    invoke-static {v0, v6}, Lcom/b/a/i;->b(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    :goto_1
    return v5

    .line 69
    :cond_5
    invoke-static {v0, v4}, Lcom/b/a/j;->a(Landroid/content/Context;I)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 70
    invoke-virtual {v2}, Lcom/b/a/c/f;->e()Ljava/lang/String;

    move-result-object v1

    .line 71
    invoke-virtual {v2}, Lcom/b/a/c/f;->l()Ljava/lang/String;

    move-result-object v3

    .line 72
    invoke-virtual {v2}, Lcom/b/a/c/f;->g()Ljava/lang/String;

    move-result-object v2

    .line 73
    invoke-static {v2}, Lcom/b/a/h;->a(Ljava/lang/String;)I

    move-result v2

    .line 74
    invoke-static {v0, v1, v3, v2}, Lcom/b/a/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    return v0

    .line 79
    :cond_6
    invoke-virtual {v1}, Lcom/b/a/b;->c()Ljava/lang/String;

    move-result-object v2

    const-string v6, "/home"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 80
    invoke-virtual {v1}, Lcom/b/a/b;->d()Ljava/util/Map;

    move-result-object v2

    invoke-static {v2}, Lcom/b/a/c/b;->c(Ljava/util/Map;)Lcom/b/a/c/b;

    move-result-object v2

    if-nez p2, :cond_7

    .line 83
    invoke-static {v0, v2}, Lcom/b/a/h;->a(Landroid/content/Context;Lcom/b/a/c/b;)Ljava/lang/String;

    move-result-object v2

    .line 82
    invoke-static {v0, v2}, Lcom/b/a/i;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    goto :goto_2

    .line 84
    :cond_7
    invoke-static {v0, v2}, Lcom/b/a/h;->a(Landroid/content/Context;Lcom/b/a/c/b;)Ljava/lang/String;

    move-result-object v2

    .line 83
    invoke-static {v0, v2}, Lcom/b/a/i;->b(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    :goto_2
    return v5

    .line 88
    :cond_8
    invoke-static {v0, v4}, Lcom/b/a/j;->a(Landroid/content/Context;I)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 89
    invoke-static/range {p0 .. p0}, Lcom/b/a/g;->a(Landroid/content/Context;)Z

    move-result v0

    return v0

    .line 93
    :cond_9
    invoke-virtual {v1}, Lcom/b/a/b;->c()Ljava/lang/String;

    move-result-object v2

    const-string v4, "/predown"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v4, "&enter_params="

    const-string v6, "^out_match_type#"

    const-string v7, "out_operator#"

    const/16 v9, 0x11f8

    const-string v10, "&enter_id="

    const-string v11, "&out_intent_from="

    const-string v13, ""

    if-eqz v2, :cond_11

    .line 94
    invoke-virtual {v1}, Lcom/b/a/b;->d()Ljava/util/Map;

    move-result-object v2

    .line 1018
    new-instance v14, Lcom/b/a/c/d;

    invoke-direct {v14, v2}, Lcom/b/a/c/d;-><init>(Ljava/util/Map;)V

    .line 1226
    invoke-static {v0, v9}, Lcom/b/a/j;->a(Landroid/content/Context;I)Z

    move-result v2

    if-eqz v2, :cond_c

    move-object v2, v13

    .line 1227
    invoke-virtual {v14}, Lcom/b/a/c/d;->l()J

    move-result-wide v12

    .line 1228
    invoke-virtual {v14}, Lcom/b/a/c/d;->e()Ljava/lang/String;

    move-result-object v15

    .line 1229
    invoke-virtual {v14}, Lcom/b/a/c/d;->m()I

    move-result v16

    .line 1230
    invoke-virtual {v14}, Lcom/b/a/c/d;->g()Ljava/lang/String;

    move-result-object v9

    .line 1231
    invoke-virtual {v14}, Lcom/b/a/c/d;->h()Ljava/lang/String;

    move-result-object v8

    .line 1232
    invoke-virtual {v14}, Lcom/b/a/c/d;->j()Ljava/lang/String;

    move-result-object v17

    .line 1233
    invoke-static {v9}, Lcom/b/a/h;->a(Ljava/lang/String;)I

    move-result v5

    if-nez v16, :cond_a

    move-object/from16 v16, v2

    move-object/from16 v18, v3

    const/4 v2, 0x0

    goto :goto_3

    :cond_a
    move-object/from16 v16, v2

    move-object/from16 v18, v3

    const/4 v2, 0x1

    .line 2168
    :goto_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2171
    invoke-static/range {v17 .. v17}, Lcom/b/a/i;->a(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_b

    move-object/from16 v8, v16

    goto :goto_4

    :cond_b
    invoke-static/range {v17 .. v17}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    :goto_4
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2173
    new-instance v8, Ljava/lang/StringBuilder;

    move-object/from16 v17, v6

    const-string v6, "out_package_name="

    invoke-direct {v8, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "&out_pid="

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, "&out_operator_type="

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2160
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "softmarket://market_pre_download?params="

    invoke-virtual {v3, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    goto :goto_5

    :cond_c
    move-object/from16 v18, v3

    move-object/from16 v17, v6

    move-object/from16 v16, v13

    .line 97
    :goto_5
    invoke-static {v13}, Lcom/b/a/i;->a(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_d

    if-nez p2, :cond_d

    .line 98
    invoke-static {v0, v13}, Lcom/b/a/i;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_e

    goto :goto_6

    :cond_d
    invoke-static {v0, v13}, Lcom/b/a/i;->b(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_e

    :goto_6
    const/4 v0, 0x1

    return v0

    :cond_e
    const/16 v2, 0x11c6

    .line 103
    invoke-static {v0, v2}, Lcom/b/a/j;->a(Landroid/content/Context;I)Z

    move-result v3

    if-eqz v3, :cond_12

    .line 104
    invoke-virtual {v14}, Lcom/b/a/c/d;->l()J

    move-result-wide v2

    .line 105
    invoke-virtual {v14}, Lcom/b/a/c/d;->e()Ljava/lang/String;

    move-result-object v5

    .line 106
    invoke-virtual {v14}, Lcom/b/a/c/d;->m()I

    move-result v6

    .line 107
    invoke-virtual {v14}, Lcom/b/a/c/d;->g()Ljava/lang/String;

    move-result-object v8

    .line 108
    invoke-virtual {v14}, Lcom/b/a/c/d;->h()Ljava/lang/String;

    move-result-object v9

    .line 109
    invoke-virtual {v14}, Lcom/b/a/c/d;->j()Ljava/lang/String;

    move-result-object v12

    .line 110
    invoke-static {v8}, Lcom/b/a/h;->a(Ljava/lang/String;)I

    move-result v13

    if-nez v6, :cond_f

    const-string v6, "Y29tLm9wcG8ubWFya2V0LnNlcnZpY2UucHJlX2Rvd25sb2FkLnN0YXJ0"

    .line 111
    invoke-static {v6}, Lcom/b/a/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto :goto_7

    :cond_f
    const-string v6, "Y29tLm9wcG8ubWFya2V0LnNlcnZpY2UucHJlX2Rvd25sb2FkLmNhbmNlbA=="

    .line 112
    invoke-static {v6}, Lcom/b/a/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 3139
    :goto_7
    new-instance v14, Landroid/content/Intent;

    invoke-direct {v14}, Landroid/content/Intent;-><init>()V

    .line 3140
    invoke-virtual {v14, v6}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 3141
    invoke-static/range {p0 .. p0}, Lcom/b/a/j;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v14, v6}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v6, "out_pid"

    .line 3142
    invoke-virtual {v14, v6, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v2, "out_package_name"

    .line 3143
    invoke-virtual {v14, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "out_operator"

    .line 3144
    invoke-virtual {v14, v2, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "out_match_type"

    .line 3145
    invoke-virtual {v14, v2, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "out_intent_from"

    .line 3146
    invoke-virtual {v14, v2, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v2, "enter_id"

    .line 3147
    invoke-virtual {v14, v2, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3149
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/16 v3, 0x20

    .line 3150
    invoke-virtual {v2, v14, v3}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_10

    .line 3151
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_10

    .line 3152
    invoke-virtual {v0, v14}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    const/4 v2, 0x1

    goto :goto_8

    :cond_10
    const/4 v2, 0x0

    :goto_8
    if-eqz v2, :cond_12

    const/4 v2, 0x1

    return v2

    :cond_11
    move-object/from16 v18, v3

    move-object/from16 v17, v6

    move-object/from16 v16, v13

    .line 122
    :cond_12
    invoke-virtual {v1}, Lcom/b/a/b;->c()Ljava/lang/String;

    move-result-object v2

    const-string v3, "/web"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17

    .line 123
    invoke-virtual {v1}, Lcom/b/a/b;->d()Ljava/util/Map;

    move-result-object v1

    .line 4019
    new-instance v2, Lcom/b/a/c/i;

    invoke-direct {v2, v1}, Lcom/b/a/c/i;-><init>(Ljava/util/Map;)V

    .line 4140
    invoke-virtual {v2}, Lcom/b/a/c/i;->f()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v3, v18

    .line 4139
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 4141
    invoke-virtual {v2}, Lcom/b/a/c/i;->e()Ljava/lang/String;

    move-result-object v3

    .line 4142
    invoke-virtual {v2}, Lcom/b/a/c/i;->g()Ljava/lang/String;

    move-result-object v5

    .line 4143
    invoke-virtual {v2}, Lcom/b/a/c/i;->h()Ljava/lang/String;

    move-result-object v6

    .line 4144
    invoke-virtual {v2}, Lcom/b/a/c/i;->j()Ljava/lang/String;

    move-result-object v8

    .line 4145
    invoke-static {v5}, Lcom/b/a/h;->a(Ljava/lang/String;)I

    move-result v9

    .line 4146
    invoke-virtual {v2}, Lcom/b/a/c/i;->i()Ljava/lang/String;

    const/16 v2, 0x11f8

    .line 4148
    invoke-static {v0, v2}, Lcom/b/a/j;->a(Landroid/content/Context;I)Z

    move-result v2

    const-string v12, "&gb="

    const-string v13, "softmarket://market_latestact?params="

    const-string v14, "url="

    if-eqz v2, :cond_14

    .line 5019
    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v15, "Ext-Module#"

    invoke-virtual {v15, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 5020
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5023
    invoke-static {v8}, Lcom/b/a/i;->a(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_13

    move-object/from16 v6, v16

    goto :goto_9

    :cond_13
    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v7, v17

    invoke-virtual {v7, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    :goto_9
    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 5025
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "&cpd_params="

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 5011
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    goto :goto_a

    :cond_14
    const/16 v2, 0x11c6

    .line 4152
    invoke-static {v0, v2}, Lcom/b/a/j;->a(Landroid/content/Context;I)Z

    move-result v2

    if-eqz v2, :cond_15

    .line 6024
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "&out_operator="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "&out_match_type="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 6016
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    goto :goto_a

    :cond_15
    move-object/from16 v13, v16

    .line 126
    :goto_a
    invoke-static {v13}, Lcom/b/a/i;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_16

    if-nez p2, :cond_16

    .line 127
    invoke-static {v0, v13}, Lcom/b/a/i;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_17

    goto :goto_b

    :cond_16
    invoke-static {v0, v13}, Lcom/b/a/i;->b(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_17

    :goto_b
    const/4 v0, 0x1

    return v0

    :cond_17
    const/4 v0, 0x0

    return v0
.end method
