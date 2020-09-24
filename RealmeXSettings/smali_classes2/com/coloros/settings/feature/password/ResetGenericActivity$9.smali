.class final Lcom/coloros/settings/feature/password/ResetGenericActivity$9;
.super Ljava/lang/Object;
.source "ResetGenericActivity.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/settings/feature/password/ResetGenericActivity;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/coloros/settings/feature/password/ResetGenericActivity;


# direct methods
.method constructor <init>(Lcom/coloros/settings/feature/password/ResetGenericActivity;)V
    .locals 0

    .line 253
    iput-object p1, p0, Lcom/coloros/settings/feature/password/ResetGenericActivity$9;->a:Lcom/coloros/settings/feature/password/ResetGenericActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 p1, 0x1

    const/4 p2, 0x0

    if-eqz p3, :cond_0

    .line 256
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    invoke-static {v0}, Landroid/view/KeyEvent;->isConfirmKey(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 257
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p3

    if-nez p3, :cond_0

    move p3, p1

    goto :goto_0

    :cond_0
    move p3, p2

    :goto_0
    if-eqz p3, :cond_1

    .line 259
    iget-object p2, p0, Lcom/coloros/settings/feature/password/ResetGenericActivity$9;->a:Lcom/coloros/settings/feature/password/ResetGenericActivity;

    invoke-static {p2}, Lcom/coloros/settings/feature/password/ResetGenericActivity;->b(Lcom/coloros/settings/feature/password/ResetGenericActivity;)V

    return p1

    :cond_1
    return p2
.end method
