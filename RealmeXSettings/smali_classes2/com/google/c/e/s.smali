.class public final Lcom/google/c/e/s;
.super Lcom/google/c/e/x;
.source "UPCAReader.java"


# instance fields
.field private final a:Lcom/google/c/e/x;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 36
    invoke-direct {p0}, Lcom/google/c/e/x;-><init>()V

    .line 38
    new-instance v0, Lcom/google/c/e/h;

    invoke-direct {v0}, Lcom/google/c/e/h;-><init>()V

    iput-object v0, p0, Lcom/google/c/e/s;->a:Lcom/google/c/e/x;

    return-void
.end method

.method private static a(Lcom/google/c/o;)Lcom/google/c/o;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/c/h;
        }
    .end annotation

    .line 1060
    iget-object v0, p0, Lcom/google/c/o;->a:Ljava/lang/String;

    const/4 v1, 0x0

    .line 79
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x30

    if-ne v1, v2, :cond_0

    .line 80
    new-instance v1, Lcom/google/c/o;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    .line 1076
    iget-object p0, p0, Lcom/google/c/o;->c:[Lcom/google/c/q;

    .line 80
    sget-object v3, Lcom/google/c/a;->o:Lcom/google/c/a;

    invoke-direct {v1, v0, v2, p0, v3}, Lcom/google/c/o;-><init>(Ljava/lang/String;[B[Lcom/google/c/q;Lcom/google/c/a;)V

    return-object v1

    .line 82
    :cond_0
    invoke-static {}, Lcom/google/c/h;->a()Lcom/google/c/h;

    move-result-object p0

    throw p0
.end method


# virtual methods
.method protected final a(Lcom/google/c/b/a;[ILjava/lang/StringBuilder;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/c/l;
        }
    .end annotation

    .line 74
    iget-object v0, p0, Lcom/google/c/e/s;->a:Lcom/google/c/e/x;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/c/e/x;->a(Lcom/google/c/b/a;[ILjava/lang/StringBuilder;)I

    move-result p1

    return p1
.end method

.method public final a(ILcom/google/c/b/a;Ljava/util/Map;)Lcom/google/c/o;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/google/c/b/a;",
            "Ljava/util/Map<",
            "Lcom/google/c/e;",
            "*>;)",
            "Lcom/google/c/o;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/c/l;,
            Lcom/google/c/h;,
            Lcom/google/c/d;
        }
    .end annotation

    .line 52
    iget-object v0, p0, Lcom/google/c/e/s;->a:Lcom/google/c/e/x;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/c/e/x;->a(ILcom/google/c/b/a;Ljava/util/Map;)Lcom/google/c/o;

    move-result-object p1

    invoke-static {p1}, Lcom/google/c/e/s;->a(Lcom/google/c/o;)Lcom/google/c/o;

    move-result-object p1

    return-object p1
.end method

.method public final a(ILcom/google/c/b/a;[ILjava/util/Map;)Lcom/google/c/o;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/google/c/b/a;",
            "[I",
            "Ljava/util/Map<",
            "Lcom/google/c/e;",
            "*>;)",
            "Lcom/google/c/o;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/c/l;,
            Lcom/google/c/h;,
            Lcom/google/c/d;
        }
    .end annotation

    .line 46
    iget-object v0, p0, Lcom/google/c/e/s;->a:Lcom/google/c/e/x;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/google/c/e/x;->a(ILcom/google/c/b/a;[ILjava/util/Map;)Lcom/google/c/o;

    move-result-object p1

    invoke-static {p1}, Lcom/google/c/e/s;->a(Lcom/google/c/o;)Lcom/google/c/o;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/google/c/c;Ljava/util/Map;)Lcom/google/c/o;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/c/c;",
            "Ljava/util/Map<",
            "Lcom/google/c/e;",
            "*>;)",
            "Lcom/google/c/o;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/c/l;,
            Lcom/google/c/h;
        }
    .end annotation

    .line 63
    iget-object v0, p0, Lcom/google/c/e/s;->a:Lcom/google/c/e/x;

    invoke-virtual {v0, p1, p2}, Lcom/google/c/e/x;->a(Lcom/google/c/c;Ljava/util/Map;)Lcom/google/c/o;

    move-result-object p1

    invoke-static {p1}, Lcom/google/c/e/s;->a(Lcom/google/c/o;)Lcom/google/c/o;

    move-result-object p1

    return-object p1
.end method

.method final b()Lcom/google/c/a;
    .locals 1

    .line 68
    sget-object v0, Lcom/google/c/a;->o:Lcom/google/c/a;

    return-object v0
.end method
