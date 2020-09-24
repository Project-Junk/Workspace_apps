.class final Lcom/coloros/settings/privacy/SafeQuestionActivity$SafeQuestionFragment$4;
.super Landroid/os/Handler;
.source "SafeQuestionActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/settings/privacy/SafeQuestionActivity$SafeQuestionFragment;->onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/coloros/settings/privacy/SafeQuestionActivity$SafeQuestionFragment;


# direct methods
.method constructor <init>(Lcom/coloros/settings/privacy/SafeQuestionActivity$SafeQuestionFragment;)V
    .locals 0

    .line 408
    iput-object p1, p0, Lcom/coloros/settings/privacy/SafeQuestionActivity$SafeQuestionFragment$4;->a:Lcom/coloros/settings/privacy/SafeQuestionActivity$SafeQuestionFragment;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 3

    .line 412
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/c/a/f;

    .line 413
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onPreferenceChange reqToken: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 1068
    iget v1, p1, Lcom/c/a/f;->a:I

    .line 413
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_0

    :cond_0
    const-string v1, "null"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SafeQuestionFragment"

    invoke-static {v1, v0}, Lcom/coloros/settings/utils/ak;->b(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_1

    .line 2068
    iget p1, p1, Lcom/c/a/f;->a:I

    const v0, 0x1c9c769

    if-ne p1, v0, :cond_1

    .line 414
    iget-object p1, p0, Lcom/coloros/settings/privacy/SafeQuestionActivity$SafeQuestionFragment$4;->a:Lcom/coloros/settings/privacy/SafeQuestionActivity$SafeQuestionFragment;

    invoke-static {p1}, Lcom/coloros/settings/privacy/SafeQuestionActivity$SafeQuestionFragment;->c(Lcom/coloros/settings/privacy/SafeQuestionActivity$SafeQuestionFragment;)Lcom/coloros/settings/widget/preference/SettingSwitchPreference;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 415
    iget-object p1, p0, Lcom/coloros/settings/privacy/SafeQuestionActivity$SafeQuestionFragment$4;->a:Lcom/coloros/settings/privacy/SafeQuestionActivity$SafeQuestionFragment;

    invoke-static {p1}, Lcom/coloros/settings/privacy/SafeQuestionActivity$SafeQuestionFragment;->d(Lcom/coloros/settings/privacy/SafeQuestionActivity$SafeQuestionFragment;)Z

    .line 416
    iget-object p1, p0, Lcom/coloros/settings/privacy/SafeQuestionActivity$SafeQuestionFragment$4;->a:Lcom/coloros/settings/privacy/SafeQuestionActivity$SafeQuestionFragment;

    invoke-static {p1}, Lcom/coloros/settings/privacy/SafeQuestionActivity$SafeQuestionFragment;->c(Lcom/coloros/settings/privacy/SafeQuestionActivity$SafeQuestionFragment;)Lcom/coloros/settings/widget/preference/SettingSwitchPreference;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/coloros/settings/widget/preference/SettingSwitchPreference;->setChecked(Z)V

    .line 417
    iget-object p1, p0, Lcom/coloros/settings/privacy/SafeQuestionActivity$SafeQuestionFragment$4;->a:Lcom/coloros/settings/privacy/SafeQuestionActivity$SafeQuestionFragment;

    invoke-static {p1}, Lcom/coloros/settings/privacy/SafeQuestionActivity$SafeQuestionFragment;->e(Lcom/coloros/settings/privacy/SafeQuestionActivity$SafeQuestionFragment;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v0}, Lcom/coloros/settings/privacy/ChooseGenericPrivacy;->a(Landroid/content/Context;Z)V

    .line 418
    iget-object p1, p0, Lcom/coloros/settings/privacy/SafeQuestionActivity$SafeQuestionFragment$4;->a:Lcom/coloros/settings/privacy/SafeQuestionActivity$SafeQuestionFragment;

    invoke-static {p1}, Lcom/coloros/settings/privacy/SafeQuestionActivity$SafeQuestionFragment;->f(Lcom/coloros/settings/privacy/SafeQuestionActivity$SafeQuestionFragment;)Landroid/content/Context;

    move-result-object p1

    const/4 v1, 0x0

    const-string v2, "pw_privacy_account"

    invoke-static {p1, v2, v0, v1}, Lcom/coloros/settings/utils/aj;->a(Landroid/content/Context;Ljava/lang/String;ZZ)V

    :cond_1
    return-void
.end method
