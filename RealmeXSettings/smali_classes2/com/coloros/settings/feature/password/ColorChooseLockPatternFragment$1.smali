.class final Lcom/coloros/settings/feature/password/ColorChooseLockPatternFragment$1;
.super Ljava/lang/Object;
.source "ColorChooseLockPatternFragment.java"

# interfaces
.implements Lcom/color/support/widget/ColorLockPatternView$OnPatternListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/settings/feature/password/ColorChooseLockPatternFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/coloros/settings/feature/password/ColorChooseLockPatternFragment;


# direct methods
.method constructor <init>(Lcom/coloros/settings/feature/password/ColorChooseLockPatternFragment;)V
    .locals 0

    .line 146
    iput-object p1, p0, Lcom/coloros/settings/feature/password/ColorChooseLockPatternFragment$1;->a:Lcom/coloros/settings/feature/password/ColorChooseLockPatternFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPatternCellAdded(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/color/support/widget/ColorLockPatternView$Cell;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public final onPatternCleared()V
    .locals 2

    .line 156
    iget-object v0, p0, Lcom/coloros/settings/feature/password/ColorChooseLockPatternFragment$1;->a:Lcom/coloros/settings/feature/password/ColorChooseLockPatternFragment;

    invoke-static {v0}, Lcom/coloros/settings/feature/password/ColorChooseLockPatternFragment;->b(Lcom/coloros/settings/feature/password/ColorChooseLockPatternFragment;)Lcom/color/support/widget/ColorLockPatternView;

    move-result-object v0

    iget-object v1, p0, Lcom/coloros/settings/feature/password/ColorChooseLockPatternFragment$1;->a:Lcom/coloros/settings/feature/password/ColorChooseLockPatternFragment;

    invoke-static {v1}, Lcom/coloros/settings/feature/password/ColorChooseLockPatternFragment;->a(Lcom/coloros/settings/feature/password/ColorChooseLockPatternFragment;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/color/support/widget/ColorLockPatternView;->removeCallbacks(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final onPatternDetected(Ljava/util/List;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/color/support/widget/ColorLockPatternView$Cell;",
            ">;)V"
        }
    .end annotation

    .line 161
    iget-object v0, p0, Lcom/coloros/settings/feature/password/ColorChooseLockPatternFragment$1;->a:Lcom/coloros/settings/feature/password/ColorChooseLockPatternFragment;

    invoke-static {v0}, Lcom/coloros/settings/feature/password/ColorChooseLockPatternFragment;->c(Lcom/coloros/settings/feature/password/ColorChooseLockPatternFragment;)Lcom/coloros/settings/feature/password/ColorChooseLockPatternFragment$c;

    move-result-object v0

    sget-object v1, Lcom/coloros/settings/feature/password/ColorChooseLockPatternFragment$c;->d:Lcom/coloros/settings/feature/password/ColorChooseLockPatternFragment$c;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_2

    .line 162
    iget-object v0, p0, Lcom/coloros/settings/feature/password/ColorChooseLockPatternFragment$1;->a:Lcom/coloros/settings/feature/password/ColorChooseLockPatternFragment;

    invoke-static {v0}, Lcom/coloros/settings/feature/password/ColorChooseLockPatternFragment;->d(Lcom/coloros/settings/feature/password/ColorChooseLockPatternFragment;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 166
    iget-object v0, p0, Lcom/coloros/settings/feature/password/ColorChooseLockPatternFragment$1;->a:Lcom/coloros/settings/feature/password/ColorChooseLockPatternFragment;

    invoke-static {v0}, Lcom/coloros/settings/feature/password/ColorChooseLockPatternFragment;->d(Lcom/coloros/settings/feature/password/ColorChooseLockPatternFragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 168
    iget-object p1, p0, Lcom/coloros/settings/feature/password/ColorChooseLockPatternFragment$1;->a:Lcom/coloros/settings/feature/password/ColorChooseLockPatternFragment;

    invoke-static {p1}, Lcom/coloros/settings/feature/password/ColorChooseLockPatternFragment;->e(Lcom/coloros/settings/feature/password/ColorChooseLockPatternFragment;)V

    return-void

    .line 173
    :cond_0
    iget-object p1, p0, Lcom/coloros/settings/feature/password/ColorChooseLockPatternFragment$1;->a:Lcom/coloros/settings/feature/password/ColorChooseLockPatternFragment;

    invoke-static {p1}, Lcom/coloros/settings/feature/password/ColorChooseLockPatternFragment;->f(Lcom/coloros/settings/feature/password/ColorChooseLockPatternFragment;)Z

    .line 174
    iget-object p1, p0, Lcom/coloros/settings/feature/password/ColorChooseLockPatternFragment$1;->a:Lcom/coloros/settings/feature/password/ColorChooseLockPatternFragment;

    sget-object v0, Lcom/coloros/settings/feature/password/ColorChooseLockPatternFragment$c;->a:Lcom/coloros/settings/feature/password/ColorChooseLockPatternFragment$c;

    invoke-virtual {p1, v0}, Lcom/coloros/settings/feature/password/ColorChooseLockPatternFragment;->a(Lcom/coloros/settings/feature/password/ColorChooseLockPatternFragment$c;)V

    .line 175
    iget-object p1, p0, Lcom/coloros/settings/feature/password/ColorChooseLockPatternFragment$1;->a:Lcom/coloros/settings/feature/password/ColorChooseLockPatternFragment;

    invoke-static {p1}, Lcom/coloros/settings/feature/password/ColorChooseLockPatternFragment;->g(Lcom/coloros/settings/feature/password/ColorChooseLockPatternFragment;)Landroid/widget/TextView;

    move-result-object p1

    const v0, 0x7f120fba

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 177
    iget-object p1, p0, Lcom/coloros/settings/feature/password/ColorChooseLockPatternFragment$1;->a:Lcom/coloros/settings/feature/password/ColorChooseLockPatternFragment;

    invoke-static {p1}, Lcom/coloros/settings/feature/password/ColorChooseLockPatternFragment;->b(Lcom/coloros/settings/feature/password/ColorChooseLockPatternFragment;)Lcom/color/support/widget/ColorLockPatternView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/color/support/widget/ColorLockPatternView;->clearPattern()V

    .line 178
    iget-object p1, p0, Lcom/coloros/settings/feature/password/ColorChooseLockPatternFragment$1;->a:Lcom/coloros/settings/feature/password/ColorChooseLockPatternFragment;

    invoke-static {p1}, Lcom/coloros/settings/feature/password/ColorChooseLockPatternFragment;->h(Lcom/coloros/settings/feature/password/ColorChooseLockPatternFragment;)F

    move-result p1

    const/4 v0, 0x2

    new-array v1, v0, [Landroid/view/View;

    iget-object v4, p0, Lcom/coloros/settings/feature/password/ColorChooseLockPatternFragment$1;->a:Lcom/coloros/settings/feature/password/ColorChooseLockPatternFragment;

    .line 179
    invoke-static {v4}, Lcom/coloros/settings/feature/password/ColorChooseLockPatternFragment;->i(Lcom/coloros/settings/feature/password/ColorChooseLockPatternFragment;)Lcom/color/support/widget/ColorLockPatternView;

    move-result-object v4

    aput-object v4, v1, v3

    iget-object v4, p0, Lcom/coloros/settings/feature/password/ColorChooseLockPatternFragment$1;->a:Lcom/coloros/settings/feature/password/ColorChooseLockPatternFragment;

    invoke-static {v4}, Lcom/coloros/settings/feature/password/ColorChooseLockPatternFragment;->j(Lcom/coloros/settings/feature/password/ColorChooseLockPatternFragment;)Landroid/widget/TextView;

    move-result-object v4

    aput-object v4, v1, v2

    .line 178
    invoke-static {p1, v3, v3, v2, v1}, Lcom/coloros/settings/utils/ag;->a(FZZZ[Landroid/view/View;)V

    .line 180
    iget-object p1, p0, Lcom/coloros/settings/feature/password/ColorChooseLockPatternFragment$1;->a:Lcom/coloros/settings/feature/password/ColorChooseLockPatternFragment;

    invoke-virtual {p1}, Lcom/coloros/settings/feature/password/ColorChooseLockPatternFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    new-array v1, v2, [Landroid/view/View;

    iget-object v4, p0, Lcom/coloros/settings/feature/password/ColorChooseLockPatternFragment$1;->a:Lcom/coloros/settings/feature/password/ColorChooseLockPatternFragment;

    invoke-static {v4}, Lcom/coloros/settings/feature/password/ColorChooseLockPatternFragment;->k(Lcom/coloros/settings/feature/password/ColorChooseLockPatternFragment;)Landroid/widget/TextView;

    move-result-object v4

    aput-object v4, v1, v3

    invoke-static {p1, v3, v1}, Lcom/coloros/settings/utils/ag;->a(Landroid/content/Context;Z[Landroid/view/View;)V

    .line 181
    iget-object p1, p0, Lcom/coloros/settings/feature/password/ColorChooseLockPatternFragment$1;->a:Lcom/coloros/settings/feature/password/ColorChooseLockPatternFragment;

    invoke-static {p1}, Lcom/coloros/settings/feature/password/ColorChooseLockPatternFragment;->h(Lcom/coloros/settings/feature/password/ColorChooseLockPatternFragment;)F

    move-result p1

    const/4 v1, 0x3

    new-array v1, v1, [Landroid/view/View;

    iget-object v4, p0, Lcom/coloros/settings/feature/password/ColorChooseLockPatternFragment$1;->a:Lcom/coloros/settings/feature/password/ColorChooseLockPatternFragment;

    .line 182
    invoke-static {v4}, Lcom/coloros/settings/feature/password/ColorChooseLockPatternFragment;->b(Lcom/coloros/settings/feature/password/ColorChooseLockPatternFragment;)Lcom/color/support/widget/ColorLockPatternView;

    move-result-object v4

    aput-object v4, v1, v3

    iget-object v4, p0, Lcom/coloros/settings/feature/password/ColorChooseLockPatternFragment$1;->a:Lcom/coloros/settings/feature/password/ColorChooseLockPatternFragment;

    invoke-static {v4}, Lcom/coloros/settings/feature/password/ColorChooseLockPatternFragment;->g(Lcom/coloros/settings/feature/password/ColorChooseLockPatternFragment;)Landroid/widget/TextView;

    move-result-object v4

    aput-object v4, v1, v2

    iget-object v4, p0, Lcom/coloros/settings/feature/password/ColorChooseLockPatternFragment$1;->a:Lcom/coloros/settings/feature/password/ColorChooseLockPatternFragment;

    invoke-static {v4}, Lcom/coloros/settings/feature/password/ColorChooseLockPatternFragment;->l(Lcom/coloros/settings/feature/password/ColorChooseLockPatternFragment;)Landroid/widget/TextView;

    move-result-object v4

    aput-object v4, v1, v0

    .line 181
    invoke-static {p1, v3, v2, v3, v1}, Lcom/coloros/settings/utils/ag;->a(FZZZ[Landroid/view/View;)V

    .line 183
    iget-object p1, p0, Lcom/coloros/settings/feature/password/ColorChooseLockPatternFragment$1;->a:Lcom/coloros/settings/feature/password/ColorChooseLockPatternFragment;

    invoke-virtual {p1}, Lcom/coloros/settings/feature/password/ColorChooseLockPatternFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    new-array v0, v2, [Landroid/view/View;

    iget-object v1, p0, Lcom/coloros/settings/feature/password/ColorChooseLockPatternFragment$1;->a:Lcom/coloros/settings/feature/password/ColorChooseLockPatternFragment;

    invoke-static {v1}, Lcom/coloros/settings/feature/password/ColorChooseLockPatternFragment;->m(Lcom/coloros/settings/feature/password/ColorChooseLockPatternFragment;)Landroid/widget/TextView;

    move-result-object v1

    aput-object v1, v0, v3

    invoke-static {p1, v2, v0}, Lcom/coloros/settings/utils/ag;->a(Landroid/content/Context;Z[Landroid/view/View;)V

    return-void

    .line 163
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "null chosen pattern in stage \'need to confirm"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 186
    :cond_2
    iget-object v0, p0, Lcom/coloros/settings/feature/password/ColorChooseLockPatternFragment$1;->a:Lcom/coloros/settings/feature/password/ColorChooseLockPatternFragment;

    invoke-static {v0}, Lcom/coloros/settings/feature/password/ColorChooseLockPatternFragment;->c(Lcom/coloros/settings/feature/password/ColorChooseLockPatternFragment;)Lcom/coloros/settings/feature/password/ColorChooseLockPatternFragment$c;

    move-result-object v0

    sget-object v1, Lcom/coloros/settings/feature/password/ColorChooseLockPatternFragment$c;->a:Lcom/coloros/settings/feature/password/ColorChooseLockPatternFragment$c;

    if-eq v0, v1, :cond_4

    iget-object v0, p0, Lcom/coloros/settings/feature/password/ColorChooseLockPatternFragment$1;->a:Lcom/coloros/settings/feature/password/ColorChooseLockPatternFragment;

    invoke-static {v0}, Lcom/coloros/settings/feature/password/ColorChooseLockPatternFragment;->c(Lcom/coloros/settings/feature/password/ColorChooseLockPatternFragment;)Lcom/coloros/settings/feature/password/ColorChooseLockPatternFragment$c;

    move-result-object v0

    sget-object v1, Lcom/coloros/settings/feature/password/ColorChooseLockPatternFragment$c;->b:Lcom/coloros/settings/feature/password/ColorChooseLockPatternFragment$c;

    if-eq v0, v1, :cond_4

    iget-object v0, p0, Lcom/coloros/settings/feature/password/ColorChooseLockPatternFragment$1;->a:Lcom/coloros/settings/feature/password/ColorChooseLockPatternFragment;

    .line 187
    invoke-static {v0}, Lcom/coloros/settings/feature/password/ColorChooseLockPatternFragment;->c(Lcom/coloros/settings/feature/password/ColorChooseLockPatternFragment;)Lcom/coloros/settings/feature/password/ColorChooseLockPatternFragment$c;

    move-result-object v0

    sget-object v1, Lcom/coloros/settings/feature/password/ColorChooseLockPatternFragment$c;->c:Lcom/coloros/settings/feature/password/ColorChooseLockPatternFragment$c;

    if-ne v0, v1, :cond_3

    goto :goto_0

    .line 208
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unexpected stage "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/coloros/settings/feature/password/ColorChooseLockPatternFragment$1;->a:Lcom/coloros/settings/feature/password/ColorChooseLockPatternFragment;

    .line 209
    invoke-static {v1}, Lcom/coloros/settings/feature/password/ColorChooseLockPatternFragment;->c(Lcom/coloros/settings/feature/password/ColorChooseLockPatternFragment;)Lcom/coloros/settings/feature/password/ColorChooseLockPatternFragment$c;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " when entering the pattern."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 188
    :cond_4
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x4

    if-ge v0, v1, :cond_5

    .line 189
    iget-object p1, p0, Lcom/coloros/settings/feature/password/ColorChooseLockPatternFragment$1;->a:Lcom/coloros/settings/feature/password/ColorChooseLockPatternFragment;

    sget-object v0, Lcom/coloros/settings/feature/password/ColorChooseLockPatternFragment$c;->b:Lcom/coloros/settings/feature/password/ColorChooseLockPatternFragment$c;

    invoke-virtual {p1, v0}, Lcom/coloros/settings/feature/password/ColorChooseLockPatternFragment;->a(Lcom/coloros/settings/feature/password/ColorChooseLockPatternFragment$c;)V

    return-void

    .line 190
    :cond_5
    iget-object v0, p0, Lcom/coloros/settings/feature/password/ColorChooseLockPatternFragment$1;->a:Lcom/coloros/settings/feature/password/ColorChooseLockPatternFragment;

    invoke-static {v0, p1}, Lcom/coloros/settings/feature/password/ColorChooseLockPatternFragment;->a(Lcom/coloros/settings/feature/password/ColorChooseLockPatternFragment;Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 191
    iget-object p1, p0, Lcom/coloros/settings/feature/password/ColorChooseLockPatternFragment$1;->a:Lcom/coloros/settings/feature/password/ColorChooseLockPatternFragment;

    sget-object v0, Lcom/coloros/settings/feature/password/ColorChooseLockPatternFragment$c;->c:Lcom/coloros/settings/feature/password/ColorChooseLockPatternFragment$c;

    invoke-virtual {p1, v0}, Lcom/coloros/settings/feature/password/ColorChooseLockPatternFragment;->a(Lcom/coloros/settings/feature/password/ColorChooseLockPatternFragment$c;)V

    return-void

    .line 193
    :cond_6
    iget-object v0, p0, Lcom/coloros/settings/feature/password/ColorChooseLockPatternFragment$1;->a:Lcom/coloros/settings/feature/password/ColorChooseLockPatternFragment;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v0, v1}, Lcom/coloros/settings/feature/password/ColorChooseLockPatternFragment;->b(Lcom/coloros/settings/feature/password/ColorChooseLockPatternFragment;Ljava/util/List;)Ljava/util/List;

    .line 195
    iget-object p1, p0, Lcom/coloros/settings/feature/password/ColorChooseLockPatternFragment$1;->a:Lcom/coloros/settings/feature/password/ColorChooseLockPatternFragment;

    sget-object v0, Lcom/coloros/settings/feature/password/ColorChooseLockPatternFragment$c;->d:Lcom/coloros/settings/feature/password/ColorChooseLockPatternFragment$c;

    invoke-virtual {p1, v0}, Lcom/coloros/settings/feature/password/ColorChooseLockPatternFragment;->a(Lcom/coloros/settings/feature/password/ColorChooseLockPatternFragment$c;)V

    .line 197
    iget-object p1, p0, Lcom/coloros/settings/feature/password/ColorChooseLockPatternFragment$1;->a:Lcom/coloros/settings/feature/password/ColorChooseLockPatternFragment;

    invoke-static {p1}, Lcom/coloros/settings/feature/password/ColorChooseLockPatternFragment;->h(Lcom/coloros/settings/feature/password/ColorChooseLockPatternFragment;)F

    move-result p1

    new-array v0, v2, [Landroid/view/View;

    iget-object v1, p0, Lcom/coloros/settings/feature/password/ColorChooseLockPatternFragment$1;->a:Lcom/coloros/settings/feature/password/ColorChooseLockPatternFragment;

    .line 198
    invoke-static {v1}, Lcom/coloros/settings/feature/password/ColorChooseLockPatternFragment;->i(Lcom/coloros/settings/feature/password/ColorChooseLockPatternFragment;)Lcom/color/support/widget/ColorLockPatternView;

    move-result-object v1

    aput-object v1, v0, v3

    .line 197
    invoke-static {p1, v2, v3, v2, v0}, Lcom/coloros/settings/utils/ag;->a(FZZZ[Landroid/view/View;)V

    .line 199
    iget-object p1, p0, Lcom/coloros/settings/feature/password/ColorChooseLockPatternFragment$1;->a:Lcom/coloros/settings/feature/password/ColorChooseLockPatternFragment;

    invoke-static {p1}, Lcom/coloros/settings/feature/password/ColorChooseLockPatternFragment;->h(Lcom/coloros/settings/feature/password/ColorChooseLockPatternFragment;)F

    move-result v4

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x4

    new-array v9, v2, [Landroid/view/View;

    iget-object p1, p0, Lcom/coloros/settings/feature/password/ColorChooseLockPatternFragment$1;->a:Lcom/coloros/settings/feature/password/ColorChooseLockPatternFragment;

    .line 200
    invoke-static {p1}, Lcom/coloros/settings/feature/password/ColorChooseLockPatternFragment;->l(Lcom/coloros/settings/feature/password/ColorChooseLockPatternFragment;)Landroid/widget/TextView;

    move-result-object p1

    aput-object p1, v9, v3

    .line 199
    invoke-static/range {v4 .. v9}, Lcom/coloros/settings/utils/ag;->a(FZZZI[Landroid/view/View;)V

    .line 201
    iget-object p1, p0, Lcom/coloros/settings/feature/password/ColorChooseLockPatternFragment$1;->a:Lcom/coloros/settings/feature/password/ColorChooseLockPatternFragment;

    invoke-virtual {p1}, Lcom/coloros/settings/feature/password/ColorChooseLockPatternFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    new-array v0, v2, [Landroid/view/View;

    iget-object v1, p0, Lcom/coloros/settings/feature/password/ColorChooseLockPatternFragment$1;->a:Lcom/coloros/settings/feature/password/ColorChooseLockPatternFragment;

    invoke-static {v1}, Lcom/coloros/settings/feature/password/ColorChooseLockPatternFragment;->k(Lcom/coloros/settings/feature/password/ColorChooseLockPatternFragment;)Landroid/widget/TextView;

    move-result-object v1

    aput-object v1, v0, v3

    invoke-static {p1, v3, v0}, Lcom/coloros/settings/utils/ag;->a(Landroid/content/Context;Z[Landroid/view/View;)V

    .line 202
    iget-object p1, p0, Lcom/coloros/settings/feature/password/ColorChooseLockPatternFragment$1;->a:Lcom/coloros/settings/feature/password/ColorChooseLockPatternFragment;

    invoke-static {p1}, Lcom/coloros/settings/feature/password/ColorChooseLockPatternFragment;->h(Lcom/coloros/settings/feature/password/ColorChooseLockPatternFragment;)F

    move-result p1

    new-array v0, v2, [Landroid/view/View;

    iget-object v1, p0, Lcom/coloros/settings/feature/password/ColorChooseLockPatternFragment$1;->a:Lcom/coloros/settings/feature/password/ColorChooseLockPatternFragment;

    .line 203
    invoke-static {v1}, Lcom/coloros/settings/feature/password/ColorChooseLockPatternFragment;->b(Lcom/coloros/settings/feature/password/ColorChooseLockPatternFragment;)Lcom/color/support/widget/ColorLockPatternView;

    move-result-object v1

    aput-object v1, v0, v3

    .line 202
    invoke-static {p1, v2, v2, v3, v0}, Lcom/coloros/settings/utils/ag;->a(FZZZ[Landroid/view/View;)V

    .line 204
    iget-object p1, p0, Lcom/coloros/settings/feature/password/ColorChooseLockPatternFragment$1;->a:Lcom/coloros/settings/feature/password/ColorChooseLockPatternFragment;

    invoke-virtual {p1}, Lcom/coloros/settings/feature/password/ColorChooseLockPatternFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    new-array v0, v2, [Landroid/view/View;

    iget-object v1, p0, Lcom/coloros/settings/feature/password/ColorChooseLockPatternFragment$1;->a:Lcom/coloros/settings/feature/password/ColorChooseLockPatternFragment;

    invoke-static {v1}, Lcom/coloros/settings/feature/password/ColorChooseLockPatternFragment;->m(Lcom/coloros/settings/feature/password/ColorChooseLockPatternFragment;)Landroid/widget/TextView;

    move-result-object v1

    aput-object v1, v0, v3

    invoke-static {p1, v2, v0}, Lcom/coloros/settings/utils/ag;->a(Landroid/content/Context;Z[Landroid/view/View;)V

    return-void
.end method

.method public final onPatternStart()V
    .locals 2

    .line 150
    iget-object v0, p0, Lcom/coloros/settings/feature/password/ColorChooseLockPatternFragment$1;->a:Lcom/coloros/settings/feature/password/ColorChooseLockPatternFragment;

    invoke-static {v0}, Lcom/coloros/settings/feature/password/ColorChooseLockPatternFragment;->b(Lcom/coloros/settings/feature/password/ColorChooseLockPatternFragment;)Lcom/color/support/widget/ColorLockPatternView;

    move-result-object v0

    iget-object v1, p0, Lcom/coloros/settings/feature/password/ColorChooseLockPatternFragment$1;->a:Lcom/coloros/settings/feature/password/ColorChooseLockPatternFragment;

    invoke-static {v1}, Lcom/coloros/settings/feature/password/ColorChooseLockPatternFragment;->a(Lcom/coloros/settings/feature/password/ColorChooseLockPatternFragment;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/color/support/widget/ColorLockPatternView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1219
    iget-object v0, p0, Lcom/coloros/settings/feature/password/ColorChooseLockPatternFragment$1;->a:Lcom/coloros/settings/feature/password/ColorChooseLockPatternFragment;

    invoke-static {v0}, Lcom/coloros/settings/feature/password/ColorChooseLockPatternFragment;->m(Lcom/coloros/settings/feature/password/ColorChooseLockPatternFragment;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f120cde

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 1221
    iget-object v0, p0, Lcom/coloros/settings/feature/password/ColorChooseLockPatternFragment$1;->a:Lcom/coloros/settings/feature/password/ColorChooseLockPatternFragment;

    invoke-static {v0}, Lcom/coloros/settings/feature/password/ColorChooseLockPatternFragment;->g(Lcom/coloros/settings/feature/password/ColorChooseLockPatternFragment;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method
