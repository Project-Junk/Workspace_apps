.class final Lcom/coloros/settings/feature/security/a;
.super Landroid/app/Dialog;
.source "ColorTrustedCredentialsDialogBuilder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coloros/settings/feature/security/a$b;,
        Lcom/coloros/settings/feature/security/a$a;,
        Lcom/coloros/settings/feature/security/a$c;
    }
.end annotation


# instance fields
.field private final a:Lcom/coloros/settings/feature/security/a$b;

.field private b:Landroid/view/MenuItem;

.field private c:Landroid/app/Activity;

.field private d:I

.field private e:Lcom/android/settings/TrustedCredentialsSettings$c;


# virtual methods
.method public final onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    .line 140
    iget-object v0, p0, Lcom/coloros/settings/feature/security/a;->c:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0e0004

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    const v0, 0x7f0a0491

    .line 141
    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/settings/feature/security/a;->b:Landroid/view/MenuItem;

    .line 142
    iget-object p1, p0, Lcom/coloros/settings/feature/security/a;->b:Landroid/view/MenuItem;

    if-eqz p1, :cond_0

    iget v0, p0, Lcom/coloros/settings/feature/security/a;->d:I

    if-lez v0, :cond_0

    .line 143
    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public final onMenuItemSelected(ILandroid/view/MenuItem;)Z
    .locals 5

    .line 128
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const/4 v1, 0x1

    const v2, 0x102002c

    if-ne v0, v2, :cond_0

    .line 129
    invoke-virtual {p0}, Lcom/coloros/settings/feature/security/a;->dismiss()V

    return v1

    .line 131
    :cond_0
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v2, 0x7f0a0491

    if-ne v0, v2, :cond_3

    .line 132
    iget-object p1, p0, Lcom/coloros/settings/feature/security/a;->a:Lcom/coloros/settings/feature/security/a$b;

    .line 1245
    invoke-virtual {p1}, Lcom/coloros/settings/feature/security/a$b;->a()Lcom/android/settings/TrustedCredentialsSettings$c;

    move-result-object p2

    .line 1247
    new-instance v0, Lcom/coloros/settings/feature/security/a$b$2;

    invoke-direct {v0, p1, p2}, Lcom/coloros/settings/feature/security/a$b$2;-><init>(Lcom/coloros/settings/feature/security/a$b;Lcom/android/settings/TrustedCredentialsSettings$c;)V

    .line 1254
    invoke-virtual {p2}, Lcom/android/settings/TrustedCredentialsSettings$c;->a()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    const/4 p1, -0x1

    .line 1256
    invoke-interface {v0, v3, p1}, Landroid/content/DialogInterface$OnClickListener;->onClick(Landroid/content/DialogInterface;I)V

    goto :goto_0

    .line 1259
    :cond_1
    new-instance v2, Lcolor/support/v7/app/AlertDialog$Builder;

    iget-object v4, p1, Lcom/coloros/settings/feature/security/a$b;->a:Landroid/app/Activity;

    invoke-direct {v2, v4}, Lcolor/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x7f12171d

    .line 1260
    invoke-virtual {v2, v4}, Lcolor/support/v7/app/AlertDialog$Builder;->setMessage(I)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object v2

    const v4, 0x1040013

    .line 1261
    invoke-virtual {v2, v4, v0}, Lcolor/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    const v2, 0x1040009

    .line 1262
    invoke-virtual {v0, v2, v3}, Lcolor/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    .line 1264
    invoke-virtual {v0}, Lcolor/support/v7/app/AlertDialog$Builder;->create()Lcolor/support/v7/app/AlertDialog;

    move-result-object v0

    .line 1265
    invoke-virtual {v0}, Lcolor/support/v7/app/AlertDialog;->show()V

    .line 1266
    invoke-static {p2}, Lcom/coloros/settings/feature/security/ColorTrustedCredentialsSettings;->c(Lcom/android/settings/TrustedCredentialsSettings$c;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1944
    iget-boolean p2, p2, Lcom/android/settings/TrustedCredentialsSettings$c;->f:Z

    if-nez p2, :cond_2

    .line 1267
    iget-object p1, p1, Lcom/coloros/settings/feature/security/a$b;->a:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/coloros/settings/utils/an;->a(Landroid/app/Dialog;Landroid/content/res/Resources;)V

    :cond_2
    :goto_0
    return v1

    .line 135
    :cond_3
    invoke-super {p0, p1, p2}, Landroid/app/Dialog;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public final show()V
    .locals 2

    .line 106
    invoke-virtual {p0}, Lcom/coloros/settings/feature/security/a;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v1, -0x80000000

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 107
    invoke-virtual {p0}, Lcom/coloros/settings/feature/security/a;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x500

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 109
    invoke-virtual {p0}, Lcom/coloros/settings/feature/security/a;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 111
    iget-object v0, p0, Lcom/coloros/settings/feature/security/a;->a:Lcom/coloros/settings/feature/security/a$b;

    invoke-virtual {p0, v0}, Lcom/coloros/settings/feature/security/a;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 112
    iget-object v0, p0, Lcom/coloros/settings/feature/security/a;->a:Lcom/coloros/settings/feature/security/a$b;

    .line 1200
    iput-object p0, v0, Lcom/coloros/settings/feature/security/a$b;->b:Landroid/app/Dialog;

    .line 113
    invoke-super {p0}, Landroid/app/Dialog;->show()V

    .line 114
    invoke-virtual {p0}, Lcom/coloros/settings/feature/security/a;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 116
    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 118
    :cond_0
    iget-object v0, p0, Lcom/coloros/settings/feature/security/a;->e:Lcom/android/settings/TrustedCredentialsSettings$c;

    if-eqz v0, :cond_1

    .line 119
    invoke-static {v0}, Lcom/coloros/settings/feature/security/a$b;->a(Lcom/android/settings/TrustedCredentialsSettings$c;)I

    move-result v0

    iput v0, p0, Lcom/coloros/settings/feature/security/a;->d:I

    .line 120
    iget-object v0, p0, Lcom/coloros/settings/feature/security/a;->b:Landroid/view/MenuItem;

    if-eqz v0, :cond_1

    iget v1, p0, Lcom/coloros/settings/feature/security/a;->d:I

    if-lez v1, :cond_1

    .line 121
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    :cond_1
    return-void
.end method
