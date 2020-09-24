.class Lnet/sourceforge/pinyin4j/e;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/sourceforge/pinyin4j/e$a;
    }
.end annotation


# instance fields
.field private a:Lcom/c/a/a/d;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-direct {p0}, Lnet/sourceforge/pinyin4j/e;->c()V

    return-void
.end method

.method constructor <init>(Lnet/sourceforge/pinyin4j/e$1;)V
    .locals 0

    invoke-direct {p0}, Lnet/sourceforge/pinyin4j/e;-><init>()V

    return-void
.end method

.method private a(Lcom/c/a/a/d;)V
    .locals 0

    iput-object p1, p0, Lnet/sourceforge/pinyin4j/e;->a:Lcom/c/a/a/d;

    return-void
.end method

.method static b()Lnet/sourceforge/pinyin4j/e;
    .locals 1

    sget-object v0, Lnet/sourceforge/pinyin4j/e$a;->a:Lnet/sourceforge/pinyin4j/e;

    return-object v0
.end method

.method private c()V
    .locals 2

    :try_start_0
    const-string v0, ""

    const-string v1, "/pinyindb/pinyin_mapping.xml"

    invoke-static {v1}, Lnet/sourceforge/pinyin4j/h;->a(Ljava/lang/String;)Ljava/io/BufferedInputStream;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/c/a/a/q;->a(Ljava/lang/String;Ljava/io/InputStream;)Lcom/c/a/a/d;

    move-result-object v0

    invoke-direct {p0, v0}, Lnet/sourceforge/pinyin4j/e;->a(Lcom/c/a/a/d;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/c/a/a/m; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Lcom/c/a/a/m;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception p0

    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    :catch_2
    move-exception p0

    invoke-virtual {p0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    :goto_0
    return-void
.end method


# virtual methods
.method a()Lcom/c/a/a/d;
    .locals 0

    iget-object p0, p0, Lnet/sourceforge/pinyin4j/e;->a:Lcom/c/a/a/d;

    return-object p0
.end method
