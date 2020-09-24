.class public Lcom/android/settings/enterprise/ActionDisabledByAdminDialog;
.super Landroid/app/Activity;
.source "ActionDisabledByAdminDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field private a:Lcom/android/settings/enterprise/a;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private static a(Landroid/content/Intent;)Lcom/android/settingslib/g$a;
    .locals 4
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 56
    new-instance v0, Lcom/android/settingslib/g$a;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-static {v1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1}, Lcom/android/settingslib/g$a;-><init>(Landroid/content/ComponentName;Landroid/os/UserHandle;)V

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    const-string v1, "android.app.extra.DEVICE_ADMIN"

    .line 60
    invoke-virtual {p0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    iput-object v1, v0, Lcom/android/settingslib/g$a;->a:Landroid/content/ComponentName;

    const-string v1, "android.intent.extra.USER"

    .line 62
    invoke-virtual {p0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 63
    invoke-virtual {p0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p0

    check-cast p0, Landroid/os/UserHandle;

    iput-object p0, v0, Lcom/android/settingslib/g$a;->c:Landroid/os/UserHandle;

    goto :goto_0

    .line 65
    :cond_1
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    const-string v3, "android.intent.extra.USER_ID"

    invoke-virtual {p0, v3, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p0

    const/16 v1, -0x2710

    if-ne p0, v1, :cond_2

    .line 67
    iput-object v2, v0, Lcom/android/settingslib/g$a;->c:Landroid/os/UserHandle;

    goto :goto_0

    .line 69
    :cond_2
    invoke-static {p0}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object p0

    iput-object p0, v0, Lcom/android/settingslib/g$a;->c:Landroid/os/UserHandle;

    :goto_0
    return-object v0
.end method

.method private static b(Landroid/content/Intent;)Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "android.app.extra.RESTRICTION"

    .line 78
    invoke-virtual {p0, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 36
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 38
    invoke-virtual {p0}, Lcom/android/settings/enterprise/ActionDisabledByAdminDialog;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-static {p1}, Lcom/android/settings/enterprise/ActionDisabledByAdminDialog;->a(Landroid/content/Intent;)Lcom/android/settingslib/g$a;

    move-result-object p1

    .line 39
    invoke-virtual {p0}, Lcom/android/settings/enterprise/ActionDisabledByAdminDialog;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/enterprise/ActionDisabledByAdminDialog;->b(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    .line 40
    new-instance v1, Lcom/android/settings/enterprise/a;

    invoke-direct {v1, p0}, Lcom/android/settings/enterprise/a;-><init>(Landroid/app/Activity;)V

    iput-object v1, p0, Lcom/android/settings/enterprise/ActionDisabledByAdminDialog;->a:Lcom/android/settings/enterprise/a;

    .line 41
    iget-object v1, p0, Lcom/android/settings/enterprise/ActionDisabledByAdminDialog;->a:Lcom/android/settings/enterprise/a;

    invoke-virtual {v1, v0, p1}, Lcom/android/settings/enterprise/a;->a(Ljava/lang/String;Lcom/android/settingslib/g$a;)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object p1

    .line 42
    invoke-virtual {p1, p0}, Lcolor/support/v7/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object p1

    .line 43
    invoke-virtual {p1}, Lcolor/support/v7/app/AlertDialog$Builder;->show()Lcolor/support/v7/app/AlertDialog;

    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 0

    .line 83
    invoke-virtual {p0}, Lcom/android/settings/enterprise/ActionDisabledByAdminDialog;->finish()V

    return-void
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 4

    .line 48
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    .line 49
    invoke-static {p1}, Lcom/android/settings/enterprise/ActionDisabledByAdminDialog;->a(Landroid/content/Intent;)Lcom/android/settingslib/g$a;

    move-result-object v0

    .line 50
    invoke-static {p1}, Lcom/android/settings/enterprise/ActionDisabledByAdminDialog;->b(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object p1

    .line 51
    iget-object v1, p0, Lcom/android/settings/enterprise/ActionDisabledByAdminDialog;->a:Lcom/android/settings/enterprise/a;

    .line 1109
    iget-object v2, v1, Lcom/android/settings/enterprise/a;->a:Lcom/android/settingslib/g$a;

    invoke-virtual {v2, v0}, Lcom/android/settingslib/g$a;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, v1, Lcom/android/settings/enterprise/a;->c:Ljava/lang/String;

    invoke-static {v2, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1112
    :cond_0
    iput-object v0, v1, Lcom/android/settings/enterprise/a;->a:Lcom/android/settingslib/g$a;

    .line 1113
    iput-object p1, v1, Lcom/android/settings/enterprise/a;->c:Ljava/lang/String;

    .line 1114
    iget-object p1, v1, Lcom/android/settings/enterprise/a;->b:Landroid/view/ViewGroup;

    iget-object v0, v1, Lcom/android/settings/enterprise/a;->a:Lcom/android/settingslib/g$a;

    iget-object v0, v0, Lcom/android/settingslib/g$a;->a:Landroid/content/ComponentName;

    .line 2077
    iget-object v2, v1, Lcom/android/settings/enterprise/a;->a:Lcom/android/settingslib/g$a;

    invoke-static {v2}, Lcom/android/settings/enterprise/a;->a(Lcom/android/settingslib/g$a;)I

    move-result v2

    .line 1114
    iget-object v3, v1, Lcom/android/settings/enterprise/a;->c:Ljava/lang/String;

    invoke-virtual {v1, p1, v0, v2, v3}, Lcom/android/settings/enterprise/a;->a(Landroid/view/View;Landroid/content/ComponentName;ILjava/lang/String;)V

    :cond_1
    return-void
.end method
