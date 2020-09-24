.class public final Lcom/android/settings/users/g;
.super Ljava/lang/Object;
.source "UserDialogs.java"


# direct methods
.method public static a(Landroid/content/Context;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/Dialog;
    .locals 3

    const-string v0, "user"

    .line 54
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    .line 55
    invoke-virtual {v0, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    .line 56
    new-instance v1, Lcolor/support/v7/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Lcolor/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f12180d

    .line 59
    invoke-virtual {v1, v2, p2}, Lcolor/support/v7/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object p2

    const/high16 v1, 0x1040000

    const/4 v2, 0x0

    .line 61
    invoke-virtual {p2, v1, v2}, Lcolor/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object p2

    .line 62
    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v1

    if-eqz v1, :cond_1

    const v0, 0x7f121a9f

    .line 63
    invoke-virtual {p2, v0}, Lcolor/support/v7/app/AlertDialog$Builder;->setTitle(I)Lcolor/support/v7/app/AlertDialog$Builder;

    .line 64
    invoke-static {p0, p1}, Lcom/android/settings/users/g;->a(Landroid/content/Context;I)Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 66
    invoke-virtual {p2, p0}, Lcolor/support/v7/app/AlertDialog$Builder;->setView(Landroid/view/View;)Lcolor/support/v7/app/AlertDialog$Builder;

    goto :goto_0

    :cond_0
    const p0, 0x7f121a9e

    .line 68
    invoke-virtual {p2, p0}, Lcolor/support/v7/app/AlertDialog$Builder;->setMessage(I)Lcolor/support/v7/app/AlertDialog$Builder;

    goto :goto_0

    .line 70
    :cond_1
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result p0

    if-ne p0, p1, :cond_2

    const p0, 0x7f121802

    .line 71
    invoke-virtual {p2, p0}, Lcolor/support/v7/app/AlertDialog$Builder;->setTitle(I)Lcolor/support/v7/app/AlertDialog$Builder;

    const p0, 0x7f121801

    .line 72
    invoke-virtual {p2, p0}, Lcolor/support/v7/app/AlertDialog$Builder;->setMessage(I)Lcolor/support/v7/app/AlertDialog$Builder;

    goto :goto_0

    .line 73
    :cond_2
    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isRestricted()Z

    move-result p0

    if-eqz p0, :cond_3

    const p0, 0x7f121843

    .line 74
    invoke-virtual {p2, p0}, Lcolor/support/v7/app/AlertDialog$Builder;->setTitle(I)Lcolor/support/v7/app/AlertDialog$Builder;

    const p0, 0x7f121842

    .line 75
    invoke-virtual {p2, p0}, Lcolor/support/v7/app/AlertDialog$Builder;->setMessage(I)Lcolor/support/v7/app/AlertDialog$Builder;

    goto :goto_0

    :cond_3
    const p0, 0x7f121803

    .line 77
    invoke-virtual {p2, p0}, Lcolor/support/v7/app/AlertDialog$Builder;->setTitle(I)Lcolor/support/v7/app/AlertDialog$Builder;

    const p0, 0x7f1217ff

    .line 78
    invoke-virtual {p2, p0}, Lcolor/support/v7/app/AlertDialog$Builder;->setMessage(I)Lcolor/support/v7/app/AlertDialog$Builder;

    :goto_0
    const-string p0, ""

    .line 82
    invoke-virtual {p2, p0}, Lcolor/support/v7/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcolor/support/v7/app/AlertDialog$Builder;

    const/4 p0, 0x1

    .line 83
    invoke-virtual {p2, p0}, Lcolor/support/v7/app/AlertDialog$Builder;->setDialogType(I)Lcolor/support/v7/app/AlertDialog$Builder;

    .line 86
    invoke-virtual {p2}, Lcolor/support/v7/app/AlertDialog$Builder;->create()Lcolor/support/v7/app/AlertDialog;

    move-result-object p0

    return-object p0
.end method

.method private static a(Landroid/content/Context;I)Landroid/view/View;
    .locals 5

    .line 93
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 94
    invoke-static {p0, p1}, Lcom/android/settings/m;->a(Landroid/content/Context;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return-object v2

    :cond_0
    const-string v3, "layout_inflater"

    .line 99
    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/LayoutInflater;

    const v3, 0x7f0d0142

    .line 101
    invoke-virtual {p0, v3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p0

    const v2, 0x7f0a01df

    .line 103
    invoke-virtual {p0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 105
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getApplicationIcon(Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    new-instance v4, Landroid/os/UserHandle;

    invoke-direct {v4, p1}, Landroid/os/UserHandle;-><init>(I)V

    .line 104
    invoke-virtual {v0, v3, v4}, Landroid/content/pm/PackageManager;->getUserBadgedIcon(Landroid/graphics/drawable/Drawable;Landroid/os/UserHandle;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 106
    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 108
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 109
    new-instance v2, Landroid/os/UserHandle;

    invoke-direct {v2, p1}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getUserBadgedLabel(Ljava/lang/CharSequence;Landroid/os/UserHandle;)Ljava/lang/CharSequence;

    move-result-object p1

    const v0, 0x7f0a01de

    .line 112
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 113
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 114
    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 115
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_1
    return-object p0
.end method
