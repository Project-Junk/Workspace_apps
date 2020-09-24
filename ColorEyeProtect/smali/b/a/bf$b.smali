.class final Lb/a/bf$b;
.super La/d/b/h;

# interfaces
.implements La/d/a/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/a/bf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "La/d/b/h;",
        "La/d/a/a<",
        "Lb/a/bf$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lb/a/bf$b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lb/a/bf$b;

    invoke-direct {v0}, Lb/a/bf$b;-><init>()V

    sput-object v0, Lb/a/bf$b;->a:Lb/a/bf$b;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, La/d/b/h;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a()Lb/a/bf$a;
    .locals 3

    new-instance p0, Lb/a/bf$a;

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x3

    invoke-direct {p0, v1, v0, v2, v0}, Lb/a/bf$a;-><init>(ZLb/a/a/b;ILa/d/b/e;)V

    return-object p0
.end method

.method public synthetic invoke()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lb/a/bf$b;->a()Lb/a/bf$a;

    move-result-object p0

    return-object p0
.end method
