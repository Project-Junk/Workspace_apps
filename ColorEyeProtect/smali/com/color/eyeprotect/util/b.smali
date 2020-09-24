.class public Lcom/color/eyeprotect/util/b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/color/eyeprotect/util/b$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String;

.field private static b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/color/eyeprotect/util/b$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private static a(FFF)F
    .locals 1

    cmpg-float v0, p0, p1

    if-gez v0, :cond_0

    move p0, p1

    goto :goto_0

    :cond_0
    cmpl-float p1, p0, p2

    if-lez p1, :cond_1

    move p0, p2

    :cond_1
    :goto_0
    return p0
.end method

.method public static a()I
    .locals 3

    sget-object v0, Lcom/color/eyeprotect/util/b;->b:Ljava/util/List;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/color/eyeprotect/util/b;->b:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/color/eyeprotect/util/b$a;

    iget-object v2, v0, Lcom/color/eyeprotect/util/b$a;->e:[F

    if-eqz v2, :cond_0

    iget-object v0, v0, Lcom/color/eyeprotect/util/b$a;->e:[F

    aget v0, v0, v1

    float-to-int v0, v0

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    return v0
.end method

.method public static a(F)Lcom/color/eyeprotect/util/f;
    .locals 3

    const v0, 0x4528c000    # 2700.0f

    const v1, 0x46147000    # 9500.0f

    invoke-static {p0, v0, v1}, Lcom/color/eyeprotect/util/b;->a(FFF)F

    move-result p0

    sget-object v0, Lcom/color/eyeprotect/util/b;->b:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance p0, Lcom/color/eyeprotect/util/f;

    const/high16 v0, 0x447a0000    # 1000.0f

    invoke-direct {p0, v0, v0, v0}, Lcom/color/eyeprotect/util/f;-><init>(FFF)V

    return-object p0

    :cond_0
    sget-object v0, Lcom/color/eyeprotect/util/b;->b:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/color/eyeprotect/util/b$a;

    iget-object v1, v0, Lcom/color/eyeprotect/util/b$a;->f:Lcom/color/eyeprotect/util/g;

    invoke-virtual {v1, p0}, Lcom/color/eyeprotect/util/g;->a(F)F

    move-result v1

    iget-object v2, v0, Lcom/color/eyeprotect/util/b$a;->g:Lcom/color/eyeprotect/util/g;

    invoke-virtual {v2, p0}, Lcom/color/eyeprotect/util/g;->a(F)F

    move-result v2

    iget-object v0, v0, Lcom/color/eyeprotect/util/b$a;->h:Lcom/color/eyeprotect/util/g;

    invoke-virtual {v0, p0}, Lcom/color/eyeprotect/util/g;->a(F)F

    move-result p0

    new-instance v0, Lcom/color/eyeprotect/util/f;

    float-to-int v1, v1

    int-to-float v1, v1

    float-to-int v2, v2

    int-to-float v2, v2

    float-to-int p0, p0

    int-to-float p0, p0

    invoke-direct {v0, v1, v2, p0}, Lcom/color/eyeprotect/util/f;-><init>(FFF)V

    return-object v0
.end method

.method private static a(I)Ljava/lang/String;
    .locals 10

    const-string v0, "/proc/devinfo/lcd"

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    sget-object p0, Lcom/color/common/a/a;->a:Lcom/color/common/a/a;

    const-string v0, "ColorEyeProtect"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "file:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/color/eyeprotect/util/b;->a:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " don\'t exists"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/color/common/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2

    :cond_0
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, ""

    const-string v4, ""

    const/4 v5, 0x1

    :try_start_0
    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, v0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_a
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_9
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v7, Ljava/io/InputStreamReader;

    const-string v8, "utf-8"

    invoke-direct {v7, v6, v8}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v0, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_8
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_7
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    :goto_0
    :try_start_2
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    const-string v7, "Device version:"

    invoke-virtual {v2, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_2

    const-string v7, ":"

    invoke-virtual {v2, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    aget-object v2, v2, v5

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_6
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :try_start_3
    const-string v3, " +"

    const-string v7, "_"

    invoke-virtual {v2, v3, v7}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :try_start_4
    const-string v2, "-"

    const-string v7, "_"

    invoke-virtual {v3, v2, v7}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object v3, v2

    goto :goto_0

    :catch_0
    move-exception v3

    move-object v9, v3

    move-object v3, v2

    :goto_1
    move-object v2, v9

    goto/16 :goto_3

    :catch_1
    move-exception v3

    move-object v9, v3

    move-object v3, v2

    :goto_2
    move-object v2, v9

    goto/16 :goto_4

    :cond_2
    const-string v7, "Device manufacture:"

    invoke-virtual {v2, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_1

    const-string v7, ":"

    invoke-virtual {v2, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    aget-object v2, v2, v5

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_6
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_5
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :try_start_5
    const-string v4, " +"

    const-string v7, "_"

    invoke-virtual {v2, v4, v7}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4
    :try_end_5
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_0

    :catch_2
    move-exception v4

    move-object v9, v4

    move-object v4, v2

    goto :goto_1

    :catch_3
    move-exception v4

    move-object v9, v4

    move-object v4, v2

    goto :goto_2

    :cond_3
    :try_start_6
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_5

    :catch_4
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    :catch_5
    move-exception v2

    goto :goto_3

    :catch_6
    move-exception v2

    goto :goto_4

    :catchall_0
    move-exception p0

    move-object v0, v2

    goto/16 :goto_7

    :catch_7
    move-exception v0

    move-object v9, v2

    move-object v2, v0

    move-object v0, v9

    goto :goto_3

    :catch_8
    move-exception v0

    move-object v9, v2

    move-object v2, v0

    move-object v0, v9

    goto :goto_4

    :catchall_1
    move-exception p0

    move-object v0, v2

    move-object v6, v0

    goto/16 :goto_7

    :catch_9
    move-exception v0

    move-object v6, v2

    move-object v2, v0

    move-object v0, v6

    :goto_3
    :try_start_7
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    if-eqz v0, :cond_4

    :try_start_8
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    :cond_4
    if-eqz v6, :cond_6

    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4

    goto :goto_5

    :catch_a
    move-exception v0

    move-object v6, v2

    move-object v2, v0

    move-object v0, v6

    :goto_4
    :try_start_9
    invoke-virtual {v2}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    if-eqz v0, :cond_5

    :try_start_a
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    :cond_5
    if-eqz v6, :cond_6

    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_4

    :cond_6
    :goto_5
    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, "_"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    if-ne p0, v5, :cond_7

    const-string p0, "_srgb"

    goto :goto_6

    :cond_7
    const/4 v0, 0x2

    if-ne p0, v0, :cond_8

    const-string p0, "_adapt"

    goto :goto_6

    :cond_8
    const-string p0, ""

    :goto_6
    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p0, "_eyeprotect_data"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    sget-object v0, Lcom/color/common/a/a;->a:Lcom/color/common/a/a;

    const-string v1, "ColorEyeProtect"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getDataPath:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/color/common/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0

    :catchall_2
    move-exception p0

    :goto_7
    if-eqz v0, :cond_9

    :try_start_b
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    goto :goto_8

    :catch_b
    move-exception v0

    goto :goto_9

    :cond_9
    :goto_8
    if-eqz v6, :cond_a

    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_b

    goto :goto_a

    :goto_9
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :cond_a
    :goto_a
    throw p0
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/color/eyeprotect/util/b$a;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/color/common/a/a;->a:Lcom/color/common/a/a;

    const-string v1, "ColorEyeProtect"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "parserXmlData: not exist xml "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " , try find default"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/color/common/a/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    invoke-static {p1}, Lcom/color/eyeprotect/util/b;->a(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const-string v1, "xml"

    const-string v2, "com.color.eyeprotect"

    invoke-virtual {p1, v0, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    :cond_0
    if-nez p1, :cond_1

    const p1, 0x7f120002

    sget-object v1, Lcom/color/common/a/a;->a:Lcom/color/common/a/a;

    const-string v2, "ColorEyeProtect"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "parserXmlData: use default xml file default_eyeprotect_data by xml name "

    :goto_0
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/color/common/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    sget-object v1, Lcom/color/common/a/a;->a:Lcom/color/common/a/a;

    const-string v2, "ColorEyeProtect"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "parserXmlData: use parsed xml file with res id = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " by xml name "

    goto :goto_0

    :goto_1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object p0

    const/4 p1, 0x0

    if-nez p0, :cond_2

    return-object p1

    :cond_2
    :try_start_0
    invoke-interface {p0}, Landroid/content/res/XmlResourceParser;->getEventType()I

    move-result v0

    move-object v1, p1

    move-object v2, v1

    :goto_2
    const/4 v3, 0x1

    if-eq v0, v3, :cond_a

    if-eqz v0, :cond_8

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_3

    :pswitch_0
    if-eqz v2, :cond_9

    invoke-interface {p0}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v3, "LEVEL"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v2, p1

    goto/16 :goto_3

    :pswitch_1
    invoke-interface {p0}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v0

    if-nez v2, :cond_3

    goto/16 :goto_3

    :cond_3
    const-string v3, "Color_Temp"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {p0}, Landroid/content/res/XmlResourceParser;->next()I

    invoke-interface {p0}, Landroid/content/res/XmlResourceParser;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v3, ","

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/color/eyeprotect/util/b;->a([Ljava/lang/String;)[F

    move-result-object v0

    iput-object v0, v2, Lcom/color/eyeprotect/util/b$a;->a:[F

    goto/16 :goto_3

    :cond_4
    const-string v3, "Red"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {p0}, Landroid/content/res/XmlResourceParser;->next()I

    invoke-interface {p0}, Landroid/content/res/XmlResourceParser;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v3, ","

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/color/eyeprotect/util/b;->a([Ljava/lang/String;)[F

    move-result-object v0

    iput-object v0, v2, Lcom/color/eyeprotect/util/b$a;->b:[F

    goto :goto_3

    :cond_5
    const-string v3, "Green"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {p0}, Landroid/content/res/XmlResourceParser;->next()I

    invoke-interface {p0}, Landroid/content/res/XmlResourceParser;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v3, ","

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/color/eyeprotect/util/b;->a([Ljava/lang/String;)[F

    move-result-object v0

    iput-object v0, v2, Lcom/color/eyeprotect/util/b$a;->c:[F

    goto :goto_3

    :cond_6
    const-string v3, "Blue"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {p0}, Landroid/content/res/XmlResourceParser;->next()I

    invoke-interface {p0}, Landroid/content/res/XmlResourceParser;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v3, ","

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/color/eyeprotect/util/b;->a([Ljava/lang/String;)[F

    move-result-object v0

    iput-object v0, v2, Lcom/color/eyeprotect/util/b$a;->d:[F

    goto :goto_3

    :cond_7
    const-string v3, "Default"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {p0}, Landroid/content/res/XmlResourceParser;->next()I

    invoke-interface {p0}, Landroid/content/res/XmlResourceParser;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v3, ","

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/color/eyeprotect/util/b;->a([Ljava/lang/String;)[F

    move-result-object v0

    iput-object v0, v2, Lcom/color/eyeprotect/util/b$a;->e:[F

    goto :goto_3

    :cond_8
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Lcom/color/eyeprotect/util/b$a;

    invoke-direct {v1}, Lcom/color/eyeprotect/util/b$a;-><init>()V

    move-object v2, v1

    move-object v1, v0

    :cond_9
    :goto_3
    invoke-interface {p0}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v0

    goto/16 :goto_2

    :cond_a
    if-eqz v1, :cond_b

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_b
    move-object p1, v1

    goto :goto_4

    :catch_0
    move-exception v0

    sget-object v1, Lcom/color/common/a/a;->a:Lcom/color/common/a/a;

    const-string v2, "ColorEyeProtect"

    const-string v3, "Got execption parsing permissions."

    invoke-virtual {v1, v2, v3, v0}, Lcom/color/common/a/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_4
    if-eqz p0, :cond_c

    invoke-interface {p0}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_c
    return-object p1

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static a(Landroid/content/Context;I)V
    .locals 3

    invoke-static {p1}, Lcom/color/eyeprotect/util/b;->a(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/color/eyeprotect/util/b;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    sput-object p0, Lcom/color/eyeprotect/util/b;->b:Ljava/util/List;

    sget-object p0, Lcom/color/eyeprotect/util/b;->b:Ljava/util/List;

    if-eqz p0, :cond_0

    sget-object p0, Lcom/color/common/a/a;->a:Lcom/color/common/a/a;

    const-string p1, "ColorEyeProtect"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sList.size:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/color/eyeprotect/util/b;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/color/common/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    :goto_0
    sget-object p1, Lcom/color/eyeprotect/util/b;->b:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-ge p0, p1, :cond_0

    sget-object p1, Lcom/color/eyeprotect/util/b;->b:Ljava/util/List;

    invoke-interface {p1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/color/eyeprotect/util/b$a;

    iget-object v0, p1, Lcom/color/eyeprotect/util/b$a;->a:[F

    iget-object v1, p1, Lcom/color/eyeprotect/util/b$a;->b:[F

    const-string v2, "cubic_spline_method"

    invoke-static {v0, v1, v2}, Lcom/color/eyeprotect/util/g;->a([F[FLjava/lang/String;)Lcom/color/eyeprotect/util/g;

    move-result-object v0

    iput-object v0, p1, Lcom/color/eyeprotect/util/b$a;->f:Lcom/color/eyeprotect/util/g;

    iget-object v0, p1, Lcom/color/eyeprotect/util/b$a;->a:[F

    iget-object v1, p1, Lcom/color/eyeprotect/util/b$a;->c:[F

    const-string v2, "cubic_spline_method"

    invoke-static {v0, v1, v2}, Lcom/color/eyeprotect/util/g;->a([F[FLjava/lang/String;)Lcom/color/eyeprotect/util/g;

    move-result-object v0

    iput-object v0, p1, Lcom/color/eyeprotect/util/b$a;->g:Lcom/color/eyeprotect/util/g;

    iget-object v0, p1, Lcom/color/eyeprotect/util/b$a;->a:[F

    iget-object v1, p1, Lcom/color/eyeprotect/util/b$a;->d:[F

    const-string v2, "cubic_spline_method"

    invoke-static {v0, v1, v2}, Lcom/color/eyeprotect/util/g;->a([F[FLjava/lang/String;)Lcom/color/eyeprotect/util/g;

    move-result-object v0

    iput-object v0, p1, Lcom/color/eyeprotect/util/b$a;->h:Lcom/color/eyeprotect/util/g;

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    return-void
.end method

.method private static a([Ljava/lang/String;)[F
    .locals 4

    array-length v0, p0

    new-array v1, v0, [F

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    aget-object v3, p0, v2

    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    aput v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method private static b(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/color/eyeprotect/util/b$a;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".xml"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    const-string v2, "system/etc/"

    invoke-direct {v1, v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/color/common/a/a;->a:Lcom/color/common/a/a;

    const-string v1, "ColorEyeProtect"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "parserXmlData: not exist xml "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " try find default"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/color/common/a/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0, p1}, Lcom/color/eyeprotect/util/b;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    :try_start_0
    new-instance p1, Ljava/io/FileInputStream;

    invoke-direct {p1, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-object p1, p0

    :goto_0
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v0

    :try_start_1
    invoke-interface {v0, p1, p0}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v1

    invoke-virtual {v1}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V

    :goto_1
    if-nez v0, :cond_1

    return-object p0

    :cond_1
    :try_start_2
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v1

    move-object v2, p0

    move-object v3, v2

    :goto_2
    const/4 v4, 0x1

    if-eq v1, v4, :cond_9

    if-eqz v1, :cond_7

    packed-switch v1, :pswitch_data_0

    goto/16 :goto_3

    :pswitch_0
    if-eqz v3, :cond_8

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v4, "LEVEL"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v3, p0

    goto/16 :goto_3

    :pswitch_1
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    if-nez v3, :cond_2

    goto/16 :goto_3

    :cond_2
    const-string v4, "Color_Temp"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v4, ","

    invoke-virtual {v1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/color/eyeprotect/util/b;->a([Ljava/lang/String;)[F

    move-result-object v1

    iput-object v1, v3, Lcom/color/eyeprotect/util/b$a;->a:[F

    goto/16 :goto_3

    :cond_3
    const-string v4, "Red"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v4, ","

    invoke-virtual {v1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/color/eyeprotect/util/b;->a([Ljava/lang/String;)[F

    move-result-object v1

    iput-object v1, v3, Lcom/color/eyeprotect/util/b$a;->b:[F

    goto :goto_3

    :cond_4
    const-string v4, "Green"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v4, ","

    invoke-virtual {v1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/color/eyeprotect/util/b;->a([Ljava/lang/String;)[F

    move-result-object v1

    iput-object v1, v3, Lcom/color/eyeprotect/util/b$a;->c:[F

    goto :goto_3

    :cond_5
    const-string v4, "Blue"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v4, ","

    invoke-virtual {v1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/color/eyeprotect/util/b;->a([Ljava/lang/String;)[F

    move-result-object v1

    iput-object v1, v3, Lcom/color/eyeprotect/util/b$a;->d:[F

    goto :goto_3

    :cond_6
    const-string v4, "Default"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v4, ","

    invoke-virtual {v1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/color/eyeprotect/util/b;->a([Ljava/lang/String;)[F

    move-result-object v1

    iput-object v1, v3, Lcom/color/eyeprotect/util/b$a;->e:[F

    goto :goto_3

    :cond_7
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Lcom/color/eyeprotect/util/b$a;

    invoke-direct {v2}, Lcom/color/eyeprotect/util/b$a;-><init>()V

    move-object v3, v2

    move-object v2, v1

    :cond_8
    :goto_3
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    goto/16 :goto_2

    :cond_9
    if-eqz v2, :cond_a

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_a
    if-eqz p1, :cond_b

    :try_start_3
    invoke-virtual {p1}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    :catch_2
    :cond_b
    move-object p0, v2

    goto :goto_5

    :catchall_0
    move-exception p0

    goto :goto_6

    :catch_3
    move-exception v0

    :try_start_4
    sget-object v1, Lcom/color/common/a/a;->a:Lcom/color/common/a/a;

    const-string v2, "ColorEyeProtect"

    const-string v3, "Got execption parsing permissions."

    invoke-virtual {v1, v2, v3, v0}, Lcom/color/common/a/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz p1, :cond_c

    :goto_4
    :try_start_5
    invoke-virtual {p1}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_5

    goto :goto_5

    :catch_4
    move-exception v0

    :try_start_6
    sget-object v1, Lcom/color/common/a/a;->a:Lcom/color/common/a/a;

    const-string v2, "ColorEyeProtect"

    const-string v3, "Got execption parsing permissions."

    invoke-virtual {v1, v2, v3, v0}, Lcom/color/common/a/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    if-eqz p1, :cond_c

    goto :goto_4

    :catch_5
    :cond_c
    :goto_5
    return-object p0

    :goto_6
    if-eqz p1, :cond_d

    :try_start_7
    invoke-virtual {p1}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_6

    :catch_6
    :cond_d
    throw p0

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
