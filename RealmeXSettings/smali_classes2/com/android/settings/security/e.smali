.class public abstract Lcom/android/settings/security/e;
.super Lcom/android/settingslib/core/a;
.source "RestrictedEncryptionPreferenceController.java"

# interfaces
.implements Lcom/android/settings/core/d;


# instance fields
.field private final a:Landroid/os/UserHandle;

.field protected final b:Landroid/os/UserManager;

.field private final c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .line 35
    invoke-direct {p0, p1}, Lcom/android/settingslib/core/a;-><init>(Landroid/content/Context;)V

    .line 36
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/security/e;->a:Landroid/os/UserHandle;

    const-string v0, "user"

    .line 37
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/UserManager;

    iput-object p1, p0, Lcom/android/settings/security/e;->b:Landroid/os/UserManager;

    .line 38
    iput-object p2, p0, Lcom/android/settings/security/e;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public isAvailable()Z
    .locals 3

    .line 43
    iget-object v0, p0, Lcom/android/settings/security/e;->b:Landroid/os/UserManager;

    iget-object v1, p0, Lcom/android/settings/security/e;->c:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/settings/security/e;->a:Landroid/os/UserHandle;

    invoke-virtual {v0, v1, v2}, Landroid/os/UserManager;->hasBaseUserRestriction(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
