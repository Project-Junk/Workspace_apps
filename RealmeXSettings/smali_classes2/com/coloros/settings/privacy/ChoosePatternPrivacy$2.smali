.class final Lcom/coloros/settings/privacy/ChoosePatternPrivacy$2;
.super Ljava/lang/Object;
.source "ChoosePatternPrivacy.java"

# interfaces
.implements Lcom/color/support/widget/ColorLockPatternView$OnPatternListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/settings/privacy/ChoosePatternPrivacy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/coloros/settings/privacy/ChoosePatternPrivacy;


# direct methods
.method constructor <init>(Lcom/coloros/settings/privacy/ChoosePatternPrivacy;)V
    .locals 0

    .line 57
    iput-object p1, p0, Lcom/coloros/settings/privacy/ChoosePatternPrivacy$2;->a:Lcom/coloros/settings/privacy/ChoosePatternPrivacy;

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

    .line 72
    iget-object v0, p0, Lcom/coloros/settings/privacy/ChoosePatternPrivacy$2;->a:Lcom/coloros/settings/privacy/ChoosePatternPrivacy;

    invoke-static {v0}, Lcom/coloros/settings/privacy/ChoosePatternPrivacy;->a(Lcom/coloros/settings/privacy/ChoosePatternPrivacy;)Lcom/color/support/widget/ColorLockPatternView;

    move-result-object v0

    iget-object v1, p0, Lcom/coloros/settings/privacy/ChoosePatternPrivacy$2;->a:Lcom/coloros/settings/privacy/ChoosePatternPrivacy;

    invoke-static {v1}, Lcom/coloros/settings/privacy/ChoosePatternPrivacy;->b(Lcom/coloros/settings/privacy/ChoosePatternPrivacy;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/color/support/widget/ColorLockPatternView;->removeCallbacks(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final onPatternDetected(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/color/support/widget/ColorLockPatternView$Cell;",
            ">;)V"
        }
    .end annotation

    .line 77
    iget-object v0, p0, Lcom/coloros/settings/privacy/ChoosePatternPrivacy$2;->a:Lcom/coloros/settings/privacy/ChoosePatternPrivacy;

    iget v0, v0, Lcom/coloros/settings/privacy/ChoosePatternPrivacy;->d:I

    const/4 v1, 0x5

    const/4 v2, 0x0

    const/4 v3, 0x4

    const/4 v4, 0x3

    if-ne v0, v4, :cond_2

    .line 78
    iget-object v0, p0, Lcom/coloros/settings/privacy/ChoosePatternPrivacy$2;->a:Lcom/coloros/settings/privacy/ChoosePatternPrivacy;

    invoke-static {v0}, Lcom/coloros/settings/privacy/ChoosePatternPrivacy;->c(Lcom/coloros/settings/privacy/ChoosePatternPrivacy;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 82
    iget-object v0, p0, Lcom/coloros/settings/privacy/ChoosePatternPrivacy$2;->a:Lcom/coloros/settings/privacy/ChoosePatternPrivacy;

    invoke-static {v0}, Lcom/coloros/settings/privacy/ChoosePatternPrivacy;->c(Lcom/coloros/settings/privacy/ChoosePatternPrivacy;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 83
    iget-object v0, p0, Lcom/coloros/settings/privacy/ChoosePatternPrivacy$2;->a:Lcom/coloros/settings/privacy/ChoosePatternPrivacy;

    invoke-static {p1}, Lcom/coloros/settings/privacy/ChoosePatternPrivacy;->a(Ljava/util/List;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/coloros/settings/privacy/ChoosePatternPrivacy;->e:Ljava/lang/String;

    .line 84
    iget-object p1, p0, Lcom/coloros/settings/privacy/ChoosePatternPrivacy$2;->a:Lcom/coloros/settings/privacy/ChoosePatternPrivacy;

    iget-object v0, p1, Lcom/coloros/settings/privacy/ChoosePatternPrivacy;->e:Ljava/lang/String;

    invoke-virtual {p1, v1, v0}, Lcom/coloros/settings/privacy/ChoosePatternPrivacy;->a(ILjava/lang/String;)V

    return-void

    .line 86
    :cond_0
    iget-object p1, p0, Lcom/coloros/settings/privacy/ChoosePatternPrivacy$2;->a:Lcom/coloros/settings/privacy/ChoosePatternPrivacy;

    invoke-virtual {p1, v3, v2}, Lcom/coloros/settings/privacy/ChoosePatternPrivacy;->a(ILjava/lang/String;)V

    return-void

    .line 79
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "null chosen pattern in stage \'need to confirm"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 88
    :cond_2
    iget-object v0, p0, Lcom/coloros/settings/privacy/ChoosePatternPrivacy$2;->a:Lcom/coloros/settings/privacy/ChoosePatternPrivacy;

    iget v0, v0, Lcom/coloros/settings/privacy/ChoosePatternPrivacy;->d:I

    const/4 v4, 0x1

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/coloros/settings/privacy/ChoosePatternPrivacy$2;->a:Lcom/coloros/settings/privacy/ChoosePatternPrivacy;

    iget v0, v0, Lcom/coloros/settings/privacy/ChoosePatternPrivacy;->d:I

    if-eq v0, v4, :cond_5

    iget-object v0, p0, Lcom/coloros/settings/privacy/ChoosePatternPrivacy$2;->a:Lcom/coloros/settings/privacy/ChoosePatternPrivacy;

    iget v0, v0, Lcom/coloros/settings/privacy/ChoosePatternPrivacy;->d:I

    if-eq v0, v3, :cond_5

    iget-object v0, p0, Lcom/coloros/settings/privacy/ChoosePatternPrivacy$2;->a:Lcom/coloros/settings/privacy/ChoosePatternPrivacy;

    iget v0, v0, Lcom/coloros/settings/privacy/ChoosePatternPrivacy;->d:I

    const/4 v5, 0x2

    if-ne v0, v5, :cond_3

    goto :goto_0

    .line 96
    :cond_3
    iget-object p1, p0, Lcom/coloros/settings/privacy/ChoosePatternPrivacy$2;->a:Lcom/coloros/settings/privacy/ChoosePatternPrivacy;

    iget p1, p1, Lcom/coloros/settings/privacy/ChoosePatternPrivacy;->d:I

    if-ne p1, v1, :cond_4

    return-void

    .line 99
    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unexpected mChooseState "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/coloros/settings/privacy/ChoosePatternPrivacy$2;->a:Lcom/coloros/settings/privacy/ChoosePatternPrivacy;

    iget v1, v1, Lcom/coloros/settings/privacy/ChoosePatternPrivacy;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " when entering the pattern."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 90
    :cond_5
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v0, v3, :cond_6

    .line 91
    iget-object p1, p0, Lcom/coloros/settings/privacy/ChoosePatternPrivacy$2;->a:Lcom/coloros/settings/privacy/ChoosePatternPrivacy;

    invoke-virtual {p1, v4, v2}, Lcom/coloros/settings/privacy/ChoosePatternPrivacy;->a(ILjava/lang/String;)V

    return-void

    .line 93
    :cond_6
    iget-object v0, p0, Lcom/coloros/settings/privacy/ChoosePatternPrivacy$2;->a:Lcom/coloros/settings/privacy/ChoosePatternPrivacy;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v0, v1}, Lcom/coloros/settings/privacy/ChoosePatternPrivacy;->a(Lcom/coloros/settings/privacy/ChoosePatternPrivacy;Ljava/util/List;)Ljava/util/List;

    .line 94
    iget-object p1, p0, Lcom/coloros/settings/privacy/ChoosePatternPrivacy$2;->a:Lcom/coloros/settings/privacy/ChoosePatternPrivacy;

    invoke-static {p1}, Lcom/coloros/settings/privacy/ChoosePatternPrivacy;->c(Lcom/coloros/settings/privacy/ChoosePatternPrivacy;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/coloros/settings/privacy/ChoosePatternPrivacy;->a(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/coloros/settings/privacy/ChoosePatternPrivacy;->a(Ljava/lang/String;)V

    return-void
.end method

.method public final onPatternStart()V
    .locals 2

    .line 61
    iget-object v0, p0, Lcom/coloros/settings/privacy/ChoosePatternPrivacy$2;->a:Lcom/coloros/settings/privacy/ChoosePatternPrivacy;

    invoke-static {v0}, Lcom/coloros/settings/privacy/ChoosePatternPrivacy;->a(Lcom/coloros/settings/privacy/ChoosePatternPrivacy;)Lcom/color/support/widget/ColorLockPatternView;

    move-result-object v0

    iget-object v1, p0, Lcom/coloros/settings/privacy/ChoosePatternPrivacy$2;->a:Lcom/coloros/settings/privacy/ChoosePatternPrivacy;

    invoke-static {v1}, Lcom/coloros/settings/privacy/ChoosePatternPrivacy;->b(Lcom/coloros/settings/privacy/ChoosePatternPrivacy;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/color/support/widget/ColorLockPatternView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1066
    iget-object v0, p0, Lcom/coloros/settings/privacy/ChoosePatternPrivacy$2;->a:Lcom/coloros/settings/privacy/ChoosePatternPrivacy;

    iget-object v0, v0, Lcom/coloros/settings/privacy/ChoosePatternPrivacy;->g:Landroid/widget/TextView;

    const v1, 0x7f120cde

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 1067
    iget-object v0, p0, Lcom/coloros/settings/privacy/ChoosePatternPrivacy$2;->a:Lcom/coloros/settings/privacy/ChoosePatternPrivacy;

    iget-object v0, v0, Lcom/coloros/settings/privacy/ChoosePatternPrivacy;->h:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method
