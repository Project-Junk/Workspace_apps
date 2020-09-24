.class public Lcom/android/settings/password/CredentialCheckResultTracker;
.super Landroidx/fragment/app/Fragment;
.source "CredentialCheckResultTracker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/password/CredentialCheckResultTracker$a;
    }
.end annotation


# instance fields
.field private a:Lcom/android/settings/password/CredentialCheckResultTracker$a;

.field private b:Z

.field private c:Z

.field private d:Landroid/content/Intent;

.field private e:I

.field private f:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 27
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    const/4 v0, 0x0

    .line 30
    iput-boolean v0, p0, Lcom/android/settings/password/CredentialCheckResultTracker;->b:Z

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    const/4 v0, 0x0

    .line 70
    iput-boolean v0, p0, Lcom/android/settings/password/CredentialCheckResultTracker;->b:Z

    .line 71
    iput-boolean v0, p0, Lcom/android/settings/password/CredentialCheckResultTracker;->c:Z

    const/4 v1, 0x0

    .line 72
    iput-object v1, p0, Lcom/android/settings/password/CredentialCheckResultTracker;->d:Landroid/content/Intent;

    .line 73
    iput v0, p0, Lcom/android/settings/password/CredentialCheckResultTracker;->e:I

    .line 74
    iput v0, p0, Lcom/android/settings/password/CredentialCheckResultTracker;->f:I

    return-void
.end method

.method public final a(Lcom/android/settings/password/CredentialCheckResultTracker$a;)V
    .locals 7

    .line 44
    iget-object v0, p0, Lcom/android/settings/password/CredentialCheckResultTracker;->a:Lcom/android/settings/password/CredentialCheckResultTracker$a;

    if-ne v0, p1, :cond_0

    return-void

    .line 48
    :cond_0
    iput-object p1, p0, Lcom/android/settings/password/CredentialCheckResultTracker;->a:Lcom/android/settings/password/CredentialCheckResultTracker$a;

    .line 49
    iget-object v1, p0, Lcom/android/settings/password/CredentialCheckResultTracker;->a:Lcom/android/settings/password/CredentialCheckResultTracker$a;

    if-eqz v1, :cond_1

    iget-boolean p1, p0, Lcom/android/settings/password/CredentialCheckResultTracker;->b:Z

    if-eqz p1, :cond_1

    .line 50
    iget-boolean v2, p0, Lcom/android/settings/password/CredentialCheckResultTracker;->c:Z

    iget-object v3, p0, Lcom/android/settings/password/CredentialCheckResultTracker;->d:Landroid/content/Intent;

    iget v4, p0, Lcom/android/settings/password/CredentialCheckResultTracker;->e:I

    iget v5, p0, Lcom/android/settings/password/CredentialCheckResultTracker;->f:I

    const/4 v6, 0x0

    invoke-interface/range {v1 .. v6}, Lcom/android/settings/password/CredentialCheckResultTracker$a;->a(ZLandroid/content/Intent;IIZ)V

    :cond_1
    return-void
.end method

.method public final a(ZLandroid/content/Intent;II)V
    .locals 6

    .line 56
    iput-boolean p1, p0, Lcom/android/settings/password/CredentialCheckResultTracker;->c:Z

    .line 57
    iput-object p2, p0, Lcom/android/settings/password/CredentialCheckResultTracker;->d:Landroid/content/Intent;

    .line 58
    iput p3, p0, Lcom/android/settings/password/CredentialCheckResultTracker;->e:I

    .line 59
    iput p4, p0, Lcom/android/settings/password/CredentialCheckResultTracker;->f:I

    const/4 p1, 0x1

    .line 61
    iput-boolean p1, p0, Lcom/android/settings/password/CredentialCheckResultTracker;->b:Z

    .line 62
    iget-object v0, p0, Lcom/android/settings/password/CredentialCheckResultTracker;->a:Lcom/android/settings/password/CredentialCheckResultTracker$a;

    if-eqz v0, :cond_0

    .line 63
    iget-boolean v1, p0, Lcom/android/settings/password/CredentialCheckResultTracker;->c:Z

    iget-object v2, p0, Lcom/android/settings/password/CredentialCheckResultTracker;->d:Landroid/content/Intent;

    iget v3, p0, Lcom/android/settings/password/CredentialCheckResultTracker;->e:I

    iget v4, p0, Lcom/android/settings/password/CredentialCheckResultTracker;->f:I

    const/4 v5, 0x1

    invoke-interface/range {v0 .. v5}, Lcom/android/settings/password/CredentialCheckResultTracker$a;->a(ZLandroid/content/Intent;IIZ)V

    const/4 p1, 0x0

    .line 65
    iput-boolean p1, p0, Lcom/android/settings/password/CredentialCheckResultTracker;->b:Z

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 39
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    .line 40
    invoke-virtual {p0, p1}, Lcom/android/settings/password/CredentialCheckResultTracker;->setRetainInstance(Z)V

    return-void
.end method
