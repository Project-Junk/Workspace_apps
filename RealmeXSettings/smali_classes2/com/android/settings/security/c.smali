.class public Lcom/android/settings/security/c;
.super Lcom/android/settings/security/e;
.source "CredentialStoragePreferenceController.java"


# instance fields
.field protected final a:Landroid/security/KeyStore;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "no_config_credentials"

    .line 34
    invoke-direct {p0, p1, v0}, Lcom/android/settings/security/e;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 35
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/security/c;->a:Landroid/security/KeyStore;

    return-void
.end method


# virtual methods
.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    const-string v0, "credential_storage_type"

    return-object v0
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/android/settings/security/c;->a:Landroid/security/KeyStore;

    invoke-virtual {v0}, Landroid/security/KeyStore;->isHardwareBacked()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f120648

    goto :goto_0

    :cond_0
    const v0, 0x7f120649

    :goto_0
    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setSummary(I)V

    return-void
.end method
