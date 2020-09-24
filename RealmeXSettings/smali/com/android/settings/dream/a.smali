.class public final Lcom/android/settings/dream/a;
.super Lcom/android/settingslib/core/a;
.source "StartNowPreferenceController.java"

# interfaces
.implements Lcom/android/settings/core/d;


# instance fields
.field private final a:Lcom/android/settingslib/i/a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 38
    invoke-direct {p0, p1}, Lcom/android/settingslib/core/a;-><init>(Landroid/content/Context;)V

    .line 40
    invoke-static {p1}, Lcom/android/settingslib/i/a;->a(Landroid/content/Context;)Lcom/android/settingslib/i/a;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/dream/a;->a:Lcom/android/settingslib/i/a;

    return-void
.end method

.method private synthetic a(Landroid/view/View;)V
    .locals 2

    .line 59
    iget-object p1, p0, Lcom/android/settings/dream/a;->a:Lcom/android/settingslib/i/a;

    .line 1282
    iget-object v0, p1, Lcom/android/settingslib/i/a;->a:Landroid/service/dreams/IDreamManager;

    if-eqz v0, :cond_0

    .line 1285
    :try_start_0
    iget-object p1, p1, Lcom/android/settingslib/i/a;->a:Landroid/service/dreams/IDreamManager;

    invoke-interface {p1}, Landroid/service/dreams/IDreamManager;->dream()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string v0, "DreamBackend"

    const-string v1, "Failed to dream"

    .line 1287
    invoke-static {v0, v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    return-void
.end method

.method public static synthetic lambda$BCanVUCRMa7mNs9j43QKIzGcrFo(Lcom/android/settings/dream/a;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/dream/a;->a(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public final displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    .line 55
    invoke-super {p0, p1}, Lcom/android/settingslib/core/a;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 57
    invoke-virtual {p0}, Lcom/android/settings/dream/a;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/android/settingslib/widget/LayoutPreference;

    const v0, 0x7f0a0227

    .line 58
    invoke-virtual {p1, v0}, Lcom/android/settingslib/widget/LayoutPreference;->a(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    .line 59
    new-instance v0, Lcom/android/settings/dream/-$$Lambda$a$BCanVUCRMa7mNs9j43QKIzGcrFo;

    invoke-direct {v0, p0}, Lcom/android/settings/dream/-$$Lambda$a$BCanVUCRMa7mNs9j43QKIzGcrFo;-><init>(Lcom/android/settings/dream/a;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public final getPreferenceKey()Ljava/lang/String;
    .locals 1

    const-string v0, "dream_start_now_button_container"

    return-object v0
.end method

.method public final isAvailable()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final updateState(Landroidx/preference/Preference;)V
    .locals 2

    .line 64
    invoke-super {p0, p1}, Lcom/android/settingslib/core/a;->updateState(Landroidx/preference/Preference;)V

    .line 66
    check-cast p1, Lcom/android/settingslib/widget/LayoutPreference;

    const v0, 0x7f0a0227

    .line 67
    invoke-virtual {p1, v0}, Lcom/android/settingslib/widget/LayoutPreference;->a(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    .line 68
    iget-object v0, p0, Lcom/android/settings/dream/a;->a:Lcom/android/settingslib/i/a;

    invoke-virtual {v0}, Lcom/android/settingslib/i/a;->c()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    return-void
.end method
