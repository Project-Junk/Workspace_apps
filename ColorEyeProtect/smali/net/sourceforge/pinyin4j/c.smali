.class Lnet/sourceforge/pinyin4j/c;
.super Ljava/lang/Object;


# static fields
.field private static a:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const-string v0, "_I"

    const-string v1, "_II"

    const-string v2, "_III"

    const-string v3, "_IV"

    const-string v4, "_V"

    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lnet/sourceforge/pinyin4j/c;->a:[Ljava/lang/String;

    return-void
.end method

.method static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    invoke-static {p0}, Lnet/sourceforge/pinyin4j/i;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0}, Lnet/sourceforge/pinyin4j/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "//"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    sget-object v3, Lnet/sourceforge/pinyin4j/g;->a:Lnet/sourceforge/pinyin4j/g;

    invoke-virtual {v3}, Lnet/sourceforge/pinyin4j/g;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v3, "[text()=\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, "\']"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lnet/sourceforge/pinyin4j/b;->b()Lnet/sourceforge/pinyin4j/b;

    move-result-object v2

    invoke-virtual {v2}, Lnet/sourceforge/pinyin4j/b;->a()Lcom/c/a/a/d;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/c/a/a/d;->b(Ljava/lang/String;)Lcom/c/a/a/f;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "../"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    sget-object v3, Lnet/sourceforge/pinyin4j/g;->f:Lnet/sourceforge/pinyin4j/g;

    invoke-virtual {v3}, Lnet/sourceforge/pinyin4j/g;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    sget-object v3, Lnet/sourceforge/pinyin4j/c;->a:[Ljava/lang/String;

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    aget-object p0, v3, p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p0, "/text()"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/c/a/a/f;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Lcom/c/a/a/m; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, p0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Lcom/c/a/a/m;->printStackTrace()V

    :cond_0
    :goto_0
    return-object v1
.end method
