.class final Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$1;
.super Ljava/lang/Object;
.source "ChooseLockPattern.java"

# interfaces
.implements Lcom/android/internal/widget/LockPatternView$OnPatternListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;)V
    .locals 0

    .line 318
    iput-object p1, p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$1;->a:Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;

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
            "Lcom/android/internal/widget/LockPatternView$Cell;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public final onPatternCleared()V
    .locals 2

    .line 326
    iget-object v0, p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$1;->a:Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;

    iget-object v0, v0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->d:Lcom/android/internal/widget/LockPatternView;

    iget-object v1, p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$1;->a:Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;

    invoke-static {v1}, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->a(Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternView;->removeCallbacks(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final onPatternDetected(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/internal/widget/LockPatternView$Cell;",
            ">;)V"
        }
    .end annotation

    .line 330
    iget-object v0, p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$1;->a:Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;

    invoke-static {v0}, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->b(Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;)Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$c;

    move-result-object v0

    sget-object v1, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$c;->e:Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$c;

    if-eq v0, v1, :cond_4

    iget-object v0, p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$1;->a:Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;

    invoke-static {v0}, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->b(Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;)Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$c;

    move-result-object v0

    sget-object v1, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$c;->f:Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$c;

    if-ne v0, v1, :cond_0

    goto :goto_1

    .line 338
    :cond_0
    iget-object v0, p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$1;->a:Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;

    invoke-static {v0}, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->b(Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;)Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$c;

    move-result-object v0

    sget-object v1, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$c;->a:Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$c;

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$1;->a:Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;

    invoke-static {v0}, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->b(Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;)Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$c;

    move-result-object v0

    sget-object v1, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$c;->c:Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$c;

    if-ne v0, v1, :cond_1

    goto :goto_0

    .line 346
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unexpected stage "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$1;->a:Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;

    invoke-static {v1}, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->b(Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;)Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$c;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " when entering the pattern."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 339
    :cond_2
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x4

    if-ge v0, v1, :cond_3

    .line 340
    iget-object p1, p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$1;->a:Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;

    sget-object v0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$c;->c:Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$c;

    invoke-virtual {p1, v0}, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->a(Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$c;)V

    return-void

    .line 342
    :cond_3
    iget-object v0, p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$1;->a:Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, v0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->g:Ljava/util/List;

    .line 343
    iget-object p1, p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$1;->a:Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;

    sget-object v0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$c;->d:Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$c;

    invoke-virtual {p1, v0}, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->a(Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$c;)V

    return-void

    .line 331
    :cond_4
    :goto_1
    iget-object v0, p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$1;->a:Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;

    iget-object v0, v0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->g:Ljava/util/List;

    if-eqz v0, :cond_6

    .line 333
    iget-object v0, p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$1;->a:Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;

    iget-object v0, v0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->g:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 334
    iget-object p1, p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$1;->a:Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;

    sget-object v0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$c;->g:Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$c;

    invoke-virtual {p1, v0}, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->a(Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$c;)V

    return-void

    .line 336
    :cond_5
    iget-object p1, p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$1;->a:Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;

    sget-object v0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$c;->f:Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$c;

    invoke-virtual {p1, v0}, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->a(Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$c;)V

    return-void

    .line 331
    :cond_6
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "null chosen pattern in stage \'need to confirm"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final onPatternStart()V
    .locals 2

    .line 321
    iget-object v0, p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$1;->a:Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;

    iget-object v0, v0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->d:Lcom/android/internal/widget/LockPatternView;

    iget-object v1, p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$1;->a:Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;

    invoke-static {v1}, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->a(Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1356
    iget-object v0, p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$1;->a:Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;

    iget-object v0, v0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->b:Landroid/widget/TextView;

    const v1, 0x7f120cde

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 1357
    iget-object v0, p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$1;->a:Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;

    invoke-static {v0}, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->c(Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;)Landroid/content/res/ColorStateList;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1358
    iget-object v0, p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$1;->a:Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;

    iget-object v0, v0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->b:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$1;->a:Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;

    invoke-static {v1}, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->c(Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 1360
    :cond_0
    iget-object v0, p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$1;->a:Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;

    iget-object v0, v0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->e:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1361
    iget-object v0, p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$1;->a:Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;

    invoke-static {v0}, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->d(Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;)Lcom/google/android/setupcompat/template/FooterButton;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/setupcompat/template/FooterButton;->a(Z)V

    .line 1363
    iget-object v0, p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$1;->a:Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;

    invoke-static {v0}, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->e(Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;)Landroid/widget/ScrollView;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1364
    iget-object v0, p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$1;->a:Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;

    invoke-static {v0}, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->e(Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;)Landroid/widget/ScrollView;

    move-result-object v0

    new-instance v1, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$1$1;

    invoke-direct {v1, p0}, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$1$1;-><init>(Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$1;)V

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->post(Ljava/lang/Runnable;)Z

    :cond_1
    return-void
.end method
