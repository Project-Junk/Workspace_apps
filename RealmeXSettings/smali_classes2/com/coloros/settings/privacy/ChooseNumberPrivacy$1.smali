.class final Lcom/coloros/settings/privacy/ChooseNumberPrivacy$1;
.super Ljava/lang/Object;
.source "ChooseNumberPrivacy.java"

# interfaces
.implements Lcom/color/support/widget/ColorNumericKeyboard$OnClickItemListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/settings/privacy/ChooseNumberPrivacy;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/coloros/settings/privacy/ChooseNumberPrivacy;


# direct methods
.method constructor <init>(Lcom/coloros/settings/privacy/ChooseNumberPrivacy;)V
    .locals 0

    .line 78
    iput-object p1, p0, Lcom/coloros/settings/privacy/ChooseNumberPrivacy$1;->a:Lcom/coloros/settings/privacy/ChooseNumberPrivacy;

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

    .line 81
    iget-object v0, p0, Lcom/coloros/settings/privacy/ChooseNumberPrivacy$1;->a:Lcom/coloros/settings/privacy/ChooseNumberPrivacy;

    invoke-static {v0}, Lcom/coloros/settings/privacy/ChooseNumberPrivacy;->a(Lcom/coloros/settings/privacy/ChooseNumberPrivacy;)I

    move-result v0

    iget-object v1, p0, Lcom/coloros/settings/privacy/ChooseNumberPrivacy$1;->a:Lcom/coloros/settings/privacy/ChooseNumberPrivacy;

    invoke-static {v1}, Lcom/coloros/settings/privacy/ChooseNumberPrivacy;->b(Lcom/coloros/settings/privacy/ChooseNumberPrivacy;)I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 82
    iget-object v0, p0, Lcom/coloros/settings/privacy/ChooseNumberPrivacy$1;->a:Lcom/coloros/settings/privacy/ChooseNumberPrivacy;

    invoke-virtual {v0, p1}, Lcom/coloros/settings/privacy/ChooseNumberPrivacy;->a(I)V

    :cond_0
    return-void
.end method

.method public final onClickRight()V
    .locals 1

    .line 93
    iget-object v0, p0, Lcom/coloros/settings/privacy/ChooseNumberPrivacy$1;->a:Lcom/coloros/settings/privacy/ChooseNumberPrivacy;

    invoke-static {v0}, Lcom/coloros/settings/privacy/ChooseNumberPrivacy;->c(Lcom/coloros/settings/privacy/ChooseNumberPrivacy;)V

    return-void
.end method
