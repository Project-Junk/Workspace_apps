.class public La/d/b/o;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Class;)La/f/c;
    .locals 0

    new-instance p0, La/d/b/c;

    invoke-direct {p0, p1}, La/d/b/c;-><init>(Ljava/lang/Class;)V

    return-object p0
.end method

.method public a(La/d/b/j;)La/f/g;
    .locals 0

    return-object p1
.end method

.method public a(La/d/b/l;)La/f/j;
    .locals 0

    return-object p1
.end method

.method public a(La/d/b/f;)Ljava/lang/String;
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getGenericInterfaces()[Ljava/lang/reflect/Type;

    move-result-object p0

    const/4 p1, 0x0

    aget-object p0, p0, p1

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "kotlin.jvm.functions."

    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "kotlin.jvm.functions."

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method public a(La/d/b/h;)Ljava/lang/String;
    .locals 0

    invoke-virtual {p0, p1}, La/d/b/o;->a(La/d/b/f;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
