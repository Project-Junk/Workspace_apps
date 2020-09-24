.class final Lcom/coloros/settings/privacy/ConfirmComplexPrivacy$5;
.super Ljava/lang/Object;
.source "ConfirmComplexPrivacy.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/settings/privacy/ConfirmComplexPrivacy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/coloros/settings/privacy/ConfirmComplexPrivacy;


# direct methods
.method constructor <init>(Lcom/coloros/settings/privacy/ConfirmComplexPrivacy;)V
    .locals 0

    .line 198
    iput-object p1, p0, Lcom/coloros/settings/privacy/ConfirmComplexPrivacy$5;->a:Lcom/coloros/settings/privacy/ConfirmComplexPrivacy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final afterTextChanged(Landroid/text/Editable;)V
    .locals 2

    .line 211
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result p1

    .line 212
    iget-object v0, p0, Lcom/coloros/settings/privacy/ConfirmComplexPrivacy$5;->a:Lcom/coloros/settings/privacy/ConfirmComplexPrivacy;

    invoke-static {v0}, Lcom/coloros/settings/privacy/ConfirmComplexPrivacy;->c(Lcom/coloros/settings/privacy/ConfirmComplexPrivacy;)Landroid/view/MenuItem;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 213
    iget-object v0, p0, Lcom/coloros/settings/privacy/ConfirmComplexPrivacy$5;->a:Lcom/coloros/settings/privacy/ConfirmComplexPrivacy;

    invoke-static {v0}, Lcom/coloros/settings/privacy/ConfirmComplexPrivacy;->c(Lcom/coloros/settings/privacy/ConfirmComplexPrivacy;)Landroid/view/MenuItem;

    move-result-object v0

    const/4 v1, 0x4

    if-lt p1, v1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-interface {v0, p1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    :cond_1
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
