.class public Lcom/coloros/settings/privacy/ConfirmGenericPrivacy;
.super Landroid/app/Activity;
.source "ConfirmGenericPrivacy.java"


# instance fields
.field private a:Lcom/coloros/settings/privacy/a/g;

.field private b:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 26
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x0

    .line 42
    iput v0, p0, Lcom/coloros/settings/privacy/ConfirmGenericPrivacy;->b:I

    return-void
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 4

    .line 105
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 106
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onActivityResult requestCode = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "; resultCode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ConfirmGenericPrivacy"

    invoke-static {v1, v0}, Lcom/coloros/settings/utils/ak;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    const/4 p1, -0x1

    if-ne p2, p1, :cond_1

    .line 109
    iget p2, p0, Lcom/coloros/settings/privacy/ConfirmGenericPrivacy;->b:I

    const/4 v0, 0x4

    if-ne p2, v0, :cond_0

    const-string p2, "confirm_challenge"

    .line 110
    invoke-virtual {p3, p2}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v1

    if-eqz v1, :cond_0

    .line 112
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-string v3, "choose_password_type"

    .line 113
    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 115
    invoke-virtual {v2, p2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    const/4 p2, 0x2

    const-string v0, "password_quality_type"

    .line 116
    invoke-virtual {v2, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 118
    invoke-virtual {p0}, Lcom/coloros/settings/privacy/ConfirmGenericPrivacy;->getPackageName()Ljava/lang/String;

    move-result-object p2

    const-class v0, Lcom/coloros/settings/privacy/ChooseNumberPrivacy;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, p2, v0}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/16 p2, 0x12

    .line 119
    invoke-virtual {p0, v2, p2}, Lcom/coloros/settings/privacy/ConfirmGenericPrivacy;->startActivityForResult(Landroid/content/Intent;I)V

    .line 122
    :cond_0
    invoke-virtual {p0, p1, p3}, Lcom/coloros/settings/privacy/ConfirmGenericPrivacy;->setResult(ILandroid/content/Intent;)V

    goto :goto_0

    .line 125
    :cond_1
    invoke-virtual {p0}, Lcom/coloros/settings/privacy/ConfirmGenericPrivacy;->finish()V

    return-void

    .line 128
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/coloros/settings/privacy/ConfirmGenericPrivacy;->finish()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6

    .line 46
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    if-eqz p1, :cond_0

    .line 49
    invoke-virtual {p0}, Lcom/coloros/settings/privacy/ConfirmGenericPrivacy;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->uiMode:I

    const/4 v1, -0x1

    const-string v2, "key_ui_mode"

    .line 50
    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-eq v2, v1, :cond_0

    if-eq v2, v0, :cond_0

    .line 52
    invoke-virtual {p0}, Lcom/coloros/settings/privacy/ConfirmGenericPrivacy;->finish()V

    return-void

    .line 57
    :cond_0
    invoke-virtual {p0}, Lcom/coloros/settings/privacy/ConfirmGenericPrivacy;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v1, -0x80000000

    .line 58
    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    const/4 v1, 0x0

    .line 59
    invoke-virtual {v0, v1}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 60
    new-instance v0, Lcom/coloros/settings/privacy/a/g;

    invoke-direct {v0, p0}, Lcom/coloros/settings/privacy/a/g;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/coloros/settings/privacy/ConfirmGenericPrivacy;->a:Lcom/coloros/settings/privacy/a/g;

    const-string v0, "ConfirmGenericPrivacy"

    if-eqz p1, :cond_1

    const-string p1, "activity is rebuild, ignore and finished"

    .line 62
    invoke-static {v0, p1}, Lcom/coloros/settings/utils/ak;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    invoke-virtual {p0}, Lcom/coloros/settings/privacy/ConfirmGenericPrivacy;->finish()V

    return-void

    .line 66
    :cond_1
    iget-object p1, p0, Lcom/coloros/settings/privacy/ConfirmGenericPrivacy;->a:Lcom/coloros/settings/privacy/a/g;

    invoke-virtual {p1}, Lcom/coloros/settings/privacy/a/g;->a()Lcom/coloros/settings/privacy/a/g$d;

    move-result-object p1

    iget p1, p1, Lcom/coloros/settings/privacy/a/g$d;->a:I

    .line 67
    invoke-virtual {p0}, Lcom/coloros/settings/privacy/ConfirmGenericPrivacy;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "confirm_password_type"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/coloros/settings/privacy/ConfirmGenericPrivacy;->b:I

    .line 68
    invoke-virtual {p0}, Lcom/coloros/settings/privacy/ConfirmGenericPrivacy;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 69
    invoke-virtual {p0}, Lcom/coloros/settings/privacy/ConfirmGenericPrivacy;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "only_privacy_confirm"

    invoke-virtual {v4, v5, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    invoke-virtual {v2, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 70
    iget v4, p0, Lcom/coloros/settings/privacy/ConfirmGenericPrivacy;->b:I

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 71
    invoke-virtual {p0}, Lcom/coloros/settings/privacy/ConfirmGenericPrivacy;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "only_privacy_settings_check_on_create"

    invoke-virtual {v3, v4, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v2, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 72
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v3, "onCreate startActivity passwordType = "

    invoke-virtual {v3, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/coloros/settings/utils/ak;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    if-eq p1, v0, :cond_4

    const/4 v1, 0x2

    if-eq p1, v1, :cond_4

    const/4 v1, 0x3

    if-eq p1, v1, :cond_3

    const/4 v1, 0x4

    if-eq p1, v1, :cond_3

    const/4 v1, 0x5

    if-eq p1, v1, :cond_2

    goto :goto_0

    .line 85
    :cond_2
    invoke-virtual {p0}, Lcom/coloros/settings/privacy/ConfirmGenericPrivacy;->getPackageName()Ljava/lang/String;

    move-result-object p1

    const-class v1, Lcom/coloros/settings/privacy/ConfirmPatternPrivacy;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, p1, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 86
    invoke-virtual {p0, v2, v0}, Lcom/coloros/settings/privacy/ConfirmGenericPrivacy;->startActivityForResult(Landroid/content/Intent;I)V

    :goto_0
    return-void

    .line 81
    :cond_3
    invoke-virtual {p0}, Lcom/coloros/settings/privacy/ConfirmGenericPrivacy;->getPackageName()Ljava/lang/String;

    move-result-object p1

    const-class v1, Lcom/coloros/settings/privacy/ConfirmComplexPrivacy;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, p1, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 82
    invoke-virtual {p0, v2, v0}, Lcom/coloros/settings/privacy/ConfirmGenericPrivacy;->startActivityForResult(Landroid/content/Intent;I)V

    return-void

    .line 76
    :cond_4
    invoke-virtual {p0}, Lcom/coloros/settings/privacy/ConfirmGenericPrivacy;->getPackageName()Ljava/lang/String;

    move-result-object p1

    const-class v1, Lcom/coloros/settings/privacy/ConfirmNumberPrivacy;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, p1, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 77
    invoke-virtual {p0, v2, v0}, Lcom/coloros/settings/privacy/ConfirmGenericPrivacy;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 96
    invoke-virtual {p0}, Lcom/coloros/settings/privacy/ConfirmGenericPrivacy;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->uiMode:I

    const-string v1, "key_ui_mode"

    .line 97
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 98
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method
