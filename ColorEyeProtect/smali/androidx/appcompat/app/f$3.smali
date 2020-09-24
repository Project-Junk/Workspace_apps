.class Landroidx/appcompat/app/f$3;
.super Ljava/lang/Object;

# interfaces
.implements Landroidx/core/f/q;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/appcompat/app/f;->A()Landroid/view/ViewGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroidx/appcompat/app/f;


# direct methods
.method constructor <init>(Landroidx/appcompat/app/f;)V
    .locals 0

    iput-object p1, p0, Landroidx/appcompat/app/f$3;->a:Landroidx/appcompat/app/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;Landroidx/core/f/ab;)Landroidx/core/f/ab;
    .locals 3

    invoke-virtual {p2}, Landroidx/core/f/ab;->b()I

    move-result v0

    iget-object p0, p0, Landroidx/appcompat/app/f$3;->a:Landroidx/appcompat/app/f;

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/f;->i(I)I

    move-result p0

    if-eq v0, p0, :cond_0

    invoke-virtual {p2}, Landroidx/core/f/ab;->a()I

    move-result v0

    invoke-virtual {p2}, Landroidx/core/f/ab;->c()I

    move-result v1

    invoke-virtual {p2}, Landroidx/core/f/ab;->d()I

    move-result v2

    invoke-virtual {p2, v0, p0, v1, v2}, Landroidx/core/f/ab;->a(IIII)Landroidx/core/f/ab;

    move-result-object p2

    :cond_0
    invoke-static {p1, p2}, Landroidx/core/f/t;->a(Landroid/view/View;Landroidx/core/f/ab;)Landroidx/core/f/ab;

    move-result-object p0

    return-object p0
.end method
