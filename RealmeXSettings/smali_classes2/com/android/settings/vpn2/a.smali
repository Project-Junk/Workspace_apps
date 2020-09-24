.class final Lcom/android/settings/vpn2/a;
.super Lcolor/support/v7/app/AlertDialog;
.source "AppDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/vpn2/a$a;
    }
.end annotation


# instance fields
.field private final a:Lcom/android/settings/vpn2/a$a;

.field private final b:Landroid/content/pm/PackageInfo;

.field private final c:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/android/settings/vpn2/a$a;Landroid/content/pm/PackageInfo;Ljava/lang/String;)V
    .locals 0

    .line 45
    invoke-direct {p0, p1}, Lcolor/support/v7/app/AlertDialog;-><init>(Landroid/content/Context;)V

    .line 47
    iput-object p2, p0, Lcom/android/settings/vpn2/a;->a:Lcom/android/settings/vpn2/a$a;

    .line 48
    iput-object p3, p0, Lcom/android/settings/vpn2/a;->b:Landroid/content/pm/PackageInfo;

    .line 49
    iput-object p4, p0, Lcom/android/settings/vpn2/a;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    const/4 p1, -0x2

    if-ne p2, p1, :cond_0

    .line 80
    iget-object p1, p0, Lcom/android/settings/vpn2/a;->a:Lcom/android/settings/vpn2/a$a;

    invoke-interface {p1}, Lcom/android/settings/vpn2/a$a;->a()V

    .line 82
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/vpn2/a;->dismiss()V

    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 58
    iget-object v0, p0, Lcom/android/settings/vpn2/a;->c:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/settings/vpn2/a;->setTitle(Ljava/lang/CharSequence;)V

    .line 59
    invoke-virtual {p0}, Lcom/android/settings/vpn2/a;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/android/settings/vpn2/a;->b:Landroid/content/pm/PackageInfo;

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const v2, 0x7f1218df

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/vpn2/a;->setMessage(Ljava/lang/CharSequence;)V

    .line 1066
    invoke-virtual {p0}, Lcom/android/settings/vpn2/a;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f1218b3

    .line 1070
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, -0x2

    .line 1069
    invoke-virtual {p0, v2, v1, p0}, Lcom/android/settings/vpn2/a;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    const v1, 0x7f1218b0

    .line 1074
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, -0x1

    .line 1073
    invoke-virtual {p0, v1, v0, p0}, Lcom/android/settings/vpn2/a;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 62
    invoke-super {p0, p1}, Lcolor/support/v7/app/AlertDialog;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method
