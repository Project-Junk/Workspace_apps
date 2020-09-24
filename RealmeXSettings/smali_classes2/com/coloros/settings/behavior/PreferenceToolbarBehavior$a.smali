.class final Lcom/coloros/settings/behavior/PreferenceToolbarBehavior$a;
.super Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
.source "PreferenceToolbarBehavior.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/settings/behavior/PreferenceToolbarBehavior;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/coloros/settings/behavior/PreferenceToolbarBehavior;

.field private b:Z

.field private c:Z

.field private d:Z

.field private e:Z


# direct methods
.method private constructor <init>(Lcom/coloros/settings/behavior/PreferenceToolbarBehavior;)V
    .locals 0

    .line 209
    iput-object p1, p0, Lcom/coloros/settings/behavior/PreferenceToolbarBehavior$a;->a:Lcom/coloros/settings/behavior/PreferenceToolbarBehavior;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/coloros/settings/behavior/PreferenceToolbarBehavior;B)V
    .locals 0

    .line 209
    invoke-direct {p0, p1}, Lcom/coloros/settings/behavior/PreferenceToolbarBehavior$a;-><init>(Lcom/coloros/settings/behavior/PreferenceToolbarBehavior;)V

    return-void
.end method

.method static synthetic a(Lcom/coloros/settings/behavior/PreferenceToolbarBehavior$a;)Z
    .locals 0

    .line 209
    iget-boolean p0, p0, Lcom/coloros/settings/behavior/PreferenceToolbarBehavior$a;->c:Z

    return p0
.end method

.method static synthetic b(Lcom/coloros/settings/behavior/PreferenceToolbarBehavior$a;)Z
    .locals 0

    .line 209
    iget-boolean p0, p0, Lcom/coloros/settings/behavior/PreferenceToolbarBehavior$a;->b:Z

    return p0
.end method


# virtual methods
.method public final onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 2

    const/4 p2, -0x1

    .line 217
    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->canScrollVertically(I)Z

    move-result p2

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p2, :cond_0

    .line 1242
    iput-boolean v0, p0, Lcom/coloros/settings/behavior/PreferenceToolbarBehavior$a;->d:Z

    .line 1243
    iput-boolean v1, p0, Lcom/coloros/settings/behavior/PreferenceToolbarBehavior$a;->e:Z

    return-void

    .line 219
    :cond_0
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->canScrollVertically(I)Z

    move-result p1

    if-nez p1, :cond_1

    .line 1247
    iput-boolean v1, p0, Lcom/coloros/settings/behavior/PreferenceToolbarBehavior$a;->d:Z

    .line 1248
    iput-boolean v0, p0, Lcom/coloros/settings/behavior/PreferenceToolbarBehavior$a;->e:Z

    return-void

    :cond_1
    if-gez p3, :cond_2

    .line 2232
    iput-boolean v0, p0, Lcom/coloros/settings/behavior/PreferenceToolbarBehavior$a;->b:Z

    .line 2233
    iput-boolean v1, p0, Lcom/coloros/settings/behavior/PreferenceToolbarBehavior$a;->c:Z

    return-void

    :cond_2
    if-lez p3, :cond_3

    .line 2237
    iput-boolean v1, p0, Lcom/coloros/settings/behavior/PreferenceToolbarBehavior$a;->b:Z

    .line 2238
    iput-boolean v0, p0, Lcom/coloros/settings/behavior/PreferenceToolbarBehavior$a;->c:Z

    return-void

    :cond_3
    if-nez p3, :cond_4

    .line 226
    iput-boolean v1, p0, Lcom/coloros/settings/behavior/PreferenceToolbarBehavior$a;->c:Z

    .line 227
    iput-boolean v1, p0, Lcom/coloros/settings/behavior/PreferenceToolbarBehavior$a;->b:Z

    :cond_4
    return-void
.end method
