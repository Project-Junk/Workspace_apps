.class public final Lcom/coloros/settings/utils/bj;
.super Ljava/lang/Object;
.source "TailueUtils.java"


# static fields
.field private static final a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final b:[C


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 32
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/coloros/settings/utils/bj;->a:Ljava/util/ArrayList;

    const-string v0, "0123456789ABCDEF"

    .line 33
    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lcom/coloros/settings/utils/bj;->b:[C

    .line 36
    sget-object v0, Lcom/coloros/settings/utils/bj;->a:Ljava/util/ArrayList;

    const-string v1, "com.monotype.android.font.kapp.custom_1714429462"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 37
    sget-object v0, Lcom/coloros/settings/utils/bj;->a:Ljava/util/ArrayList;

    const-string v1, "com.monotype.android.font.kapp.custom_1976381923"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static a(Landroid/content/Context;)Ljava/lang/String;
    .locals 5

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    .line 45
    sget-boolean v1, Lcom/coloros/settings/a;->a:Z

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "persist.sys.oppo.region"

    const-string v2, "CN"

    .line 1033
    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "MM"

    .line 48
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1041
    sget-object v1, Lcom/coloros/settings/utils/bj;->a:Ljava/util/ArrayList;

    if-eqz p0, :cond_2

    if-eqz v1, :cond_2

    .line 1056
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_2

    .line 1057
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1058
    invoke-static {p0, v2}, Lcom/coloros/settings/utils/al;->d(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1133
    invoke-static {p0, v2}, Lcom/coloros/settings/utils/bj;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "2E3ED587AF15AC2BF21C49666ED2862F6CC9F728C07D243E9115BF6AC7231665"

    .line 1134
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    return-object v2

    :cond_2
    :goto_0
    return-object v0
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    const/4 v0, 0x0

    .line 141
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/16 v1, 0x40

    invoke-virtual {p0, p1, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    .line 142
    iget-object p0, p0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 144
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "Error occur, e = "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/pm/PackageManager$NameNotFoundException;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "TailueUtils"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object p0, v0

    :goto_0
    if-eqz p0, :cond_4

    .line 146
    array-length p1, p0

    if-eqz p1, :cond_4

    const/4 p1, 0x0

    aget-object v1, p0, p1

    if-nez v1, :cond_0

    goto :goto_2

    :cond_0
    :try_start_1
    const-string v1, "SHA256"

    .line 151
    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1
    :try_end_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_1

    if-nez v1, :cond_1

    return-object v0

    .line 159
    :cond_1
    aget-object p0, p0, p1

    invoke-virtual {p0}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/security/MessageDigest;->update([B)V

    .line 160
    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p0

    if-eqz p0, :cond_4

    .line 161
    array-length v1, p0

    if-nez v1, :cond_2

    goto :goto_2

    .line 164
    :cond_2
    array-length v0, p0

    mul-int/lit8 v1, v0, 0x2

    .line 166
    new-array v1, v1, [C

    :goto_1
    if-ge p1, v0, :cond_3

    .line 168
    aget-byte v2, p0, p1

    and-int/lit16 v2, v2, 0xff

    mul-int/lit8 v3, p1, 0x2

    .line 169
    sget-object v4, Lcom/coloros/settings/utils/bj;->b:[C

    ushr-int/lit8 v5, v2, 0x4

    aget-char v5, v4, v5

    aput-char v5, v1, v3

    add-int/lit8 v3, v3, 0x1

    and-int/lit8 v2, v2, 0xf

    .line 170
    aget-char v2, v4, v2

    aput-char v2, v1, v3

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    .line 172
    :cond_3
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v1}, Ljava/lang/String;-><init>([C)V

    return-object p0

    :catch_1
    :cond_4
    :goto_2
    return-object v0
.end method
