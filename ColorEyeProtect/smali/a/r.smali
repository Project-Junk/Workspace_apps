.class public final La/r;
.super Ljava/lang/Object;


# static fields
.field public static final a:La/r;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, La/r;

    invoke-direct {v0}, La/r;-><init>()V

    sput-object v0, La/r;->a:La/r;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 0

    const-string p0, "kotlin.Unit"

    return-object p0
.end method
