.class Lcom/coloros/systemui/aod/aodclock/settings/signature/view/EditSignatureDialog$1;
.super Ljava/lang/Object;
.source "EditSignatureDialog.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/systemui/aod/aodclock/settings/signature/view/EditSignatureDialog;->create()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coloros/systemui/aod/aodclock/settings/signature/view/EditSignatureDialog;


# direct methods
.method constructor <init>(Lcom/coloros/systemui/aod/aodclock/settings/signature/view/EditSignatureDialog;)V
    .locals 0

    .line 168
    iput-object p1, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/EditSignatureDialog$1;->this$0:Lcom/coloros/systemui/aod/aodclock/settings/signature/view/EditSignatureDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 4

    .line 181
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 182
    sget-object v0, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/EmojiReader;->INSTANCE:Lcom/coloros/systemui/aod/aodclock/settings/signature/view/EmojiReader;

    invoke-virtual {v0, p1}, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/EmojiReader;->getTextLength(Ljava/lang/CharSequence;)I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 184
    :goto_0
    iget-object v1, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/EditSignatureDialog$1;->this$0:Lcom/coloros/systemui/aod/aodclock/settings/signature/view/EditSignatureDialog;

    invoke-static {v1}, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/EditSignatureDialog;->access$000(Lcom/coloros/systemui/aod/aodclock/settings/signature/view/EditSignatureDialog;)Landroid/widget/TextView;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0x32

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 185
    iget-object p0, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/EditSignatureDialog$1;->this$0:Lcom/coloros/systemui/aod/aodclock/settings/signature/view/EditSignatureDialog;

    if-lez v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_1
    const-string p1, ""

    :goto_1
    invoke-static {p0, p1}, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/EditSignatureDialog;->access$102(Lcom/coloros/systemui/aod/aodclock/settings/signature/view/EditSignatureDialog;Ljava/lang/String;)Ljava/lang/String;

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method
