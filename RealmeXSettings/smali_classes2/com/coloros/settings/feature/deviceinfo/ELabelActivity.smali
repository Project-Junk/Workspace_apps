.class public Lcom/coloros/settings/feature/deviceinfo/ELabelActivity;
.super Lcom/coloros/settings/NavigateActivity;
.source "ELabelActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coloros/settings/feature/deviceinfo/ELabelActivity$a;
    }
.end annotation


# static fields
.field private static final a:[Ljava/lang/String;

.field private static final b:[[Ljava/lang/String;

.field private static final c:[I

.field private static d:Ljava/lang/String;

.field private static e:Ljava/lang/String;

.field private static f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/coloros/settings/feature/deviceinfo/ELabelActivity$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 13

    const-string v0, "A37f"

    const-string v1, "CPH1723"

    const-string v2, "CPH1725"

    const-string v3, "CPH1727"

    const-string v4, "CPH1729"

    const-string v5, "CPH1801"

    const-string v6, "CPH1819"

    const-string v7, "CPH1821"

    const-string v8, "CPH1827"

    const-string v9, "CPH1859"

    const-string v10, "CPH1861"

    const-string v11, "CPH1881"

    const-string v12, "CPH1823"

    .line 75
    filled-new-array/range {v0 .. v12}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/coloros/settings/feature/deviceinfo/ELabelActivity;->a:[Ljava/lang/String;

    const/16 v0, 0xd

    .line 79
    new-array v0, v0, [[Ljava/lang/String;

    const-string v1, " 0.440 W/kg @ 1g(Head) \n 0.629 W/kg @ 1g(Body) "

    filled-new-array {v1, v1, v1}, [Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, " 1.119 W/kg @ 1g(Head) \n 0.817 W/kg @ 1g(Body) "

    filled-new-array {v1, v1, v1}, [Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, " 1.119 W/kg @ 1g(Head) \n 0.645 W/kg @ 1g(Body) "

    filled-new-array {v1, v1, v1}, [Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string v1, " 1.270 W/kg @ 1g(Head) \n 0.912 W/kg @ 1g(Body) "

    filled-new-array {v1, v1, v1}, [Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x3

    aput-object v1, v0, v3

    const-string v1, " 1.380 W/kg @ 1g(Head) \n 0.715 W/kg @ 1g(Body) "

    filled-new-array {v1, v1, v1}, [Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x4

    aput-object v3, v0, v4

    const-string v3, " 0.462 W/kg @ 1g(Head) \n 0.459 W/kg @ 1g(Body) "

    filled-new-array {v3, v3, v3}, [Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x5

    aput-object v3, v0, v4

    const-string v3, " 1.271 W/kg @ 1g(Head) \n 1.078 W/kg @ 1g(Body) "

    filled-new-array {v3, v3, v3}, [Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x6

    aput-object v4, v0, v5

    filled-new-array {v3, v3, v3}, [Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x7

    aput-object v3, v0, v4

    filled-new-array {v1, v1, v1}, [Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0x8

    aput-object v1, v0, v3

    const-string v1, " 1.400 W/kg @ 1g(Head) \n 0.909 W/kg @ 1g(Body) "

    filled-new-array {v1, v1, v1}, [Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x9

    aput-object v3, v0, v4

    filled-new-array {v1, v1, v1}, [Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0xa

    aput-object v1, v0, v3

    const-string v1, " 0.992W/kg(Head) \n 0.572W/kg(Body) "

    filled-new-array {v1, v1, v1}, [Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0xb

    aput-object v1, v0, v3

    const-string v1, " 1.312W/kg(Head) \n 0.829W/kg(Body) "

    filled-new-array {v1, v1, v1}, [Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0xc

    aput-object v1, v0, v3

    sput-object v0, Lcom/coloros/settings/feature/deviceinfo/ELabelActivity;->b:[[Ljava/lang/String;

    .line 120
    new-array v0, v2, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/coloros/settings/feature/deviceinfo/ELabelActivity;->c:[I

    .line 131
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    sput-object v0, Lcom/coloros/settings/feature/deviceinfo/ELabelActivity;->d:Ljava/lang/String;

    const-string v0, "oppo.eng.factory.no"

    .line 132
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/coloros/settings/feature/deviceinfo/ELabelActivity;->e:Ljava/lang/String;

    return-void

    :array_0
    .array-data 4
        0x7f080895
        0x7f0803eb
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Lcom/coloros/settings/NavigateActivity;-><init>()V

    return-void
.end method

.method private static a([Ljava/lang/String;)I
    .locals 4

    .line 194
    sget-object v0, Lcom/coloros/settings/feature/deviceinfo/ELabelActivity;->d:Ljava/lang/String;

    .line 196
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    .line 197
    aget-object v3, p0, v2

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, -0x1

    :goto_1
    return v2
.end method

.method public static a(Landroid/content/Context;)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 290
    :cond_0
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    sput-object v1, Lcom/coloros/settings/feature/deviceinfo/ELabelActivity;->d:Ljava/lang/String;

    const-string v1, "oppo.eng.factory.no"

    .line 291
    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/coloros/settings/feature/deviceinfo/ELabelActivity;->e:Ljava/lang/String;

    .line 292
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "showELable : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/coloros/settings/feature/deviceinfo/ELabelActivity;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/coloros/settings/feature/deviceinfo/ELabelActivity;->e:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ELabelActivity"

    invoke-static {v2, v1}, Lcom/coloros/settings/utils/aa;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 294
    invoke-static {}, Lcom/coloros/settings/utils/al;->k()Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_1

    .line 295
    sget-object v1, Lcom/coloros/settings/feature/deviceinfo/ELabelActivity;->a:[Ljava/lang/String;

    invoke-static {v1}, Lcom/coloros/settings/feature/deviceinfo/ELabelActivity;->a([Ljava/lang/String;)I

    move-result v1

    const/4 v3, -0x1

    if-eq v1, v3, :cond_1

    move v1, v2

    goto :goto_0

    :cond_1
    move v1, v0

    :goto_0
    if-nez v1, :cond_2

    .line 297
    invoke-static {p0}, Lcom/coloros/settings/feature/deviceinfo/ELabelActivity;->b(Landroid/content/Context;)Lcom/coloros/settings/feature/deviceinfo/ELabelActivity$a;

    move-result-object p0

    if-eqz p0, :cond_3

    :cond_2
    sget-boolean p0, Lcom/coloros/settings/a;->a:Z

    if-eqz p0, :cond_3

    const-string p0, "persist.sys.oppo.region"

    const-string v1, "CN"

    .line 2025
    invoke-static {p0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "IN"

    .line 298
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    sget-object p0, Lcom/coloros/settings/feature/deviceinfo/ELabelActivity;->e:Ljava/lang/String;

    .line 299
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method private static b(Landroid/content/Context;)Lcom/coloros/settings/feature/deviceinfo/ELabelActivity$a;
    .locals 7

    .line 206
    sget-boolean v0, Lcom/coloros/settings/a;->a:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 207
    invoke-static {}, Lcom/coloros/settings/utils/al;->k()Z

    move-result v0

    .line 208
    sget-object v2, Lcom/coloros/settings/feature/deviceinfo/ELabelActivity;->e:Ljava/lang/String;

    .line 209
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    return-object v1

    .line 212
    :cond_0
    sget-object v3, Lcom/coloros/settings/feature/deviceinfo/ELabelActivity;->d:Ljava/lang/String;

    .line 213
    invoke-static {p0}, Lcom/coloros/settings/feature/deviceinfo/ELabelActivity;->c(Landroid/content/Context;)Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_3

    .line 214
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_3

    .line 215
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/coloros/settings/feature/deviceinfo/ELabelActivity$a;

    .line 216
    invoke-virtual {v4}, Lcom/coloros/settings/feature/deviceinfo/ELabelActivity$a;->b()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v4}, Lcom/coloros/settings/feature/deviceinfo/ELabelActivity$a;->a()Z

    move-result v5

    if-ne v5, v0, :cond_1

    iget-object v5, v4, Lcom/coloros/settings/feature/deviceinfo/ELabelActivity$a;->c:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v5, v4, Lcom/coloros/settings/feature/deviceinfo/ELabelActivity$a;->b:Ljava/lang/String;

    .line 217
    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    const-string v5, "CN-"

    invoke-virtual {v2, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    iget-object v6, v4, Lcom/coloros/settings/feature/deviceinfo/ELabelActivity$a;->b:Ljava/lang/String;

    invoke-virtual {v6, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    :cond_2
    const-string p0, "ELabelActivity"

    const-string v0, "getMatchElabByXml true"

    .line 218
    invoke-static {p0, v0}, Lcom/coloros/settings/utils/aa;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-object v4

    :cond_3
    return-object v1
.end method

.method private static c(Landroid/content/Context;)Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Lcom/coloros/settings/feature/deviceinfo/ELabelActivity$a;",
            ">;"
        }
    .end annotation

    const-string v0, "@"

    const-string v1, "elabinfo"

    .line 257
    sget-object v2, Lcom/coloros/settings/feature/deviceinfo/ELabelActivity;->f:Ljava/util/List;

    if-eqz v2, :cond_0

    return-object v2

    :cond_0
    const/4 v2, 0x0

    .line 262
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v3, 0x7f1500cf

    invoke-virtual {p0, v3}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 263
    :try_start_1
    invoke-interface {p0}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v3

    .line 265
    :cond_1
    invoke-interface {p0}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v4

    const/4 v5, 0x1

    if-eq v4, v5, :cond_8

    const/4 v6, 0x3

    if-ne v4, v6, :cond_2

    .line 266
    invoke-interface {p0}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v7

    if-le v7, v3, :cond_8

    :cond_2
    if-eq v4, v6, :cond_1

    const/4 v7, 0x4

    if-eq v4, v7, :cond_1

    .line 270
    invoke-interface {p0}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v4

    .line 271
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1229
    invoke-interface {p0}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v3

    .line 1231
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1232
    :cond_3
    :goto_0
    invoke-interface {p0}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v8

    if-eq v8, v5, :cond_6

    if-ne v8, v6, :cond_4

    .line 1233
    invoke-interface {p0}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v9

    if-le v9, v3, :cond_6

    :cond_4
    if-eq v8, v6, :cond_3

    if-eq v8, v7, :cond_3

    .line 1237
    invoke-interface {p0}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v8

    .line 1238
    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 1239
    new-instance v8, Lcom/coloros/settings/feature/deviceinfo/ELabelActivity$a;

    invoke-direct {v8}, Lcom/coloros/settings/feature/deviceinfo/ELabelActivity$a;-><init>()V

    const-string v9, "phone"

    .line 1240
    invoke-interface {p0, v2, v9}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v8, Lcom/coloros/settings/feature/deviceinfo/ELabelActivity$a;->a:Ljava/lang/String;

    const-string v9, "factory_number"

    .line 1241
    invoke-interface {p0, v2, v9}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v8, Lcom/coloros/settings/feature/deviceinfo/ELabelActivity$a;->b:Ljava/lang/String;

    const-string v9, "model"

    .line 1242
    invoke-interface {p0, v2, v9}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v8, Lcom/coloros/settings/feature/deviceinfo/ELabelActivity$a;->c:Ljava/lang/String;

    const-string v9, "sar"

    .line 1243
    invoke-interface {p0, v2, v9}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v8, Lcom/coloros/settings/feature/deviceinfo/ELabelActivity$a;->d:Ljava/lang/String;

    const-string v9, "icon"

    .line 1244
    invoke-interface {p0, v2, v9}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v8, Lcom/coloros/settings/feature/deviceinfo/ELabelActivity$a;->e:Ljava/lang/String;

    .line 1245
    iget-object v9, v8, Lcom/coloros/settings/feature/deviceinfo/ELabelActivity$a;->e:Ljava/lang/String;

    invoke-virtual {v9, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 1246
    iget-object v9, v8, Lcom/coloros/settings/feature/deviceinfo/ELabelActivity$a;->e:Ljava/lang/String;

    const-string v10, ""

    invoke-virtual {v9, v0, v10}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v8, Lcom/coloros/settings/feature/deviceinfo/ELabelActivity$a;->e:Ljava/lang/String;

    .line 1248
    :cond_5
    invoke-virtual {v8}, Lcom/coloros/settings/feature/deviceinfo/ELabelActivity$a;->b()Z

    move-result v9

    if-eqz v9, :cond_3

    .line 1249
    invoke-interface {v4, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 273
    :cond_6
    sput-object v4, Lcom/coloros/settings/feature/deviceinfo/ELabelActivity;->f:Ljava/util/List;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz p0, :cond_7

    .line 280
    invoke-interface {p0}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_7
    return-object v4

    :cond_8
    if-eqz p0, :cond_9

    :goto_1
    invoke-interface {p0}, Landroid/content/res/XmlResourceParser;->close()V

    goto :goto_3

    :catch_0
    move-exception v0

    goto :goto_2

    :catchall_0
    move-exception v0

    move-object p0, v2

    goto :goto_4

    :catch_1
    move-exception v0

    move-object p0, v2

    :goto_2
    :try_start_2
    const-string v1, "ELabelActivity"

    .line 277
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Error occur, e = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz p0, :cond_9

    goto :goto_1

    :cond_9
    :goto_3
    return-object v2

    :catchall_1
    move-exception v0

    :goto_4
    if-eqz p0, :cond_a

    .line 280
    invoke-interface {p0}, Landroid/content/res/XmlResourceParser;->close()V

    .line 282
    :cond_a
    throw v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 9

    .line 138
    invoke-super {p0, p1}, Lcom/coloros/settings/NavigateActivity;->onCreate(Landroid/os/Bundle;)V

    .line 139
    invoke-static {p0}, Lcom/coloros/settings/utils/al;->a(Landroid/app/Activity;)V

    const p1, 0x7f0d0171

    .line 140
    invoke-virtual {p0, p1}, Lcom/coloros/settings/feature/deviceinfo/ELabelActivity;->setContentView(I)V

    .line 142
    sget-object p1, Lcom/coloros/settings/feature/deviceinfo/ELabelActivity;->e:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    const/4 v0, -0x1

    if-nez p1, :cond_2

    .line 143
    sget-object p1, Lcom/coloros/settings/feature/deviceinfo/ELabelActivity;->e:Ljava/lang/String;

    const-string v1, "IN-02"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 145
    :cond_0
    sget-object p1, Lcom/coloros/settings/feature/deviceinfo/ELabelActivity;->e:Ljava/lang/String;

    const-string v1, "CN-"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    .line 147
    :cond_1
    sget-object p1, Lcom/coloros/settings/feature/deviceinfo/ELabelActivity;->e:Ljava/lang/String;

    const-string v1, "IN-03"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-static {}, Lcom/coloros/settings/utils/al;->k()Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x2

    goto :goto_0

    :cond_2
    move p1, v0

    .line 152
    :goto_0
    sget-object v1, Lcom/coloros/settings/feature/deviceinfo/ELabelActivity;->a:[Ljava/lang/String;

    invoke-static {v1}, Lcom/coloros/settings/feature/deviceinfo/ELabelActivity;->a([Ljava/lang/String;)I

    move-result v1

    const v2, 0x7f0a022d

    .line 154
    invoke-virtual {p0, v2}, Lcom/coloros/settings/feature/deviceinfo/ELabelActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f0a0230

    .line 155
    invoke-virtual {p0, v3}, Lcom/coloros/settings/feature/deviceinfo/ELabelActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const v4, 0x7f0a022f

    .line 156
    invoke-virtual {p0, v4}, Lcom/coloros/settings/feature/deviceinfo/ELabelActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    const v5, 0x7f0a022c

    .line 157
    invoke-virtual {p0, v5}, Lcom/coloros/settings/feature/deviceinfo/ELabelActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    const-string v6, "SAR:"

    const-string v7, "MODEL:"

    if-eq p1, v0, :cond_3

    .line 159
    invoke-static {}, Lcom/coloros/settings/utils/al;->k()Z

    move-result v8

    if-nez v8, :cond_3

    if-eq v1, v0, :cond_3

    .line 161
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v8, Lcom/coloros/settings/feature/deviceinfo/ELabelActivity;->d:Ljava/lang/String;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 162
    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 163
    sget-object v0, Lcom/coloros/settings/feature/deviceinfo/ELabelActivity;->b:[[Ljava/lang/String;

    aget-object v0, v0, v1

    aget-object v0, v0, p1

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 164
    sget-object v0, Lcom/coloros/settings/feature/deviceinfo/ELabelActivity;->c:[I

    aget p1, v0, p1

    invoke-virtual {v5, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 169
    :cond_3
    invoke-static {p0}, Lcom/coloros/settings/feature/deviceinfo/ELabelActivity;->b(Landroid/content/Context;)Lcom/coloros/settings/feature/deviceinfo/ELabelActivity$a;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_4

    .line 171
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, p1, Lcom/coloros/settings/feature/deviceinfo/ELabelActivity$a;->c:Ljava/lang/String;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 172
    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 173
    iget-object v1, p1, Lcom/coloros/settings/feature/deviceinfo/ELabelActivity$a;->d:Ljava/lang/String;

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 174
    invoke-virtual {p0}, Lcom/coloros/settings/feature/deviceinfo/ELabelActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 176
    :try_start_0
    iget-object p1, p1, Lcom/coloros/settings/feature/deviceinfo/ELabelActivity$a;->e:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/coloros/settings/feature/deviceinfo/ELabelActivity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p1, v0, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v5, p1}, Landroid/widget/ImageView;->setImageResource(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 178
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Error occur, e = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "ELabelActivity"

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    :goto_1
    const-string p1, "20012"

    const-string v1, "e_label"

    .line 181
    invoke-static {p0, p1, v1, v0}, Lcom/coloros/settings/utils/aj;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 186
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 187
    invoke-virtual {p0}, Lcom/coloros/settings/feature/deviceinfo/ELabelActivity;->finish()V

    const/4 p1, 0x1

    return p1

    .line 190
    :cond_0
    invoke-super {p0, p1}, Lcom/coloros/settings/NavigateActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method
