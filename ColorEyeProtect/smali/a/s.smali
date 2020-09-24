.class public final La/s;
.super Ljava/lang/Object;


# static fields
.field public static final a:Z

.field public static final b:La/s;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, La/s;

    invoke-direct {v0}, La/s;-><init>()V

    sput-object v0, La/s;->b:La/s;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    sput-boolean v0, La/s;->a:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
