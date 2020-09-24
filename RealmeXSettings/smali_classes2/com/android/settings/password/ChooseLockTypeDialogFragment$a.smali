.class public interface abstract Lcom/android/settings/password/ChooseLockTypeDialogFragment$a;
.super Ljava/lang/Object;
.source "ChooseLockTypeDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/password/ChooseLockTypeDialogFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "a"
.end annotation


# virtual methods
.method public abstract a(Lcom/android/settings/password/f;)V
.end method

.method public a(Lcom/android/settings/password/f;Landroid/app/Activity;)V
    .locals 4

    .line 71
    invoke-virtual {p2}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 72
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/android/settings/password/SetupChooseLockGeneric;

    invoke-direct {v1, p2, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v2, 0x2000000

    .line 73
    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v2, "has_challenge"

    .line 76
    invoke-static {v0, v1, v2}, Lcom/android/settings/password/ChooseLockTypeDialogFragment;->a(Landroid/content/Intent;Landroid/content/Intent;Ljava/lang/String;)V

    const-string v2, "show_options_button"

    .line 78
    invoke-static {v0, v1, v2}, Lcom/android/settings/password/ChooseLockTypeDialogFragment;->a(Landroid/content/Intent;Landroid/content/Intent;Ljava/lang/String;)V

    const-string v2, "choose_lock_generic_extras"

    .line 80
    invoke-virtual {v0, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 82
    invoke-virtual {v0, v2}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 85
    :cond_0
    iget p1, p1, Lcom/android/settings/password/f;->g:I

    const-string v2, "lockscreen.password_type"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-wide/16 v2, 0x0

    const-string p1, "challenge"

    .line 87
    invoke-virtual {v0, p1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    .line 86
    invoke-virtual {v1, p1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 88
    invoke-static {v0, v1}, Lcom/google/android/setupcompat/c/b;->a(Landroid/content/Intent;Landroid/content/Intent;)V

    .line 89
    invoke-virtual {p2, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 90
    invoke-virtual {p2}, Landroid/app/Activity;->finish()V

    return-void
.end method
