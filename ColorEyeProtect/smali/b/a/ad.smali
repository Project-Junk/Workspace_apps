.class public final Lb/a/ad;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lb/a/ad;

.field private static final b:Lb/a/m;

.field private static final c:Lb/a/m;

.field private static final d:Lb/a/m;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lb/a/ad;

    invoke-direct {v0}, Lb/a/ad;-><init>()V

    sput-object v0, Lb/a/ad;->a:Lb/a/ad;

    invoke-static {}, Lb/a/l;->a()Lb/a/m;

    move-result-object v0

    sput-object v0, Lb/a/ad;->b:Lb/a/m;

    sget-object v0, Lb/a/be;->b:Lb/a/be;

    check-cast v0, Lb/a/m;

    sput-object v0, Lb/a/ad;->c:Lb/a/m;

    sget-object v0, Lb/a/c/c;->b:Lb/a/c/c;

    invoke-virtual {v0}, Lb/a/c/c;->a()Lb/a/m;

    move-result-object v0

    sput-object v0, Lb/a/ad;->d:Lb/a/m;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final a()Lb/a/m;
    .locals 1

    sget-object v0, Lb/a/ad;->b:Lb/a/m;

    return-object v0
.end method
