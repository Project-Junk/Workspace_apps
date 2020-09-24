.class public final Lb/a/be;
.super Lb/a/m;


# static fields
.field public static final b:Lb/a/be;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lb/a/be;

    invoke-direct {v0}, Lb/a/be;-><init>()V

    sput-object v0, Lb/a/be;->b:Lb/a/be;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lb/a/m;-><init>()V

    return-void
.end method


# virtual methods
.method public a(La/b/f;Ljava/lang/Runnable;)V
    .locals 0

    const-string p0, "context"

    invoke-static {p1, p0}, La/d/b/g;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "block"

    invoke-static {p2, p0}, La/d/b/g;->b(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    check-cast p0, Ljava/lang/Throwable;

    throw p0
.end method

.method public a(La/b/f;)Z
    .locals 0

    const-string p0, "context"

    invoke-static {p1, p0}, La/d/b/g;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    const-string p0, "Unconfined"

    return-object p0
.end method
