.class public Lcom/coloros/settings/privacy/QuestionSelectActivity;
.super Lcom/android/settings/SubSettings;
.source "QuestionSelectActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coloros/settings/privacy/QuestionSelectActivity$QuestionSelectFragment;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 47
    invoke-direct {p0}, Lcom/android/settings/SubSettings;-><init>()V

    return-void
.end method


# virtual methods
.method public getIntent()Landroid/content/Intent;
    .locals 3

    .line 77
    new-instance v0, Landroid/content/Intent;

    invoke-super {p0}, Lcom/android/settings/SubSettings;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 78
    const-class v1, Lcom/coloros/settings/privacy/QuestionSelectActivity$QuestionSelectFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, ":settings:show_fragment"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-object v0
.end method

.method public isValidFragment(Ljava/lang/String;)Z
    .locals 1

    .line 84
    const-class v0, Lcom/coloros/settings/privacy/QuestionSelectActivity$QuestionSelectFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 51
    invoke-super {p0, p1}, Lcom/android/settings/SubSettings;->onCreate(Landroid/os/Bundle;)V

    const/4 v0, 0x1

    .line 52
    invoke-static {p0, v0, v0}, Lcom/coloros/settings/utils/al;->a(Landroid/app/Activity;ZZ)V

    .line 53
    invoke-virtual {p0}, Lcom/coloros/settings/privacy/QuestionSelectActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/coloros/settings/utils/al;->a(Landroid/content/Context;Landroid/view/Window;)V

    if-eqz p1, :cond_0

    .line 57
    invoke-virtual {p0}, Lcom/coloros/settings/privacy/QuestionSelectActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->uiMode:I

    const/4 v1, -0x1

    const-string v2, "key_ui_mode"

    .line 58
    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    if-eq p1, v1, :cond_0

    if-eq p1, v0, :cond_0

    .line 60
    invoke-virtual {p0}, Lcom/coloros/settings/privacy/QuestionSelectActivity;->finish()V

    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 69
    invoke-virtual {p0}, Lcom/coloros/settings/privacy/QuestionSelectActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->uiMode:I

    const-string v1, "key_ui_mode"

    .line 70
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 71
    invoke-super {p0, p1}, Lcom/android/settings/SubSettings;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method
