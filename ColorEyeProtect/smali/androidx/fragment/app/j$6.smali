.class Landroidx/fragment/app/j$6;
.super Landroidx/fragment/app/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/fragment/app/j;->f()Landroidx/fragment/app/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroidx/fragment/app/j;


# direct methods
.method constructor <init>(Landroidx/fragment/app/j;)V
    .locals 0

    iput-object p1, p0, Landroidx/fragment/app/j$6;->a:Landroidx/fragment/app/j;

    invoke-direct {p0}, Landroidx/fragment/app/g;-><init>()V

    return-void
.end method


# virtual methods
.method public c(Ljava/lang/ClassLoader;Ljava/lang/String;)Landroidx/fragment/app/d;
    .locals 1

    iget-object p1, p0, Landroidx/fragment/app/j$6;->a:Landroidx/fragment/app/j;

    iget-object p1, p1, Landroidx/fragment/app/j;->n:Landroidx/fragment/app/h;

    iget-object p0, p0, Landroidx/fragment/app/j$6;->a:Landroidx/fragment/app/j;

    iget-object p0, p0, Landroidx/fragment/app/j;->n:Landroidx/fragment/app/h;

    invoke-virtual {p0}, Landroidx/fragment/app/h;->i()Landroid/content/Context;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p1, p0, p2, v0}, Landroidx/fragment/app/h;->a(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroidx/fragment/app/d;

    move-result-object p0

    return-object p0
.end method
