.class public Lcom/coloros/settings/utils/recyclerview/ViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "ViewHolder.java"


# instance fields
.field private a:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private b:Landroid/view/View;

.field private c:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;Landroid/view/View;)V
    .locals 0

    .line 44
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 45
    iput-object p1, p0, Lcom/coloros/settings/utils/recyclerview/ViewHolder;->c:Landroid/content/Context;

    .line 46
    iput-object p2, p0, Lcom/coloros/settings/utils/recyclerview/ViewHolder;->b:Landroid/view/View;

    .line 47
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/coloros/settings/utils/recyclerview/ViewHolder;->a:Landroid/util/SparseArray;

    return-void
.end method

.method public static a(Landroid/content/Context;Landroid/view/View;)Lcom/coloros/settings/utils/recyclerview/ViewHolder;
    .locals 1

    .line 53
    new-instance v0, Lcom/coloros/settings/utils/recyclerview/ViewHolder;

    invoke-direct {v0, p0, p1}, Lcom/coloros/settings/utils/recyclerview/ViewHolder;-><init>(Landroid/content/Context;Landroid/view/View;)V

    return-object v0
.end method
