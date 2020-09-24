.class public final Lcom/android/settings/wifi/dpp/c;
.super Ljava/lang/Object;
.source "WifiQrCode.java"


# instance fields
.field a:Ljava/lang/String;

.field b:Ljava/lang/String;

.field c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Lcom/android/settings/wifi/dpp/b;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 92
    iput-object p1, p0, Lcom/android/settings/wifi/dpp/c;->a:Ljava/lang/String;

    const-string v0, "DPP:"

    .line 94
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    const-string v2, "Invalid format"

    const-string v3, ";"

    if-eqz v1, :cond_1

    const-string v1, "DPP"

    .line 95
    iput-object v1, p0, Lcom/android/settings/wifi/dpp/c;->b:Ljava/lang/String;

    .line 1107
    invoke-static {p1, v0, v3}, Lcom/android/settings/wifi/dpp/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    const-string v0, "K:"

    .line 1109
    invoke-static {p1, v0}, Lcom/android/settings/wifi/dpp/c;->a(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1110
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1113
    iput-object v0, p0, Lcom/android/settings/wifi/dpp/c;->d:Ljava/lang/String;

    const-string v0, "I:"

    .line 1115
    invoke-static {p1, v0}, Lcom/android/settings/wifi/dpp/c;->a(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/wifi/dpp/c;->c:Ljava/lang/String;

    return-void

    .line 1111
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    const-string v0, "WIFI:"

    .line 97
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "WIFI"

    .line 98
    iput-object v1, p0, Lcom/android/settings/wifi/dpp/c;->b:Ljava/lang/String;

    .line 1120
    invoke-static {p1, v0, v3}, Lcom/android/settings/wifi/dpp/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    const-string v0, "T:"

    .line 1123
    invoke-static {p1, v0}, Lcom/android/settings/wifi/dpp/c;->a(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "S:"

    .line 1124
    invoke-static {p1, v1}, Lcom/android/settings/wifi/dpp/c;->a(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "P:"

    .line 1125
    invoke-static {p1, v3}, Lcom/android/settings/wifi/dpp/c;->a(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "H:"

    .line 1126
    invoke-static {p1, v4}, Lcom/android/settings/wifi/dpp/c;->a(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v4, "true"

    .line 1128
    invoke-virtual {v4, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    .line 1131
    invoke-static {v0}, Lcom/android/settings/wifi/dpp/c;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1132
    invoke-static {v1}, Lcom/android/settings/wifi/dpp/c;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1133
    invoke-static {v3}, Lcom/android/settings/wifi/dpp/c;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const/4 v9, -0x1

    const/4 v10, 0x0

    .line 1135
    invoke-static/range {v5 .. v10}, Lcom/android/settings/wifi/dpp/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZIZ)Lcom/android/settings/wifi/dpp/b;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/wifi/dpp/c;->e:Lcom/android/settings/wifi/dpp/b;

    .line 1138
    iget-object p1, p0, Lcom/android/settings/wifi/dpp/c;->e:Lcom/android/settings/wifi/dpp/b;

    if-eqz p1, :cond_2

    return-void

    .line 1139
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 101
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Invalid scheme"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 89
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Empty QR code"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static a(Ljava/lang/String;)Lcom/android/settings/wifi/dpp/c;
    .locals 3

    const/4 v0, 0x0

    .line 235
    :try_start_0
    new-instance v1, Lcom/android/settings/wifi/dpp/c;

    invoke-direct {v1, p0}, Lcom/android/settings/wifi/dpp/c;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1209
    iget-object p0, v1, Lcom/android/settings/wifi/dpp/c;->b:Ljava/lang/String;

    const-string v2, "DPP"

    .line 240
    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    return-object v1

    :catch_0
    :cond_0
    return-object v0
.end method

.method private static a(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 163
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 164
    invoke-virtual {v0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 165
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 153
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 156
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "(?<!\\\\)"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p2}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 158
    invoke-virtual {p0, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private static b(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 178
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 180
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    array-length v1, p0

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    :goto_0
    if-ge v3, v1, :cond_3

    aget-char v5, p0, v3

    const/16 v6, 0x5c

    if-eq v5, v6, :cond_1

    .line 182
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_1
    move v4, v2

    goto :goto_2

    :cond_1
    if-eqz v4, :cond_2

    .line 186
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_2
    const/4 v4, 0x1

    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 195
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a()Lcom/android/settings/wifi/dpp/b;
    .locals 2

    .line 225
    iget-object v0, p0, Lcom/android/settings/wifi/dpp/c;->e:Lcom/android/settings/wifi/dpp/b;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 229
    :cond_0
    new-instance v1, Lcom/android/settings/wifi/dpp/b;

    invoke-direct {v1, v0}, Lcom/android/settings/wifi/dpp/b;-><init>(Lcom/android/settings/wifi/dpp/b;)V

    return-object v1
.end method
