.class final Lcom/coloros/settings/utils/bn$4;
.super Ljava/lang/Object;
.source "VerificationDialog.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/settings/utils/bn;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/widget/Button;

.field final synthetic b:Lcom/coloros/settings/utils/bn;


# direct methods
.method constructor <init>(Lcom/coloros/settings/utils/bn;Landroid/widget/Button;)V
    .locals 0

    .line 145
    iput-object p1, p0, Lcom/coloros/settings/utils/bn$4;->b:Lcom/coloros/settings/utils/bn;

    iput-object p2, p0, Lcom/coloros/settings/utils/bn$4;->a:Landroid/widget/Button;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final afterTextChanged(Landroid/text/Editable;)V
    .locals 1

    .line 159
    iget-object v0, p0, Lcom/coloros/settings/utils/bn$4;->a:Landroid/widget/Button;

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    return-void
.end method

.method public final beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public final onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method
