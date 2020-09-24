.class public Lcom/android/settings/users/RestrictedProfileSettings;
.super Lcom/android/settings/users/AppRestrictionsFragment;
.source "RestrictedProfileSettings.java"

# interfaces
.implements Lcom/android/settings/users/c$a;


# instance fields
.field private f:Landroid/view/View;

.field private g:Landroid/widget/ImageView;

.field private h:Landroid/widget/TextView;

.field private i:Landroid/widget/ImageView;

.field private j:Lcom/android/settings/users/c;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 34
    invoke-direct {p0}, Lcom/android/settings/users/AppRestrictionsFragment;-><init>()V

    .line 49
    new-instance v0, Lcom/android/settings/users/c;

    invoke-direct {v0}, Lcom/android/settings/users/c;-><init>()V

    iput-object v0, p0, Lcom/android/settings/users/RestrictedProfileSettings;->j:Lcom/android/settings/users/c;

    return-void
.end method

.method static synthetic a(Lcom/android/settings/users/RestrictedProfileSettings;)V
    .locals 2

    .line 1154
    invoke-virtual {p0}, Lcom/android/settings/users/RestrictedProfileSettings;->getView()Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/android/settings/users/RestrictedProfileSettings$2;

    invoke-direct {v1, p0}, Lcom/android/settings/users/RestrictedProfileSettings$2;-><init>(Lcom/android/settings/users/RestrictedProfileSettings;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method public final a(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 164
    iget-object v0, p0, Lcom/android/settings/users/RestrictedProfileSettings;->g:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public final a(Ljava/lang/CharSequence;)V
    .locals 1

    .line 169
    iget-object v0, p0, Lcom/android/settings/users/RestrictedProfileSettings;->h:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public getDialogMetricsCategory(I)I
    .locals 1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/16 p1, 0x24f

    return p1

    :cond_1
    const/16 p1, 0x24e

    return p1
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2

    const v0, 0x7f0d038e

    .line 65
    invoke-virtual {p0, v0}, Lcom/android/settings/users/RestrictedProfileSettings;->setPinnedHeaderView(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/users/RestrictedProfileSettings;->f:Landroid/view/View;

    .line 66
    iget-object v0, p0, Lcom/android/settings/users/RestrictedProfileSettings;->f:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 67
    iget-object v0, p0, Lcom/android/settings/users/RestrictedProfileSettings;->f:Landroid/view/View;

    const v1, 0x1020006

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/settings/users/RestrictedProfileSettings;->g:Landroid/widget/ImageView;

    .line 68
    iget-object v0, p0, Lcom/android/settings/users/RestrictedProfileSettings;->f:Landroid/view/View;

    const v1, 0x1020016

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/users/RestrictedProfileSettings;->h:Landroid/widget/TextView;

    .line 69
    iget-object v0, p0, Lcom/android/settings/users/RestrictedProfileSettings;->f:Landroid/view/View;

    const v1, 0x7f0a01da

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/settings/users/RestrictedProfileSettings;->i:Landroid/widget/ImageView;

    .line 70
    iget-object v0, p0, Lcom/android/settings/users/RestrictedProfileSettings;->i:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 72
    invoke-super {p0, p1}, Lcom/android/settings/users/AppRestrictionsFragment;->onActivityCreated(Landroid/os/Bundle;)V

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .line 104
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/users/AppRestrictionsFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 106
    iget-object v0, p0, Lcom/android/settings/users/RestrictedProfileSettings;->j:Lcom/android/settings/users/c;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/settings/users/c;->a(IILandroid/content/Intent;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 111
    iget-object v0, p0, Lcom/android/settings/users/RestrictedProfileSettings;->f:Landroid/view/View;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    .line 112
    invoke-virtual {p0, p1}, Lcom/android/settings/users/RestrictedProfileSettings;->showDialog(I)V

    return-void

    .line 113
    :cond_0
    iget-object v0, p0, Lcom/android/settings/users/RestrictedProfileSettings;->i:Landroid/widget/ImageView;

    if-ne p1, v0, :cond_1

    const/4 p1, 0x2

    .line 114
    invoke-virtual {p0, p1}, Lcom/android/settings/users/RestrictedProfileSettings;->showDialog(I)V

    return-void

    .line 116
    :cond_1
    invoke-super {p0, p1}, Lcom/android/settings/users/AppRestrictionsFragment;->onClick(Landroid/view/View;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 54
    invoke-super {p0, p1}, Lcom/android/settings/users/AppRestrictionsFragment;->onCreate(Landroid/os/Bundle;)V

    if-eqz p1, :cond_0

    .line 57
    iget-object v0, p0, Lcom/android/settings/users/RestrictedProfileSettings;->j:Lcom/android/settings/users/c;

    invoke-virtual {v0, p1}, Lcom/android/settings/users/c;->a(Landroid/os/Bundle;)V

    .line 60
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/settings/users/RestrictedProfileSettings;->a(Landroid/os/Bundle;)V

    return-void
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 7

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 123
    iget-object v1, p0, Lcom/android/settings/users/RestrictedProfileSettings;->j:Lcom/android/settings/users/c;

    iget-object p1, p0, Lcom/android/settings/users/RestrictedProfileSettings;->g:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iget-object p1, p0, Lcom/android/settings/users/RestrictedProfileSettings;->h:Landroid/widget/TextView;

    .line 124
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    iget-object v6, p0, Lcom/android/settings/users/RestrictedProfileSettings;->d:Landroid/os/UserHandle;

    move-object v2, p0

    move-object v5, p0

    .line 123
    invoke-virtual/range {v1 .. v6}, Lcom/android/settings/users/c;->a(Landroidx/fragment/app/Fragment;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;Lcom/android/settings/users/c$a;Landroid/os/UserHandle;)Landroid/app/Dialog;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 128
    invoke-virtual {p0}, Lcom/android/settings/users/RestrictedProfileSettings;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iget-object v0, p0, Lcom/android/settings/users/RestrictedProfileSettings;->d:Landroid/os/UserHandle;

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    new-instance v1, Lcom/android/settings/users/RestrictedProfileSettings$1;

    invoke-direct {v1, p0}, Lcom/android/settings/users/RestrictedProfileSettings$1;-><init>(Lcom/android/settings/users/RestrictedProfileSettings;)V

    invoke-static {p1, v0, v1}, Lcom/android/settings/users/g;->a(Landroid/content/Context;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/Dialog;

    move-result-object p1

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public onResume()V
    .locals 4

    .line 83
    invoke-super {p0}, Lcom/android/settings/users/AppRestrictionsFragment;->onResume()V

    .line 86
    iget-object v0, p0, Lcom/android/settings/users/RestrictedProfileSettings;->b:Landroid/os/UserManager;

    iget-object v1, p0, Lcom/android/settings/users/RestrictedProfileSettings;->d:Landroid/os/UserHandle;

    invoke-static {v0, v1}, Lcom/android/settings/m;->a(Landroid/os/UserManager;Landroid/os/UserHandle;)Landroid/content/pm/UserInfo;

    move-result-object v0

    if-nez v0, :cond_0

    .line 88
    invoke-virtual {p0}, Lcom/android/settings/users/RestrictedProfileSettings;->finishFragment()V

    return-void

    .line 90
    :cond_0
    iget-object v1, p0, Lcom/android/settings/users/RestrictedProfileSettings;->f:Landroid/view/View;

    const v2, 0x1020016

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v2, v0, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 91
    iget-object v1, p0, Lcom/android/settings/users/RestrictedProfileSettings;->f:Landroid/view/View;

    const v2, 0x1020006

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 92
    invoke-virtual {p0}, Lcom/android/settings/users/RestrictedProfileSettings;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/users/RestrictedProfileSettings;->b:Landroid/os/UserManager;

    invoke-static {v2, v3, v0}, Lcom/android/settingslib/l;->a(Landroid/content/Context;Landroid/os/UserManager;Landroid/content/pm/UserInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 91
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    .line 77
    invoke-super {p0, p1}, Lcom/android/settings/users/AppRestrictionsFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 78
    iget-object v0, p0, Lcom/android/settings/users/RestrictedProfileSettings;->j:Lcom/android/settings/users/c;

    invoke-virtual {v0, p1}, Lcom/android/settings/users/c;->b(Landroid/os/Bundle;)V

    return-void
.end method

.method public startActivityForResult(Landroid/content/Intent;I)V
    .locals 2

    .line 98
    iget-object v0, p0, Lcom/android/settings/users/RestrictedProfileSettings;->j:Lcom/android/settings/users/c;

    const/4 v1, 0x1

    .line 1101
    iput-boolean v1, v0, Lcom/android/settings/users/c;->d:Z

    .line 99
    invoke-super {p0, p1, p2}, Lcom/android/settings/users/AppRestrictionsFragment;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method
