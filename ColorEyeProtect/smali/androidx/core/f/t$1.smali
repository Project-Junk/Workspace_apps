.class final Landroidx/core/f/t$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnApplyWindowInsetsListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/core/f/t;->a(Landroid/view/View;Landroidx/core/f/q;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroidx/core/f/q;


# direct methods
.method constructor <init>(Landroidx/core/f/q;)V
    .locals 0

    iput-object p1, p0, Landroidx/core/f/t$1;->a:Landroidx/core/f/q;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onApplyWindowInsets(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 0

    invoke-static {p2}, Landroidx/core/f/ab;->a(Ljava/lang/Object;)Landroidx/core/f/ab;

    move-result-object p2

    iget-object p0, p0, Landroidx/core/f/t$1;->a:Landroidx/core/f/q;

    invoke-interface {p0, p1, p2}, Landroidx/core/f/q;->a(Landroid/view/View;Landroidx/core/f/ab;)Landroidx/core/f/ab;

    move-result-object p0

    invoke-static {p0}, Landroidx/core/f/ab;->a(Landroidx/core/f/ab;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/WindowInsets;

    return-object p0
.end method
