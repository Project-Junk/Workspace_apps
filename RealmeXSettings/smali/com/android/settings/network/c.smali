.class public final Lcom/android/settings/network/c;
.super Lcom/android/settingslib/core/a;
.source "NetworkResetPreferenceController.java"

# interfaces
.implements Lcom/android/settings/core/d;


# instance fields
.field private final a:Lcom/android/settings/network/d;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 30
    invoke-direct {p0, p1}, Lcom/android/settingslib/core/a;-><init>(Landroid/content/Context;)V

    .line 31
    new-instance v0, Lcom/android/settings/network/d;

    invoke-direct {v0, p1}, Lcom/android/settings/network/d;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/network/c;->a:Lcom/android/settings/network/d;

    return-void
.end method


# virtual methods
.method public final getPreferenceKey()Ljava/lang/String;
    .locals 1

    const-string v0, "network_reset_pref"

    return-object v0
.end method

.method public final isAvailable()Z
    .locals 5

    .line 36
    iget-object v0, p0, Lcom/android/settings/network/c;->a:Lcom/android/settings/network/d;

    .line 1050
    iget-object v1, v0, Lcom/android/settings/network/d;->b:Landroid/os/UserManager;

    invoke-virtual {v1}, Landroid/os/UserManager;->isAdminUser()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    .line 2039
    iget-object v0, v0, Lcom/android/settings/network/d;->a:Landroid/content/Context;

    .line 2040
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    const-string v4, "no_network_reset"

    .line 2039
    invoke-static {v0, v4, v1}, Lcom/android/settingslib/h;->b(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v2

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v3

    :goto_1
    if-nez v0, :cond_2

    return v3

    :cond_2
    return v2
.end method
