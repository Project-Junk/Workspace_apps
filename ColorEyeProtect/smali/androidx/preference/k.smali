.class public Landroidx/preference/k;
.super Landroidx/recyclerview/widget/m;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field final a:Landroidx/recyclerview/widget/RecyclerView;

.field final b:Landroidx/core/f/a;

.field final c:Landroidx/core/f/a;


# direct methods
.method public constructor <init>(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 1

    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/m;-><init>(Landroidx/recyclerview/widget/RecyclerView;)V

    invoke-super {p0}, Landroidx/recyclerview/widget/m;->b()Landroidx/core/f/a;

    move-result-object v0

    iput-object v0, p0, Landroidx/preference/k;->b:Landroidx/core/f/a;

    new-instance v0, Landroidx/preference/k$1;

    invoke-direct {v0, p0}, Landroidx/preference/k$1;-><init>(Landroidx/preference/k;)V

    iput-object v0, p0, Landroidx/preference/k;->c:Landroidx/core/f/a;

    iput-object p1, p0, Landroidx/preference/k;->a:Landroidx/recyclerview/widget/RecyclerView;

    return-void
.end method


# virtual methods
.method public b()Landroidx/core/f/a;
    .locals 0

    iget-object p0, p0, Landroidx/preference/k;->c:Landroidx/core/f/a;

    return-object p0
.end method
