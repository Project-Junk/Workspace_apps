.class public final Lcom/color/eyeprotect/util/a;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lcom/color/eyeprotect/util/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/color/eyeprotect/util/a;

    invoke-direct {v0}, Lcom/color/eyeprotect/util/a;-><init>()V

    sput-object v0, Lcom/color/eyeprotect/util/a;->a:Lcom/color/eyeprotect/util/a;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final a([Ljava/lang/String;)[F
    .locals 3

    array-length p0, p1

    new-array v0, p0, [F

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p0, :cond_0

    aget-object v2, p1, v1

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    aput v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private final b(Landroid/content/Context;I)Lcom/color/eyeprotect/d/a;
    .locals 12

    const/4 v0, 0x0

    move-object v1, v0

    check-cast v1, Lcom/color/eyeprotect/d/a;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object p1

    :try_start_0
    const-string p2, "parser"

    invoke-static {p1, p2}, La/d/b/g;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->getEventType()I

    move-result p2

    move-object v2, v1

    :goto_0
    const/4 v3, 0x1

    if-eq p2, v3, :cond_d

    if-eqz p2, :cond_b

    const/4 v3, 0x2

    if-eq p2, v3, :cond_0

    goto/16 :goto_1

    :cond_0
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object p2

    if-nez v2, :cond_1

    goto/16 :goto_2

    :cond_1
    if-nez p2, :cond_2

    goto/16 :goto_1

    :cond_2
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v3

    const v4, -0x6cb55374

    const/4 v5, 0x0

    if-eq v3, v4, :cond_7

    const v4, -0x3c5dbc90

    if-eq v3, v4, :cond_3

    goto/16 :goto_1

    :cond_3
    const-string v3, "Color_Temp"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_c

    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->next()I

    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->getText()Ljava/lang/String;

    move-result-object p2

    const-string v3, "parser.text"

    invoke-static {p2, v3}, La/d/b/g;->a(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p2, :cond_6

    check-cast p2, Ljava/lang/CharSequence;

    invoke-static {p2}, La/h/f;->a(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    move-object v6, p2

    check-cast v6, Ljava/lang/CharSequence;

    const-string p2, ","

    filled-new-array {p2}, [Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x6

    const/4 v11, 0x0

    invoke-static/range {v6 .. v11}, La/h/f;->a(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    move-result-object p2

    check-cast p2, Ljava/util/Collection;

    if-eqz p2, :cond_5

    new-array v3, v5, [Ljava/lang/String;

    invoke-interface {p2, v3}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_4

    check-cast p2, [Ljava/lang/String;

    invoke-direct {p0, p2}, Lcom/color/eyeprotect/util/a;->a([Ljava/lang/String;)[F

    move-result-object p2

    invoke-virtual {v2, p2}, Lcom/color/eyeprotect/d/a;->a([F)V

    goto/16 :goto_1

    :cond_4
    new-instance p0, La/o;

    const-string p2, "null cannot be cast to non-null type kotlin.Array<T>"

    invoke-direct {p0, p2}, La/o;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    new-instance p0, La/o;

    const-string p2, "null cannot be cast to non-null type java.util.Collection<T>"

    invoke-direct {p0, p2}, La/o;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6
    new-instance p0, La/o;

    const-string p2, "null cannot be cast to non-null type kotlin.CharSequence"

    invoke-direct {p0, p2}, La/o;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_7
    const-string v3, "Screen"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_c

    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->next()I

    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->getText()Ljava/lang/String;

    move-result-object p2

    const-string v3, "parser.text"

    invoke-static {p2, v3}, La/d/b/g;->a(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p2, :cond_a

    check-cast p2, Ljava/lang/CharSequence;

    invoke-static {p2}, La/h/f;->a(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    move-object v6, p2

    check-cast v6, Ljava/lang/CharSequence;

    const-string p2, ","

    filled-new-array {p2}, [Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x6

    const/4 v11, 0x0

    invoke-static/range {v6 .. v11}, La/h/f;->a(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    move-result-object p2

    check-cast p2, Ljava/util/Collection;

    if-eqz p2, :cond_9

    new-array v3, v5, [Ljava/lang/String;

    invoke-interface {p2, v3}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_8

    check-cast p2, [Ljava/lang/String;

    invoke-direct {p0, p2}, Lcom/color/eyeprotect/util/a;->a([Ljava/lang/String;)[F

    move-result-object p2

    invoke-virtual {v2, p2}, Lcom/color/eyeprotect/d/a;->b([F)V

    goto :goto_1

    :cond_8
    new-instance p0, La/o;

    const-string p2, "null cannot be cast to non-null type kotlin.Array<T>"

    invoke-direct {p0, p2}, La/o;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_9
    new-instance p0, La/o;

    const-string p2, "null cannot be cast to non-null type java.util.Collection<T>"

    invoke-direct {p0, p2}, La/o;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_a
    new-instance p0, La/o;

    const-string p2, "null cannot be cast to non-null type kotlin.CharSequence"

    invoke-direct {p0, p2}, La/o;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_b
    new-instance p2, Lcom/color/eyeprotect/d/a;

    const/4 v2, 0x3

    invoke-direct {p2, v0, v0, v2, v0}, Lcom/color/eyeprotect/d/a;-><init>([F[FILa/d/b/e;)V

    move-object v2, p2

    :cond_c
    :goto_1
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->next()I

    move-result p2
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :cond_d
    :goto_2
    move-object v1, v2

    goto :goto_3

    :catch_0
    move-exception p0

    sget-object p2, Lcom/color/common/a/a;->a:Lcom/color/common/a/a;

    const-string v0, "AiCCTParseUtil"

    const-string v2, "Got execption parsing permissions."

    check-cast p0, Ljava/lang/Throwable;

    invoke-virtual {p2, v0, v2, p0}, Lcom/color/common/a/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_3
    if-eqz p1, :cond_e

    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_e
    return-object v1
.end method


# virtual methods
.method public final a(Landroid/content/Context;I)Lcom/color/eyeprotect/util/g;
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, La/d/b/g;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Lcom/color/eyeprotect/util/a;->b(Landroid/content/Context;I)Lcom/color/eyeprotect/d/a;

    move-result-object p0

    sget-object p1, Lcom/color/common/a/a;->a:Lcom/color/common/a/a;

    const-string p2, "AiCCTParseUtil"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getAiSpline--> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Lcom/color/common/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/color/eyeprotect/d/a;->a()[F

    move-result-object p1

    invoke-virtual {p0}, Lcom/color/eyeprotect/d/a;->b()[F

    move-result-object p0

    const-string p2, "cubic_spline_method"

    invoke-static {p1, p0, p2}, Lcom/color/eyeprotect/util/g;->a([F[FLjava/lang/String;)Lcom/color/eyeprotect/util/g;

    move-result-object p0

    :goto_0
    return-object p0
.end method
