.class public final Lcom/coloros/settings/a/a;
.super Ljava/lang/Object;
.source "ColorBackupToTop.java"

# interfaces
.implements Lcom/color/support/c/j$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coloros/settings/a/a$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Landroid/view/View;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/color/support/c/j$a;"
    }
.end annotation


# instance fields
.field public a:Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field public b:Landroid/view/View;

.field public c:Lcom/coloros/settings/a/a$a;

.field private d:Lcom/coloros/settings/a/d;

.field private e:Lcom/color/support/c/j;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1

    const/4 v0, 0x0

    .line 36
    invoke-direct {p0, p1, v0}, Lcom/coloros/settings/a/a;-><init>(Landroid/app/Activity;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Landroid/view/View;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "TT;)V"
        }
    .end annotation

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Lcom/color/support/c/j;

    invoke-direct {v0, p1}, Lcom/color/support/c/j;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/coloros/settings/a/a;->e:Lcom/color/support/c/j;

    .line 41
    iget-object p1, p0, Lcom/coloros/settings/a/a;->e:Lcom/color/support/c/j;

    .line 1091
    iput-object p0, p1, Lcom/color/support/c/j;->a:Lcom/color/support/c/j$a;

    .line 42
    iput-object p2, p0, Lcom/coloros/settings/a/a;->a:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 5

    .line 102
    iget-object v0, p0, Lcom/coloros/settings/a/a;->a:Landroid/view/View;

    if-eqz v0, :cond_6

    .line 104
    invoke-virtual {v0}, Landroid/view/View;->isNestedScrollingEnabled()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 106
    iget-object v2, p0, Lcom/coloros/settings/a/a;->a:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setNestedScrollingEnabled(Z)V

    .line 2053
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "startBackToTop () mListView != null"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/coloros/settings/a/a;->a:Landroid/view/View;

    const/4 v4, 0x0

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_1
    move v1, v4

    :goto_0
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ColorBackupToTop"

    invoke-static {v2, v1}, Lcom/coloros/settings/utils/aa;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 2056
    iget-object v1, p0, Lcom/coloros/settings/a/a;->a:Landroid/view/View;

    if-eqz v1, :cond_5

    .line 2057
    iget-object v2, p0, Lcom/coloros/settings/a/a;->d:Lcom/coloros/settings/a/d;

    if-nez v2, :cond_3

    .line 2058
    instance-of v2, v1, Landroid/widget/ListView;

    if-eqz v2, :cond_2

    .line 2059
    new-instance v2, Lcom/coloros/settings/a/b;

    check-cast v1, Landroid/widget/ListView;

    invoke-direct {v2, v1}, Lcom/coloros/settings/a/b;-><init>(Landroid/widget/ListView;)V

    iput-object v2, p0, Lcom/coloros/settings/a/a;->d:Lcom/coloros/settings/a/d;

    goto :goto_1

    .line 2060
    :cond_2
    instance-of v2, v1, Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v2, :cond_3

    .line 2061
    new-instance v2, Lcom/coloros/settings/a/c;

    check-cast v1, Landroidx/recyclerview/widget/RecyclerView;

    invoke-direct {v2, v1}, Lcom/coloros/settings/a/c;-><init>(Landroidx/recyclerview/widget/RecyclerView;)V

    iput-object v2, p0, Lcom/coloros/settings/a/a;->d:Lcom/coloros/settings/a/d;

    .line 2062
    iget-object v1, p0, Lcom/coloros/settings/a/a;->d:Lcom/coloros/settings/a/d;

    check-cast v1, Lcom/coloros/settings/a/c;

    iget-object v2, p0, Lcom/coloros/settings/a/a;->b:Landroid/view/View;

    invoke-virtual {v1, v2}, Lcom/coloros/settings/a/c;->a(Landroid/view/View;)V

    .line 2065
    :cond_3
    :goto_1
    iget-object v1, p0, Lcom/coloros/settings/a/a;->d:Lcom/coloros/settings/a/d;

    if-eqz v1, :cond_5

    .line 2066
    iget-object v2, p0, Lcom/coloros/settings/a/a;->c:Lcom/coloros/settings/a/a$a;

    if-eqz v2, :cond_4

    .line 2067
    invoke-virtual {v1, v2}, Lcom/coloros/settings/a/d;->a(Lcom/coloros/settings/a/d$a;)V

    .line 2069
    :cond_4
    iget-object v1, p0, Lcom/coloros/settings/a/a;->d:Lcom/coloros/settings/a/d;

    invoke-virtual {v1}, Lcom/coloros/settings/a/d;->a()V

    :cond_5
    if-nez v0, :cond_6

    .line 111
    iget-object v0, p0, Lcom/coloros/settings/a/a;->a:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setNestedScrollingEnabled(Z)V

    :cond_6
    return-void
.end method

.method public final b()V
    .locals 2

    .line 46
    iget-object v0, p0, Lcom/coloros/settings/a/a;->e:Lcom/color/support/c/j;

    if-eqz v0, :cond_0

    .line 47
    invoke-virtual {v0}, Lcom/color/support/c/j;->a()V

    const-string v0, "ColorBackupToTop"

    const-string v1, "registerStatusBarReceiver () mStatusBarUtil.onResume()"

    .line 48
    invoke-static {v0, v1}, Lcom/coloros/settings/utils/aa;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final c()V
    .locals 2

    .line 75
    iget-object v0, p0, Lcom/coloros/settings/a/a;->e:Lcom/color/support/c/j;

    if-eqz v0, :cond_0

    const-string v0, "ColorBackupToTop"

    const-string v1, "unregisterStatusBarReceiver () mStatusBarUtil.onPause()"

    .line 76
    invoke-static {v0, v1}, Lcom/coloros/settings/utils/aa;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    iget-object v0, p0, Lcom/coloros/settings/a/a;->e:Lcom/color/support/c/j;

    invoke-virtual {v0}, Lcom/color/support/c/j;->b()V

    .line 79
    :cond_0
    iget-object v0, p0, Lcom/coloros/settings/a/a;->d:Lcom/coloros/settings/a/d;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    .line 80
    invoke-virtual {v0, v1}, Lcom/coloros/settings/a/d;->a(Lcom/coloros/settings/a/d$a;)V

    :cond_1
    return-void
.end method
