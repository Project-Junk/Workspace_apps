.class public final Landroidx/media/e$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field a:Landroidx/media/e$b;


# direct methods
.method public constructor <init>(Ljava/lang/String;II)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_0

    new-instance v0, Landroidx/media/g$a;

    invoke-direct {v0, p1, p2, p3}, Landroidx/media/g$a;-><init>(Ljava/lang/String;II)V

    :goto_0
    iput-object v0, p0, Landroidx/media/e$a;->a:Landroidx/media/e$b;

    goto :goto_1

    :cond_0
    new-instance v0, Landroidx/media/h$a;

    invoke-direct {v0, p1, p2, p3}, Landroidx/media/h$a;-><init>(Ljava/lang/String;II)V

    goto :goto_0

    :goto_1
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    instance-of v0, p1, Landroidx/media/e$a;

    if-nez v0, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    iget-object p0, p0, Landroidx/media/e$a;->a:Landroidx/media/e$b;

    check-cast p1, Landroidx/media/e$a;

    iget-object p1, p1, Landroidx/media/e$a;->a:Landroidx/media/e$b;

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public hashCode()I
    .locals 0

    iget-object p0, p0, Landroidx/media/e$a;->a:Landroidx/media/e$b;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    return p0
.end method
