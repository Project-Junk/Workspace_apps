.class final Lcom/coloros/settings/privacy/ConfirmNumberPrivacy$1;
.super Ljava/lang/Object;
.source "ConfirmNumberPrivacy.java"

# interfaces
.implements Lcom/color/support/widget/ColorNumericKeyboard$OnClickItemListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/settings/privacy/ConfirmNumberPrivacy;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/coloros/settings/privacy/ConfirmNumberPrivacy;


# direct methods
.method constructor <init>(Lcom/coloros/settings/privacy/ConfirmNumberPrivacy;)V
    .locals 0

    .line 70
    iput-object p1, p0, Lcom/coloros/settings/privacy/ConfirmNumberPrivacy$1;->a:Lcom/coloros/settings/privacy/ConfirmNumberPrivacy;

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

    .line 73
    iget-object v0, p0, Lcom/coloros/settings/privacy/ConfirmNumberPrivacy$1;->a:Lcom/coloros/settings/privacy/ConfirmNumberPrivacy;

    invoke-static {v0}, Lcom/coloros/settings/privacy/ConfirmNumberPrivacy;->a(Lcom/coloros/settings/privacy/ConfirmNumberPrivacy;)I

    move-result v0

    iget-object v1, p0, Lcom/coloros/settings/privacy/ConfirmNumberPrivacy$1;->a:Lcom/coloros/settings/privacy/ConfirmNumberPrivacy;

    invoke-static {v1}, Lcom/coloros/settings/privacy/ConfirmNumberPrivacy;->b(Lcom/coloros/settings/privacy/ConfirmNumberPrivacy;)I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 74
    iget-object v0, p0, Lcom/coloros/settings/privacy/ConfirmNumberPrivacy$1;->a:Lcom/coloros/settings/privacy/ConfirmNumberPrivacy;

    invoke-virtual {v0, p1}, Lcom/coloros/settings/privacy/ConfirmNumberPrivacy;->b(I)V

    :cond_0
    return-void
.end method

.method public final onClickRight()V
    .locals 1

    .line 85
    iget-object v0, p0, Lcom/coloros/settings/privacy/ConfirmNumberPrivacy$1;->a:Lcom/coloros/settings/privacy/ConfirmNumberPrivacy;

    invoke-static {v0}, Lcom/coloros/settings/privacy/ConfirmNumberPrivacy;->c(Lcom/coloros/settings/privacy/ConfirmNumberPrivacy;)V

    return-void
.end method
