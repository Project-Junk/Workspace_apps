.class public final Lcom/android/settings/enterprise/k;
.super Lcom/android/settings/enterprise/m;
.source "CaCertsCurrentUserPreferenceController.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 30
    invoke-direct {p0, p1}, Lcom/android/settings/enterprise/m;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected final a()I
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/android/settings/enterprise/k;->a:Lcom/android/settings/enterprise/o;

    invoke-interface {v0}, Lcom/android/settings/enterprise/o;->p()I

    move-result v0

    return v0
.end method

.method public final getPreferenceKey()Ljava/lang/String;
    .locals 1

    const-string v0, "ca_certs_current_user"

    return-object v0
.end method

.method public final updateState(Landroidx/preference/Preference;)V
    .locals 1

    .line 40
    invoke-super {p0, p1}, Lcom/android/settings/enterprise/m;->updateState(Landroidx/preference/Preference;)V

    .line 41
    iget-object v0, p0, Lcom/android/settings/enterprise/k;->a:Lcom/android/settings/enterprise/o;

    invoke-interface {v0}, Lcom/android/settings/enterprise/o;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f120909

    goto :goto_0

    :cond_0
    const v0, 0x7f120908

    :goto_0
    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setTitle(I)V

    return-void
.end method
