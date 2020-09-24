.class final Lcom/coloros/settings/privacy/ConfirmPatternPrivacy$2;
.super Ljava/lang/Object;
.source "ConfirmPatternPrivacy.java"

# interfaces
.implements Lcom/color/support/widget/ColorLockPatternView$OnPatternListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/settings/privacy/ConfirmPatternPrivacy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/coloros/settings/privacy/ConfirmPatternPrivacy;


# direct methods
.method constructor <init>(Lcom/coloros/settings/privacy/ConfirmPatternPrivacy;)V
    .locals 0

    .line 43
    iput-object p1, p0, Lcom/coloros/settings/privacy/ConfirmPatternPrivacy$2;->a:Lcom/coloros/settings/privacy/ConfirmPatternPrivacy;

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

    .line 50
    iget-object v0, p0, Lcom/coloros/settings/privacy/ConfirmPatternPrivacy$2;->a:Lcom/coloros/settings/privacy/ConfirmPatternPrivacy;

    invoke-static {v0}, Lcom/coloros/settings/privacy/ConfirmPatternPrivacy;->a(Lcom/coloros/settings/privacy/ConfirmPatternPrivacy;)Lcom/color/support/widget/ColorLockPatternView;

    move-result-object v0

    iget-object v1, p0, Lcom/coloros/settings/privacy/ConfirmPatternPrivacy$2;->a:Lcom/coloros/settings/privacy/ConfirmPatternPrivacy;

    invoke-static {v1}, Lcom/coloros/settings/privacy/ConfirmPatternPrivacy;->b(Lcom/coloros/settings/privacy/ConfirmPatternPrivacy;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/color/support/widget/ColorLockPatternView;->removeCallbacks(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final onPatternDetected(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/color/support/widget/ColorLockPatternView$Cell;",
            ">;)V"
        }
    .end annotation

    .line 59
    iget-object v0, p0, Lcom/coloros/settings/privacy/ConfirmPatternPrivacy$2;->a:Lcom/coloros/settings/privacy/ConfirmPatternPrivacy;

    invoke-static {v0}, Lcom/coloros/settings/privacy/ConfirmPatternPrivacy;->a(Lcom/coloros/settings/privacy/ConfirmPatternPrivacy;)Lcom/color/support/widget/ColorLockPatternView;

    move-result-object v0

    sget-object v1, Lcom/color/support/widget/ColorLockPatternView$DisplayMode;->Correct:Lcom/color/support/widget/ColorLockPatternView$DisplayMode;

    invoke-virtual {v0, v1}, Lcom/color/support/widget/ColorLockPatternView;->setDisplayMode(Lcom/color/support/widget/ColorLockPatternView$DisplayMode;)V

    .line 60
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    .line 61
    iget-object p1, p0, Lcom/coloros/settings/privacy/ConfirmPatternPrivacy$2;->a:Lcom/coloros/settings/privacy/ConfirmPatternPrivacy;

    invoke-static {p1}, Lcom/coloros/settings/privacy/ConfirmPatternPrivacy;->a(Lcom/coloros/settings/privacy/ConfirmPatternPrivacy;)Lcom/color/support/widget/ColorLockPatternView;

    move-result-object p1

    sget-object v0, Lcom/color/support/widget/ColorLockPatternView$DisplayMode;->Wrong:Lcom/color/support/widget/ColorLockPatternView$DisplayMode;

    invoke-virtual {p1, v0}, Lcom/color/support/widget/ColorLockPatternView;->setDisplayMode(Lcom/color/support/widget/ColorLockPatternView$DisplayMode;)V

    .line 62
    iget-object p1, p0, Lcom/coloros/settings/privacy/ConfirmPatternPrivacy$2;->a:Lcom/coloros/settings/privacy/ConfirmPatternPrivacy;

    invoke-static {p1}, Lcom/coloros/settings/privacy/ConfirmPatternPrivacy;->c(Lcom/coloros/settings/privacy/ConfirmPatternPrivacy;)V

    .line 63
    iget-object p1, p0, Lcom/coloros/settings/privacy/ConfirmPatternPrivacy$2;->a:Lcom/coloros/settings/privacy/ConfirmPatternPrivacy;

    iget-object p1, p1, Lcom/coloros/settings/privacy/ConfirmPatternPrivacy;->b:Landroid/widget/TextView;

    const-string v0, ""

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    .line 65
    :cond_0
    iget-object v0, p0, Lcom/coloros/settings/privacy/ConfirmPatternPrivacy$2;->a:Lcom/coloros/settings/privacy/ConfirmPatternPrivacy;

    invoke-static {p1}, Lcom/coloros/settings/privacy/ConfirmPatternPrivacy;->a(Ljava/util/List;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/coloros/settings/privacy/ConfirmPatternPrivacy;->a(Ljava/lang/String;)V

    return-void
.end method

.method public final onPatternStart()V
    .locals 2

    .line 46
    iget-object v0, p0, Lcom/coloros/settings/privacy/ConfirmPatternPrivacy$2;->a:Lcom/coloros/settings/privacy/ConfirmPatternPrivacy;

    invoke-static {v0}, Lcom/coloros/settings/privacy/ConfirmPatternPrivacy;->a(Lcom/coloros/settings/privacy/ConfirmPatternPrivacy;)Lcom/color/support/widget/ColorLockPatternView;

    move-result-object v0

    iget-object v1, p0, Lcom/coloros/settings/privacy/ConfirmPatternPrivacy$2;->a:Lcom/coloros/settings/privacy/ConfirmPatternPrivacy;

    invoke-static {v1}, Lcom/coloros/settings/privacy/ConfirmPatternPrivacy;->b(Lcom/coloros/settings/privacy/ConfirmPatternPrivacy;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/color/support/widget/ColorLockPatternView;->removeCallbacks(Ljava/lang/Runnable;)Z

    return-void
.end method
