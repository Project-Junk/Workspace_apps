.class final Lcom/coloros/settings/feature/password/ConfirmSimplePinFragment$1;
.super Ljava/lang/Object;
.source "ConfirmSimplePinFragment.java"

# interfaces
.implements Lcom/color/support/widget/ColorNumericKeyboard$OnClickItemListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/settings/feature/password/ConfirmSimplePinFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/coloros/settings/feature/password/ConfirmSimplePinFragment;


# direct methods
.method constructor <init>(Lcom/coloros/settings/feature/password/ConfirmSimplePinFragment;)V
    .locals 0

    .line 171
    iput-object p1, p0, Lcom/coloros/settings/feature/password/ConfirmSimplePinFragment$1;->a:Lcom/coloros/settings/feature/password/ConfirmSimplePinFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClickLeft()V
    .locals 0

    return-void
.end method

.method public final onClickNumber(I)V
    .locals 2

    .line 174
    iget-object v0, p0, Lcom/coloros/settings/feature/password/ConfirmSimplePinFragment$1;->a:Lcom/coloros/settings/feature/password/ConfirmSimplePinFragment;

    invoke-static {v0}, Lcom/coloros/settings/feature/password/ConfirmSimplePinFragment;->a(Lcom/coloros/settings/feature/password/ConfirmSimplePinFragment;)I

    move-result v0

    iget-object v1, p0, Lcom/coloros/settings/feature/password/ConfirmSimplePinFragment$1;->a:Lcom/coloros/settings/feature/password/ConfirmSimplePinFragment;

    invoke-static {v1}, Lcom/coloros/settings/feature/password/ConfirmSimplePinFragment;->b(Lcom/coloros/settings/feature/password/ConfirmSimplePinFragment;)I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 175
    iget-object v0, p0, Lcom/coloros/settings/feature/password/ConfirmSimplePinFragment$1;->a:Lcom/coloros/settings/feature/password/ConfirmSimplePinFragment;

    invoke-virtual {v0, p1}, Lcom/coloros/settings/feature/password/ConfirmSimplePinFragment;->d(I)V

    :cond_0
    return-void
.end method

.method public final onClickRight()V
    .locals 1

    .line 186
    iget-object v0, p0, Lcom/coloros/settings/feature/password/ConfirmSimplePinFragment$1;->a:Lcom/coloros/settings/feature/password/ConfirmSimplePinFragment;

    invoke-static {v0}, Lcom/coloros/settings/feature/password/ConfirmSimplePinFragment;->c(Lcom/coloros/settings/feature/password/ConfirmSimplePinFragment;)V

    return-void
.end method
