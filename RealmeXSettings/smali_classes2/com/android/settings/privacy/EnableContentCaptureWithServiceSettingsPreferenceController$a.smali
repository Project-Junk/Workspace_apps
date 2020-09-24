.class final Lcom/android/settings/privacy/EnableContentCaptureWithServiceSettingsPreferenceController$a;
.super Ljava/lang/Object;
.source "EnableContentCaptureWithServiceSettingsPreferenceController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/privacy/EnableContentCaptureWithServiceSettingsPreferenceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation


# direct methods
.method public static a(Landroid/content/Context;Landroidx/preference/Preference;)V
    .locals 4

    .line 93
    invoke-static {p0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v0

    .line 94
    invoke-virtual {v0}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v1

    .line 95
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 96
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/UserInfo;

    .line 97
    invoke-virtual {v3}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 100
    :cond_0
    new-instance v1, Lcolor/support/v7/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Lcolor/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 101
    invoke-static {v0, p0, v2}, Lcom/android/settings/dashboard/profileselector/a;->a(Landroid/os/UserManager;Landroid/content/Context;Ljava/util/List;)Lcom/android/settings/dashboard/profileselector/a;

    move-result-object v0

    const v3, 0x7f1204ec

    .line 102
    invoke-virtual {v1, v3}, Lcolor/support/v7/app/AlertDialog$Builder;->setTitle(I)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v3, Lcom/android/settings/privacy/-$$Lambda$EnableContentCaptureWithServiceSettingsPreferenceController$a$PFGRt40gmYW-S2MVWcb_pwUp2fI;

    invoke-direct {v3, v2, p1, p0}, Lcom/android/settings/privacy/-$$Lambda$EnableContentCaptureWithServiceSettingsPreferenceController$a$PFGRt40gmYW-S2MVWcb_pwUp2fI;-><init>(Ljava/util/ArrayList;Landroidx/preference/Preference;Landroid/content/Context;)V

    .line 103
    invoke-virtual {v1, v0, v3}, Lcolor/support/v7/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object p0

    .line 110
    invoke-virtual {p0}, Lcolor/support/v7/app/AlertDialog$Builder;->show()Lcolor/support/v7/app/AlertDialog;

    return-void
.end method

.method private static synthetic a(Ljava/util/ArrayList;Landroidx/preference/Preference;Landroid/content/Context;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 104
    invoke-virtual {p0, p4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/UserHandle;

    .line 106
    invoke-virtual {p1}, Landroidx/preference/Preference;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const p3, 0x8000

    .line 107
    invoke-virtual {p1, p3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 108
    invoke-virtual {p2, p1, p0}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void
.end method

.method public static synthetic lambda$PFGRt40gmYW-S2MVWcb_pwUp2fI(Ljava/util/ArrayList;Landroidx/preference/Preference;Landroid/content/Context;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/settings/privacy/EnableContentCaptureWithServiceSettingsPreferenceController$a;->a(Ljava/util/ArrayList;Landroidx/preference/Preference;Landroid/content/Context;Landroid/content/DialogInterface;I)V

    return-void
.end method
