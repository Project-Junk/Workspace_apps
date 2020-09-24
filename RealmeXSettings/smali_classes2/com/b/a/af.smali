.class public final Lcom/b/a/af;
.super Ljava/lang/Object;
.source "GCLauncherCompatible.java"


# static fields
.field static a:[Ljava/lang/String;

.field static b:[Ljava/lang/String;

.field static c:[Ljava/lang/String;

.field static d:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 17

    const-string v0, "/home"

    .line 112
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/b/a/af;->a:[Ljava/lang/String;

    const-string v1, "/mall"

    .line 113
    filled-new-array {v1, v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/b/a/af;->b:[Ljava/lang/String;

    const-string v1, "/home"

    const-string v2, "/mall"

    const-string v3, "/vip"

    const-string v4, "/dt"

    const-string v5, "/dtd"

    const-string v6, "/order/dt"

    const-string v7, "/topic"

    const-string v8, "/cardstyle"

    const-string v9, "/web"

    const-string v10, "/online/service"

    const-string v11, "/gifts"

    .line 114
    filled-new-array/range {v1 .. v11}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/b/a/af;->c:[Ljava/lang/String;

    const-string v1, "/home"

    const-string v2, "/mall"

    const-string v3, "/vip"

    const-string v4, "/dt"

    const-string v5, "/dtd"

    const-string v6, "/order/dt"

    const-string v7, "/topic"

    const-string v8, "/cardstyle"

    const-string v9, "/web"

    const-string v10, "/forum/posts/dt"

    const-string v11, "/gifts"

    const-string v12, "/coin/ticket"

    const-string v13, "/gifts/game"

    const-string v14, "/acts"

    const-string v15, "/acts/game"

    const-string v16, "/forum/board/dt"

    .line 118
    filled-new-array/range {v1 .. v16}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/b/a/af;->d:[Ljava/lang/String;

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 7

    .line 83
    invoke-static {p0}, Lcom/b/a/ah;->a(Landroid/content/Context;)F

    move-result p0

    const v0, 0x40066666    # 2.1f

    cmpl-float v0, p0, v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ltz v0, :cond_1

    .line 85
    sget-object p0, Lcom/b/a/af;->d:[Ljava/lang/String;

    array-length v0, p0

    move v3, v1

    :goto_0
    if-ge v3, v0, :cond_8

    aget-object v4, p0, v3

    .line 86
    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    return v2

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    const/high16 v0, 0x40000000    # 2.0f

    cmpl-float v0, p0, v0

    if-ltz v0, :cond_3

    .line 91
    sget-object p0, Lcom/b/a/af;->c:[Ljava/lang/String;

    array-length v0, p0

    move v3, v1

    :goto_1
    if-ge v3, v0, :cond_8

    aget-object v4, p0, v3

    .line 92
    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    return v2

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    const v0, 0x3f99999a    # 1.2f

    cmpl-float v3, p0, v0

    if-gez v3, :cond_6

    sub-float v0, p0, v0

    .line 96
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-double v3, v0

    const-wide v5, 0x3eb0c6f7a0b5ed8dL    # 1.0E-6

    cmpg-double v0, v3, v5

    if-gez v0, :cond_4

    goto :goto_3

    :cond_4
    const/4 v0, 0x0

    cmpl-float p0, p0, v0

    if-lez p0, :cond_8

    .line 103
    sget-object p0, Lcom/b/a/af;->a:[Ljava/lang/String;

    array-length v0, p0

    move v3, v1

    :goto_2
    if-ge v3, v0, :cond_8

    aget-object v4, p0, v3

    .line 104
    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    return v2

    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 97
    :cond_6
    :goto_3
    sget-object p0, Lcom/b/a/af;->b:[Ljava/lang/String;

    array-length v0, p0

    move v3, v1

    :goto_4
    if-ge v3, v0, :cond_8

    aget-object v4, p0, v3

    .line 98
    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    return v2

    :cond_7
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_8
    return v1
.end method

.method public static a(Landroid/content/Context;Ljava/util/Map;)Z
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    .line 1025
    invoke-static {p1}, Lcom/b/a/c/b;->c(Ljava/util/Map;)Lcom/b/a/c/b;

    move-result-object v0

    .line 1026
    invoke-virtual {v0}, Lcom/b/a/c/b;->c()Ljava/lang/String;

    move-result-object v1

    const-string v2, "/home"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 1027
    invoke-virtual {v0}, Lcom/b/a/c/b;->g()Ljava/lang/String;

    move-result-object p1

    .line 2032
    invoke-static {p1}, Lcom/b/a/ag;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2033
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2034
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "?&scheme=gamecenter&host=goto_maintab_page&params="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2035
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/b/a/d;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_0
    return v2

    .line 1030
    :cond_1
    invoke-virtual {v0}, Lcom/b/a/c/b;->c()Ljava/lang/String;

    move-result-object v1

    const-string v3, "/dt"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v3, "&detailId="

    if-eqz v1, :cond_3

    .line 1031
    invoke-static {p1}, Lcom/b/a/c/e;->b(Ljava/util/Map;)Lcom/b/a/c/e;

    move-result-object p1

    .line 1032
    invoke-virtual {p1}, Lcom/b/a/c/e;->l()J

    move-result-wide v4

    invoke-virtual {v0}, Lcom/b/a/c/b;->g()Ljava/lang/String;

    move-result-object p1

    .line 2042
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/b/a/ag;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2043
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 2044
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "?&scheme=gamecenter&host=goto_gamedetail&params="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2045
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/b/a/d;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_2
    return v2

    .line 1034
    :cond_3
    invoke-virtual {v0}, Lcom/b/a/c/b;->c()Ljava/lang/String;

    move-result-object v1

    const-string v4, "/giftbag"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-wide/16 v4, 0x0

    const-string v6, "&url="

    if-eqz v1, :cond_7

    .line 1035
    invoke-static {p1}, Lcom/b/a/b/b/a/a;->b(Ljava/util/Map;)Lcom/b/a/b/b/a/a;

    move-result-object p1

    .line 1036
    invoke-virtual {p1}, Lcom/b/a/b/b/a/a;->e()I

    move-result v1

    .line 1037
    invoke-virtual {p1}, Lcom/b/a/b/b/a/a;->l()J

    move-result-wide v7

    .line 1038
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v9, "actCode=giftbag"

    invoke-direct {p1, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "&actPage=GIFT_BAG_DETAIL#/actDetail"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    cmp-long v1, v7, v4

    if-lez v1, :cond_5

    .line 1040
    invoke-virtual {v0}, Lcom/b/a/c/b;->g()Ljava/lang/String;

    move-result-object v0

    .line 2052
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v7, v8}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v0}, Lcom/b/a/ag;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2053
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 2054
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "?&scheme=gamecenter&host=goto_gift_detail&params="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2055
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/b/a/d;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_4
    return v2

    .line 1042
    :cond_5
    invoke-virtual {v0}, Lcom/b/a/c/b;->g()Ljava/lang/String;

    move-result-object v0

    .line 2062
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v6, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v0}, Lcom/b/a/ag;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2063
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 2064
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "?&scheme=gamecenter&host=goto_gift_detail_without_related_game&params="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2065
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/b/a/d;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_6
    return v2

    .line 1045
    :cond_7
    invoke-virtual {v0}, Lcom/b/a/c/b;->c()Ljava/lang/String;

    move-result-object v1

    const-string v7, "/active"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 1046
    invoke-static {p1}, Lcom/b/a/b/b/a/a;->b(Ljava/util/Map;)Lcom/b/a/b/b/a/a;

    move-result-object p1

    .line 1047
    invoke-virtual {p1}, Lcom/b/a/b/b/a/a;->e()I

    move-result v1

    .line 1048
    invoke-virtual {p1}, Lcom/b/a/b/b/a/a;->l()J

    move-result-wide v7

    .line 1049
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v9, "actCode=activity"

    invoke-direct {p1, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "&actPage=ACTIVITY_DETAIL#/actDetail"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    cmp-long v1, v7, v4

    if-lez v1, :cond_9

    .line 1051
    invoke-virtual {v0}, Lcom/b/a/c/b;->g()Ljava/lang/String;

    move-result-object v0

    .line 2072
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v7, v8}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v0}, Lcom/b/a/ag;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2073
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 2074
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "?&scheme=gamecenter&host=goto_active_detail&params="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2075
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/b/a/d;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_8
    return v2

    .line 1053
    :cond_9
    invoke-virtual {v0}, Lcom/b/a/c/b;->g()Ljava/lang/String;

    move-result-object v0

    .line 2082
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v6, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v0}, Lcom/b/a/ag;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2083
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 2084
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "?&scheme=gamecenter&host=goto_active_detail_without_related_game&params="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2085
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/b/a/d;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_a
    return v2

    .line 1056
    :cond_b
    invoke-virtual {v0}, Lcom/b/a/c/b;->c()Ljava/lang/String;

    move-result-object v1

    const-string v4, "/topic"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 1057
    invoke-static {p1}, Lcom/b/a/c/c;->d(Ljava/util/Map;)Lcom/b/a/c/c;

    move-result-object p1

    .line 1058
    invoke-virtual {p1}, Lcom/b/a/c/c;->l()J

    move-result-wide v4

    invoke-virtual {v0}, Lcom/b/a/c/b;->g()Ljava/lang/String;

    move-result-object p1

    .line 2092
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/b/a/ag;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2093
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_c

    .line 2094
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "?&scheme=gamecenter&host=goto_special&params="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2095
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/b/a/d;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_c
    return v2

    .line 1060
    :cond_d
    invoke-virtual {v0}, Lcom/b/a/c/b;->c()Ljava/lang/String;

    move-result-object v1

    const-string v4, "/strategy"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 3022
    new-instance v1, Lcom/b/a/b/b/a/b;

    invoke-direct {v1, p1}, Lcom/b/a/b/b/a/b;-><init>(Ljava/util/Map;)V

    const/4 p1, 0x1

    .line 3026
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v4, "tab"

    invoke-virtual {v1, v4, p1}, Lcom/b/a/b/b/a/b;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/b/a/o;

    .line 1063
    invoke-virtual {v1}, Lcom/b/a/b/b/a/b;->l()J

    move-result-wide v4

    invoke-virtual {v0}, Lcom/b/a/c/b;->g()Ljava/lang/String;

    move-result-object p1

    .line 3102
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/b/a/ag;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 3103
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_e

    .line 3104
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "?&scheme=gamecenter&host=goto_strategy&params="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3105
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/b/a/d;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_e
    return v2

    .line 1065
    :cond_f
    invoke-virtual {v0}, Lcom/b/a/c/b;->c()Ljava/lang/String;

    move-result-object p1

    const-string v1, "/point"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_11

    .line 1066
    invoke-virtual {v0}, Lcom/b/a/c/b;->g()Ljava/lang/String;

    move-result-object p1

    .line 3112
    invoke-static {p1}, Lcom/b/a/ag;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 3113
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_10

    .line 3114
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "?&scheme=gamecenter&host=goto_earn_nbean&params="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3115
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/b/a/d;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_10
    return v2

    .line 1068
    :cond_11
    invoke-virtual {v0}, Lcom/b/a/c/b;->c()Ljava/lang/String;

    move-result-object p1

    const-string v1, "/mall"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_13

    .line 1069
    invoke-virtual {v0}, Lcom/b/a/c/b;->g()Ljava/lang/String;

    move-result-object p1

    .line 3122
    invoke-static {p1}, Lcom/b/a/ag;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 3123
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_12

    .line 3124
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "?&scheme=gamecenter&host=goto_duiba&params="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3125
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/b/a/d;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_12
    return v2

    .line 1072
    :cond_13
    invoke-virtual {v0}, Lcom/b/a/c/b;->c()Ljava/lang/String;

    move-result-object p0

    const-string p1, "/online/service"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_14

    .line 1075
    invoke-virtual {v0}, Lcom/b/a/c/b;->c()Ljava/lang/String;

    move-result-object p0

    const-string p1, "/web"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    :cond_14
    return v2
.end method
