.class public Landroidx/core/f/a/d;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/f/a/d$b;,
        Landroidx/core/f/a/d$a;
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    new-instance v0, Landroidx/core/f/a/d$b;

    invoke-direct {v0, p0}, Landroidx/core/f/a/d$b;-><init>(Landroidx/core/f/a/d;)V

    :goto_0
    iput-object v0, p0, Landroidx/core/f/a/d;->a:Ljava/lang/Object;

    goto :goto_1

    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_1

    new-instance v0, Landroidx/core/f/a/d$a;

    invoke-direct {v0, p0}, Landroidx/core/f/a/d$a;-><init>(Landroidx/core/f/a/d;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :goto_1
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/core/f/a/d;->a:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public a(I)Landroidx/core/f/a/c;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public a()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Landroidx/core/f/a/d;->a:Ljava/lang/Object;

    return-object p0
.end method

.method public a(Ljava/lang/String;I)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List<",
            "Landroidx/core/f/a/c;",
            ">;"
        }
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method public a(IILandroid/os/Bundle;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public b(I)Landroidx/core/f/a/c;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method