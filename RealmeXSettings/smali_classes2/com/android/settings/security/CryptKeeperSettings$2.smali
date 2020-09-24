.class final Lcom/android/settings/security/CryptKeeperSettings$2;
.super Ljava/lang/Object;
.source "CryptKeeperSettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/security/CryptKeeperSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/android/settings/security/CryptKeeperSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/security/CryptKeeperSettings;)V
    .locals 0

    .line 92
    iput-object p1, p0, Lcom/android/settings/security/CryptKeeperSettings$2;->a:Lcom/android/settings/security/CryptKeeperSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .line 95
    iget-object p1, p0, Lcom/android/settings/security/CryptKeeperSettings$2;->a:Lcom/android/settings/security/CryptKeeperSettings;

    invoke-static {p1}, Lcom/android/settings/security/CryptKeeperSettings;->d(Lcom/android/settings/security/CryptKeeperSettings;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 97
    new-instance p1, Lcolor/support/v7/app/AlertDialog$Builder;

    iget-object v0, p0, Lcom/android/settings/security/CryptKeeperSettings$2;->a:Lcom/android/settings/security/CryptKeeperSettings;

    invoke-virtual {v0}, Lcom/android/settings/security/CryptKeeperSettings;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-direct {p1, v0}, Lcolor/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v0, 0x7f120660

    .line 98
    invoke-virtual {p1, v0}, Lcolor/support/v7/app/AlertDialog$Builder;->setTitle(I)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object p1

    const v0, 0x7f12065f

    .line 99
    invoke-virtual {p1, v0}, Lcolor/support/v7/app/AlertDialog$Builder;->setMessage(I)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object p1

    const v0, 0x104000a

    const/4 v1, 0x0

    .line 100
    invoke-virtual {p1, v0, v1}, Lcolor/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object p1

    .line 101
    invoke-virtual {p1}, Lcolor/support/v7/app/AlertDialog$Builder;->create()Lcolor/support/v7/app/AlertDialog;

    move-result-object p1

    .line 102
    invoke-virtual {p1}, Lcolor/support/v7/app/AlertDialog;->show()V

    :cond_0
    return-void
.end method
