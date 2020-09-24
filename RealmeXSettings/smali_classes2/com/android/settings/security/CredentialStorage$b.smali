.class final Lcom/android/settings/security/CredentialStorage$b;
.super Ljava/lang/Object;
.source "CredentialStorage.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/security/CredentialStorage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/android/settings/security/CredentialStorage;

.field private b:Z


# direct methods
.method private constructor <init>(Lcom/android/settings/security/CredentialStorage;)V
    .locals 2

    .line 240
    iput-object p1, p0, Lcom/android/settings/security/CredentialStorage$b;->a:Lcom/android/settings/security/CredentialStorage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 241
    new-instance v0, Lcolor/support/v7/app/AlertDialog$Builder;

    const v1, 0x7f1303b3

    invoke-direct {v0, p1, v1}, Lcolor/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    const p1, 0x1040014

    .line 243
    invoke-virtual {v0, p1}, Lcolor/support/v7/app/AlertDialog$Builder;->setTitle(I)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object p1

    const v0, 0x7f12064f

    .line 244
    invoke-virtual {p1, v0}, Lcolor/support/v7/app/AlertDialog$Builder;->setMessage(I)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object p1

    const v0, 0x104000a

    .line 245
    invoke-virtual {p1, v0, p0}, Lcolor/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object p1

    const/high16 v0, 0x1040000

    .line 246
    invoke-virtual {p1, v0, p0}, Lcolor/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object p1

    .line 247
    invoke-virtual {p1}, Lcolor/support/v7/app/AlertDialog$Builder;->create()Lcolor/support/v7/app/AlertDialog;

    move-result-object p1

    .line 248
    invoke-virtual {p1, p0}, Lcolor/support/v7/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 249
    invoke-virtual {p1}, Lcolor/support/v7/app/AlertDialog;->show()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/security/CredentialStorage;B)V
    .locals 0

    .line 236
    invoke-direct {p0, p1}, Lcom/android/settings/security/CredentialStorage$b;-><init>(Lcom/android/settings/security/CredentialStorage;)V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    const/4 p1, -0x1

    if-ne p2, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 254
    :goto_0
    iput-boolean p1, p0, Lcom/android/settings/security/CredentialStorage$b;->b:Z

    return-void
.end method

.method public final onDismiss(Landroid/content/DialogInterface;)V
    .locals 3

    .line 259
    iget-boolean p1, p0, Lcom/android/settings/security/CredentialStorage$b;->b:Z

    if-nez p1, :cond_0

    .line 260
    iget-object p1, p0, Lcom/android/settings/security/CredentialStorage$b;->a:Lcom/android/settings/security/CredentialStorage;

    invoke-virtual {p1}, Lcom/android/settings/security/CredentialStorage;->finish()V

    return-void

    .line 263
    :cond_0
    iget-object p1, p0, Lcom/android/settings/security/CredentialStorage$b;->a:Lcom/android/settings/security/CredentialStorage;

    invoke-virtual {p1}, Lcom/android/settings/security/CredentialStorage;->getBaseContext()Landroid/content/Context;

    move-result-object p1

    const/4 v0, 0x0

    const-string v1, "20120"

    const-string v2, "event_click_remove_certificate_dialog_confirm"

    invoke-static {p1, v1, v2, v0}, Lcom/coloros/settings/utils/aj;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    const/4 p1, 0x0

    .line 264
    iput-boolean p1, p0, Lcom/android/settings/security/CredentialStorage$b;->b:Z

    .line 265
    iget-object v0, p0, Lcom/android/settings/security/CredentialStorage$b;->a:Lcom/android/settings/security/CredentialStorage;

    invoke-static {v0}, Lcom/android/settings/security/CredentialStorage;->a(Lcom/android/settings/security/CredentialStorage;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v0

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 267
    new-instance v0, Lcom/android/settings/security/CredentialStorage$c;

    iget-object v1, p0, Lcom/android/settings/security/CredentialStorage$b;->a:Lcom/android/settings/security/CredentialStorage;

    invoke-direct {v0, v1, p1}, Lcom/android/settings/security/CredentialStorage$c;-><init>(Lcom/android/settings/security/CredentialStorage;B)V

    new-array p1, p1, [Ljava/lang/Void;

    invoke-virtual {v0, p1}, Lcom/android/settings/security/CredentialStorage$c;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void

    .line 268
    :cond_1
    iget-object p1, p0, Lcom/android/settings/security/CredentialStorage$b;->a:Lcom/android/settings/security/CredentialStorage;

    invoke-static {p1}, Lcom/android/settings/security/CredentialStorage;->b(Lcom/android/settings/security/CredentialStorage;)Z

    move-result p1

    if-nez p1, :cond_2

    const-string p1, "CredentialStorage"

    const-string v0, "Failed to launch credential confirmation for a secure user."

    .line 269
    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    iget-object p1, p0, Lcom/android/settings/security/CredentialStorage$b;->a:Lcom/android/settings/security/CredentialStorage;

    invoke-virtual {p1}, Lcom/android/settings/security/CredentialStorage;->finish()V

    :cond_2
    return-void
.end method
