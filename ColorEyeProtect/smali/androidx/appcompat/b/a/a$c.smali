.class Landroidx/appcompat/b/a/a$c;
.super Landroidx/appcompat/b/a/a$f;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/b/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "c"
.end annotation


# instance fields
.field private final a:Landroidx/g/a/a/c;


# direct methods
.method constructor <init>(Landroidx/g/a/a/c;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroidx/appcompat/b/a/a$f;-><init>(Landroidx/appcompat/b/a/a$1;)V

    iput-object p1, p0, Landroidx/appcompat/b/a/a$c;->a:Landroidx/g/a/a/c;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    iget-object p0, p0, Landroidx/appcompat/b/a/a$c;->a:Landroidx/g/a/a/c;

    invoke-virtual {p0}, Landroidx/g/a/a/c;->start()V

    return-void
.end method

.method public b()V
    .locals 0

    iget-object p0, p0, Landroidx/appcompat/b/a/a$c;->a:Landroidx/g/a/a/c;

    invoke-virtual {p0}, Landroidx/g/a/a/c;->stop()V

    return-void
.end method
