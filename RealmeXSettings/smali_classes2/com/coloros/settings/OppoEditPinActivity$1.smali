.class final Lcom/coloros/settings/OppoEditPinActivity$1;
.super Ljava/lang/Object;
.source "OppoEditPinActivity.java"

# interfaces
.implements Lcom/color/support/widget/ColorNumericKeyboard$OnClickItemListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/settings/OppoEditPinActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/coloros/settings/OppoEditPinActivity;


# direct methods
.method constructor <init>(Lcom/coloros/settings/OppoEditPinActivity;)V
    .locals 0

    .line 76
    iput-object p1, p0, Lcom/coloros/settings/OppoEditPinActivity$1;->a:Lcom/coloros/settings/OppoEditPinActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClickLeft()V
    .locals 0

    return-void
.end method

.method public final onClickNumber(I)V
    .locals 1

    .line 80
    iget-object v0, p0, Lcom/coloros/settings/OppoEditPinActivity$1;->a:Lcom/coloros/settings/OppoEditPinActivity;

    invoke-static {v0}, Lcom/coloros/settings/OppoEditPinActivity;->a(Lcom/coloros/settings/OppoEditPinActivity;)Lcom/color/support/widget/ColorNumericKeyboard;

    move-result-object v0

    add-int/lit8 p1, p1, 0x7

    invoke-static {v0, p1}, Lcom/coloros/settings/utils/al;->a(Landroid/view/View;I)V

    return-void
.end method

.method public final onClickRight()V
    .locals 2

    .line 90
    iget-object v0, p0, Lcom/coloros/settings/OppoEditPinActivity$1;->a:Lcom/coloros/settings/OppoEditPinActivity;

    invoke-static {v0}, Lcom/coloros/settings/OppoEditPinActivity;->a(Lcom/coloros/settings/OppoEditPinActivity;)Lcom/color/support/widget/ColorNumericKeyboard;

    move-result-object v0

    const/16 v1, 0x43

    invoke-static {v0, v1}, Lcom/coloros/settings/utils/al;->a(Landroid/view/View;I)V

    return-void
.end method
