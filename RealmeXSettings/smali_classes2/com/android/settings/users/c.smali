.class public final Lcom/android/settings/users/c;
.super Ljava/lang/Object;
.source "EditUserInfoController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/users/c$a;
    }
.end annotation


# instance fields
.field a:Lcom/android/settings/users/d;

.field b:Landroid/os/UserHandle;

.field c:Landroid/os/UserManager;

.field d:Z

.field private e:Landroid/app/Dialog;

.field private f:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 60
    iput-boolean v0, p0, Lcom/android/settings/users/c;->d:Z

    return-void
.end method


# virtual methods
.method public final a(Landroidx/fragment/app/Fragment;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;Lcom/android/settings/users/c$a;Landroid/os/UserHandle;)Landroid/app/Dialog;
    .locals 14

    move-object v7, p0

    .line 115
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    move-object/from16 v1, p5

    .line 116
    iput-object v1, v7, Lcom/android/settings/users/c;->b:Landroid/os/UserHandle;

    .line 117
    iget-object v1, v7, Lcom/android/settings/users/c;->c:Landroid/os/UserManager;

    if-nez v1, :cond_0

    .line 118
    const-class v1, Landroid/os/UserManager;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserManager;

    iput-object v1, v7, Lcom/android/settings/users/c;->c:Landroid/os/UserManager;

    .line 120
    :cond_0
    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0d016a

    const/4 v3, 0x0

    .line 121
    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 123
    iget-object v2, v7, Lcom/android/settings/users/c;->c:Landroid/os/UserManager;

    iget-object v3, v7, Lcom/android/settings/users/c;->b:Landroid/os/UserHandle;

    invoke-virtual {v3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v2

    const v3, 0x7f0a0776

    .line 125
    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    .line 126
    iget-object v4, v2, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    const v4, 0x7f0a0777

    .line 128
    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    move-object v10, v4

    check-cast v10, Landroid/widget/ImageView;

    .line 130
    iget-object v4, v7, Lcom/android/settings/users/c;->f:Landroid/graphics/Bitmap;

    if-eqz v4, :cond_1

    .line 131
    invoke-static {v0, v4}, Lcom/android/settingslib/g/a;->a(Landroid/content/Context;Landroid/graphics/Bitmap;)Lcom/android/settingslib/g/a;

    move-result-object v2

    :goto_0
    move-object v12, v2

    goto :goto_1

    :cond_1
    if-nez p2, :cond_2

    .line 135
    iget-object v4, v7, Lcom/android/settings/users/c;->c:Landroid/os/UserManager;

    invoke-static {v0, v4, v2}, Lcom/android/settingslib/l;->a(Landroid/content/Context;Landroid/os/UserManager;Landroid/content/pm/UserInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto :goto_0

    :cond_2
    move-object/from16 v12, p2

    .line 138
    :goto_1
    invoke-virtual {v10, v12}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 4201
    new-instance v2, Lcom/android/settings/users/d;

    iget-object v11, v7, Lcom/android/settings/users/c;->f:Landroid/graphics/Bitmap;

    iget-boolean v13, v7, Lcom/android/settings/users/c;->d:Z

    move-object v8, v2

    move-object v9, p1

    invoke-direct/range {v8 .. v13}, Lcom/android/settings/users/d;-><init>(Landroidx/fragment/app/Fragment;Landroid/widget/ImageView;Landroid/graphics/Bitmap;Landroid/graphics/drawable/Drawable;Z)V

    .line 139
    iput-object v2, v7, Lcom/android/settings/users/c;->a:Lcom/android/settings/users/d;

    .line 140
    new-instance v2, Lcolor/support/v7/app/AlertDialog$Builder;

    invoke-direct {v2, v0}, Lcolor/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v0, 0x7f121132

    .line 141
    invoke-virtual {v2, v0}, Lcolor/support/v7/app/AlertDialog$Builder;->setTitle(I)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    .line 142
    invoke-virtual {v0, v1}, Lcolor/support/v7/app/AlertDialog$Builder;->setView(Landroid/view/View;)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x1

    .line 143
    invoke-virtual {v0, v1}, Lcolor/support/v7/app/AlertDialog$Builder;->setCancelable(Z)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object v8

    const v9, 0x104000a

    new-instance v10, Lcom/android/settings/users/c$2;

    move-object v0, v10

    move-object v1, p0

    move-object v2, v3

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p2

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/android/settings/users/c$2;-><init>(Lcom/android/settings/users/c;Landroid/widget/EditText;Ljava/lang/CharSequence;Lcom/android/settings/users/c$a;Landroid/graphics/drawable/Drawable;Landroidx/fragment/app/Fragment;)V

    .line 144
    invoke-virtual {v8, v9, v10}, Lcolor/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    const/high16 v1, 0x1040000

    new-instance v2, Lcom/android/settings/users/c$1;

    invoke-direct {v2, p0}, Lcom/android/settings/users/c$1;-><init>(Lcom/android/settings/users/c;)V

    .line 183
    invoke-virtual {v0, v1, v2}, Lcolor/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    .line 189
    invoke-virtual {v0}, Lcolor/support/v7/app/AlertDialog$Builder;->create()Lcolor/support/v7/app/AlertDialog;

    move-result-object v0

    iput-object v0, v7, Lcom/android/settings/users/c;->e:Landroid/app/Dialog;

    .line 192
    iget-object v0, v7, Lcom/android/settings/users/c;->e:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 195
    iget-object v0, v7, Lcom/android/settings/users/c;->e:Landroid/app/Dialog;

    return-object v0
.end method

.method public final a()V
    .locals 3

    .line 68
    iget-object v0, p0, Lcom/android/settings/users/c;->a:Lcom/android/settings/users/d;

    .line 1398
    new-instance v1, Ljava/io/File;

    iget-object v0, v0, Lcom/android/settings/users/d;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    const-string v2, "NewUserPhoto.png"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    const/4 v0, 0x0

    .line 69
    iput-object v0, p0, Lcom/android/settings/users/c;->e:Landroid/app/Dialog;

    .line 70
    iput-object v0, p0, Lcom/android/settings/users/c;->f:Landroid/graphics/Bitmap;

    return-void
.end method

.method public final a(IILandroid/content/Intent;)V
    .locals 3

    const/4 v0, 0x0

    .line 105
    iput-boolean v0, p0, Lcom/android/settings/users/c;->d:Z

    .line 107
    iget-object v1, p0, Lcom/android/settings/users/c;->e:Landroid/app/Dialog;

    if-eqz v1, :cond_2

    .line 108
    iget-object v1, p0, Lcom/android/settings/users/c;->a:Lcom/android/settings/users/d;

    const/4 v2, -0x1

    if-ne p2, v2, :cond_2

    if-eqz p3, :cond_0

    .line 3117
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 3118
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p2

    goto :goto_0

    :cond_0
    iget-object p2, v1, Lcom/android/settings/users/d;->e:Landroid/net/Uri;

    :goto_0
    packed-switch p1, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    const/4 p1, 0x1

    .line 3121
    invoke-virtual {v1, p2, p1}, Lcom/android/settings/users/d;->a(Landroid/net/Uri;Z)V

    return-void

    .line 3125
    :pswitch_1
    iget-object p1, v1, Lcom/android/settings/users/d;->e:Landroid/net/Uri;

    invoke-virtual {p1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 3126
    invoke-virtual {v1}, Lcom/android/settings/users/d;->a()V

    return-void

    .line 3230
    :cond_1
    new-instance p1, Lcom/android/settings/users/d$5;

    invoke-direct {p1, v1, p2}, Lcom/android/settings/users/d$5;-><init>(Lcom/android/settings/users/d;Landroid/net/Uri;)V

    new-array p2, v0, [Ljava/lang/Void;

    .line 3248
    invoke-virtual {p1, p2}, Lcom/android/settings/users/d$5;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_2
    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x3e9
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final a(Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "pending_photo"

    .line 78
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 80
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2394
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 80
    iput-object v0, p0, Lcom/android/settings/users/c;->f:Landroid/graphics/Bitmap;

    :cond_0
    const/4 v0, 0x0

    const-string v1, "awaiting_result"

    .line 82
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/settings/users/c;->d:Z

    return-void
.end method

.method public final b(Landroid/os/Bundle;)V
    .locals 2

    .line 86
    iget-object v0, p0, Lcom/android/settings/users/c;->e:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/users/c;->a:Lcom/android/settings/users/d;

    if-eqz v0, :cond_0

    .line 90
    invoke-virtual {v0}, Lcom/android/settings/users/d;->b()Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 92
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    const-string v1, "pending_photo"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    :cond_0
    iget-boolean v0, p0, Lcom/android/settings/users/c;->d:Z

    if-eqz v0, :cond_1

    const-string v1, "awaiting_result"

    .line 96
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_1
    return-void
.end method
