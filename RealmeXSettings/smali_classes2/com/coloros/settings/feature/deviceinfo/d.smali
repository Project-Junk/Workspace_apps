.class public final Lcom/coloros/settings/feature/deviceinfo/d;
.super Ljava/lang/Object;
.source "NetworkAccessInfoParser.java"


# static fields
.field private static a:Ljava/util/ArrayList; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static b:Z = false


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static a(Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 37
    sget-boolean v0, Lcom/coloros/settings/feature/deviceinfo/d;->b:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 38
    sput-boolean v0, Lcom/coloros/settings/feature/deviceinfo/d;->b:Z

    .line 39
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const v1, 0x7f1500d4

    invoke-static {v0, p0, v1}, Lcom/coloros/settings/feature/deviceinfo/d;->a(Landroid/content/res/Resources;Ljava/lang/String;I)Ljava/util/ArrayList;

    move-result-object p0

    sput-object p0, Lcom/coloros/settings/feature/deviceinfo/d;->a:Ljava/util/ArrayList;

    .line 41
    :cond_0
    sget-object p0, Lcom/coloros/settings/feature/deviceinfo/d;->a:Ljava/util/ArrayList;

    return-object p0
.end method

.method public static a(Landroid/content/res/Resources;Ljava/lang/String;I)Ljava/util/ArrayList;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/res/Resources;",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    const-string v0, "@"

    const-string v1, "ro.common.soft"

    const-string v2, "null"

    .line 64
    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 65
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "NetworkAccessInfoParser MODEL="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lcom/coloros/settings/feature/deviceinfo/ColorRegulatoryActivity;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Lisen"

    invoke-static {v3, v2}, Lcom/coloros/settings/utils/aa;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "NetworkAccessInfoParser project="

    invoke-virtual {v4, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/coloros/settings/utils/aa;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object p2

    :cond_0
    const/4 v2, 0x0

    .line 73
    :try_start_0
    invoke-interface {p2}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v3

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eq v3, v5, :cond_1

    if-ne v3, v4, :cond_0

    .line 76
    :cond_1
    :goto_0
    invoke-interface {p2}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v3

    if-eq v3, v5, :cond_7

    if-ne v3, v4, :cond_1

    .line 79
    invoke-interface {p2}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v3

    .line 80
    sget-object v6, Lcom/coloros/settings/feature/deviceinfo/ColorRegulatoryActivity;->a:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_3

    invoke-virtual {v3, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_1

    .line 99
    :cond_2
    invoke-static {p2}, Lcom/coloros/settings/feature/deviceinfo/d;->a(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_0

    .line 81
    :cond_3
    :goto_1
    invoke-interface {p2}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v1

    .line 82
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 83
    :cond_4
    :goto_2
    :try_start_1
    invoke-interface {p2}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v6

    if-eq v6, v5, :cond_6

    .line 84
    invoke-interface {p2}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v7

    if-ge v1, v7, :cond_6

    if-ne v6, v4, :cond_4

    const-string v6, "drawable"

    .line 89
    invoke-interface {p2, v2, v6}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 90
    invoke-virtual {v6, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_5

    const-string v7, ""

    .line 91
    invoke-virtual {v6, v0, v7}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 93
    :cond_5
    invoke-virtual {p0, v6, v2, p1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    .line 94
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :cond_6
    move-object v2, v3

    goto :goto_3

    :catch_0
    move-object v2, v3

    goto :goto_5

    :catch_1
    move-object v2, v3

    goto :goto_6

    :cond_7
    :goto_3
    if-eqz p2, :cond_9

    .line 107
    :goto_4
    invoke-interface {p2}, Landroid/content/res/XmlResourceParser;->close()V

    goto :goto_7

    :catchall_0
    move-exception p0

    if-eqz p2, :cond_8

    invoke-interface {p2}, Landroid/content/res/XmlResourceParser;->close()V

    .line 109
    :cond_8
    throw p0

    :catch_2
    :goto_5
    if-eqz p2, :cond_9

    goto :goto_4

    :catch_3
    :goto_6
    if-eqz p2, :cond_9

    goto :goto_4

    :cond_9
    :goto_7
    return-object v2
.end method

.method private static a(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 3

    .line 51
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    .line 53
    :cond_0
    :try_start_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    .line 54
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v1
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v0, v1, :cond_0

    :catch_0
    :cond_1
    return-void
.end method

.method public static b(Landroid/content/Context;)Z
    .locals 0

    .line 45
    invoke-static {p0}, Lcom/coloros/settings/feature/deviceinfo/d;->a(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 46
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
