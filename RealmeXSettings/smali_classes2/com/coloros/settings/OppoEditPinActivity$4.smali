.class final Lcom/coloros/settings/OppoEditPinActivity$4;
.super Ljava/lang/Object;
.source "OppoEditPinActivity.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/settings/OppoEditPinActivity;
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

    .line 208
    iput-object p1, p0, Lcom/coloros/settings/OppoEditPinActivity$4;->a:Lcom/coloros/settings/OppoEditPinActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 1

    const-string p3, "OppoEditPinActivity"

    const/4 v0, 0x6

    if-ne p2, v0, :cond_0

    .line 212
    iget-object p2, p0, Lcom/coloros/settings/OppoEditPinActivity$4;->a:Lcom/coloros/settings/OppoEditPinActivity;

    const/4 v0, -0x1

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, v0, p1}, Lcom/coloros/settings/OppoEditPinActivity;->a(Lcom/coloros/settings/OppoEditPinActivity;ILjava/lang/String;)V

    const-string p1, "onEditorAction done"

    .line 213
    invoke-static {p3, p1}, Lcom/coloros/settings/utils/aa;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    iget-object p1, p0, Lcom/coloros/settings/OppoEditPinActivity$4;->a:Lcom/coloros/settings/OppoEditPinActivity;

    invoke-virtual {p1}, Lcom/coloros/settings/OppoEditPinActivity;->finish()V

    const/4 p1, 0x1

    return p1

    .line 217
    :cond_0
    iget-object p1, p0, Lcom/coloros/settings/OppoEditPinActivity$4;->a:Lcom/coloros/settings/OppoEditPinActivity;

    const/4 p2, 0x0

    const/4 v0, 0x0

    invoke-static {p1, v0, p2}, Lcom/coloros/settings/OppoEditPinActivity;->a(Lcom/coloros/settings/OppoEditPinActivity;ILjava/lang/String;)V

    const-string p1, "onEditorAction"

    .line 218
    invoke-static {p3, p1}, Lcom/coloros/settings/utils/aa;->c(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method
