.class public Lcom/android/settings/dashboard/profileselector/ProfileSelectDialog;
.super Landroidx/fragment/app/DialogFragment;
.source "ProfileSelectDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# static fields
.field private static final a:Z


# instance fields
.field private b:Lcom/android/settingslib/h/c;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "ProfileSelectDialog"

    const/4 v1, 0x3

    .line 41
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/settings/dashboard/profileselector/ProfileSelectDialog;->a:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Landroidx/fragment/app/DialogFragment;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/android/settingslib/h/c;)V
    .locals 3

    .line 81
    iget-object v0, p1, Lcom/android/settingslib/h/c;->a:Ljava/util/ArrayList;

    .line 82
    iget-object v1, p1, Lcom/android/settingslib/h/c;->a:Ljava/util/ArrayList;

    if-eqz v1, :cond_3

    iget-object p1, p1, Lcom/android/settingslib/h/c;->a:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/4 v1, 0x1

    if-gt p1, v1, :cond_0

    goto :goto_1

    .line 85
    :cond_0
    invoke-static {p0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object p0

    .line 86
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    sub-int/2addr p1, v1

    :goto_0
    if-ltz p1, :cond_3

    .line 87
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserHandle;

    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v1

    if-nez v1, :cond_2

    .line 88
    sget-boolean v1, Lcom/android/settings/dashboard/profileselector/ProfileSelectDialog;->a:Z

    if-eqz v1, :cond_1

    .line 89
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Delete the user: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/UserHandle;

    invoke-virtual {v2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ProfileSelectDialog"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    :cond_1
    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_2
    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    :cond_3
    :goto_1
    return-void
.end method

.method public static a(Landroidx/fragment/app/FragmentManager;Lcom/android/settingslib/h/c;)V
    .locals 3

    .line 46
    new-instance v0, Lcom/android/settings/dashboard/profileselector/ProfileSelectDialog;

    invoke-direct {v0}, Lcom/android/settings/dashboard/profileselector/ProfileSelectDialog;-><init>()V

    .line 47
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "selectedTile"

    .line 48
    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 49
    invoke-virtual {v0, v1}, Lcom/android/settings/dashboard/profileselector/ProfileSelectDialog;->setArguments(Landroid/os/Bundle;)V

    const-string p1, "select_profile"

    .line 50
    invoke-virtual {v0, p0, p1}, Lcom/android/settings/dashboard/profileselector/ProfileSelectDialog;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 73
    iget-object p1, p0, Lcom/android/settings/dashboard/profileselector/ProfileSelectDialog;->b:Lcom/android/settingslib/h/c;

    iget-object p1, p1, Lcom/android/settingslib/h/c;->a:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/UserHandle;

    .line 75
    iget-object p2, p0, Lcom/android/settings/dashboard/profileselector/ProfileSelectDialog;->b:Lcom/android/settingslib/h/c;

    .line 1130
    iget-object p2, p2, Lcom/android/settingslib/h/c;->d:Landroid/content/Intent;

    const v0, 0x8000

    .line 76
    invoke-virtual {p2, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 77
    invoke-virtual {p0}, Lcom/android/settings/dashboard/profileselector/ProfileSelectDialog;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0, p2, p1}, Landroidx/fragment/app/FragmentActivity;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 55
    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 56
    invoke-virtual {p0}, Lcom/android/settings/dashboard/profileselector/ProfileSelectDialog;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "selectedTile"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/android/settingslib/h/c;

    iput-object p1, p0, Lcom/android/settings/dashboard/profileselector/ProfileSelectDialog;->b:Lcom/android/settingslib/h/c;

    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3

    .line 61
    invoke-virtual {p0}, Lcom/android/settings/dashboard/profileselector/ProfileSelectDialog;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    .line 62
    new-instance v0, Lcolor/support/v7/app/AlertDialog$Builder;

    invoke-direct {v0, p1}, Lcolor/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 63
    invoke-static {p1}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/dashboard/profileselector/ProfileSelectDialog;->b:Lcom/android/settingslib/h/c;

    iget-object v2, v2, Lcom/android/settingslib/h/c;->a:Ljava/util/ArrayList;

    invoke-static {v1, p1, v2}, Lcom/android/settings/dashboard/profileselector/a;->a(Landroid/os/UserManager;Landroid/content/Context;Ljava/util/List;)Lcom/android/settings/dashboard/profileselector/a;

    move-result-object p1

    const v1, 0x7f1204ec

    .line 65
    invoke-virtual {v0, v1}, Lcolor/support/v7/app/AlertDialog$Builder;->setTitle(I)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    .line 66
    invoke-virtual {v1, p1, p0}, Lcolor/support/v7/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Lcolor/support/v7/app/AlertDialog$Builder;

    .line 68
    invoke-virtual {v0}, Lcolor/support/v7/app/AlertDialog$Builder;->create()Lcolor/support/v7/app/AlertDialog;

    move-result-object p1

    return-object p1
.end method
