.class public final Lb/a/ax;
.super Ljava/lang/Object;

# interfaces
.implements Lb/a/ae;
.implements Lb/a/d;


# static fields
.field public static final a:Lb/a/ax;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lb/a/ax;

    invoke-direct {v0}, Lb/a/ax;-><init>()V

    sput-object v0, Lb/a/ax;->a:Lb/a/ax;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    return-void
.end method

.method public a(Ljava/lang/Throwable;)Z
    .locals 0

    const-string p0, "cause"

    invoke-static {p1, p0}, La/d/b/g;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    const-string p0, "NonDisposableHandle"

    return-object p0
.end method
