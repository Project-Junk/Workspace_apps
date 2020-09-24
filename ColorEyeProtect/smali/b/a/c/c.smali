.class public final Lb/a/c/c;
.super Lb/a/c/d;


# static fields
.field public static final b:Lb/a/c/c;

.field private static final c:Lb/a/m;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lb/a/c/c;

    invoke-direct {v0}, Lb/a/c/c;-><init>()V

    sput-object v0, Lb/a/c/c;->b:Lb/a/c/c;

    const-string v1, "kotlinx.coroutines.io.parallelism"

    invoke-static {}, Lb/a/a/n;->a()I

    move-result v2

    const/16 v3, 0x40

    invoke-static {v3, v2}, La/e/d;->c(II)I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0xc

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lb/a/a/n;->a(Ljava/lang/String;IIIILjava/lang/Object;)I

    move-result v1

    invoke-virtual {v0, v1}, Lb/a/c/c;->a(I)Lb/a/m;

    move-result-object v0

    sput-object v0, Lb/a/c/c;->c:Lb/a/m;

    return-void
.end method

.method private constructor <init>()V
    .locals 6

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x7

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lb/a/c/d;-><init>(IILjava/lang/String;ILa/d/b/e;)V

    return-void
.end method


# virtual methods
.method public final a()Lb/a/m;
    .locals 0

    sget-object p0, Lb/a/c/c;->c:Lb/a/m;

    return-object p0
.end method

.method public close()V
    .locals 1

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "DefaultDispatcher cannot be closed"

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    check-cast p0, Ljava/lang/Throwable;

    throw p0
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    const-string p0, "DefaultDispatcher"

    return-object p0
.end method
