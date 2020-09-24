.class public Lcom/android/settings/security/trustagent/TrustAgentListPreferenceController;
.super Lcom/android/settingslib/core/a;
.source "TrustAgentListPreferenceController.java"

# interfaces
.implements Lcom/android/settings/core/d;
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/a/b;
.implements Lcom/android/settingslib/core/lifecycle/a/h;
.implements Lcom/android/settingslib/core/lifecycle/a/i;


# static fields
.field protected static final a:I


# instance fields
.field protected final b:Lcom/android/internal/widget/LockPatternUtils;

.field protected final c:Lcom/android/settings/security/trustagent/b;

.field protected d:Landroidx/preference/PreferenceCategory;

.field private final e:Lcom/android/settings/security/SecuritySettings;

.field private f:Landroid/content/Intent;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 59
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    sput v0, Lcom/android/settings/security/trustagent/TrustAgentListPreferenceController;->a:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/security/SecuritySettings;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V
    .locals 1

    .line 70
    invoke-direct {p0, p1}, Lcom/android/settingslib/core/a;-><init>(Landroid/content/Context;)V

    .line 71
    invoke-static {p1}, Lcom/android/settings/overlay/b;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/b;

    move-result-object v0

    .line 72
    invoke-virtual {v0}, Lcom/android/settings/overlay/b;->getSecurityFeatureProvider()Lcom/android/settings/security/f;

    move-result-object v0

    .line 73
    iput-object p2, p0, Lcom/android/settings/security/trustagent/TrustAgentListPreferenceController;->e:Lcom/android/settings/security/SecuritySettings;

    .line 74
    invoke-interface {v0, p1}, Lcom/android/settings/security/f;->a(Landroid/content/Context;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/security/trustagent/TrustAgentListPreferenceController;->b:Lcom/android/internal/widget/LockPatternUtils;

    .line 75
    invoke-interface {v0}, Lcom/android/settings/security/f;->a()Lcom/android/settings/security/trustagent/b;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/security/trustagent/TrustAgentListPreferenceController;->c:Lcom/android/settings/security/trustagent/b;

    if-eqz p3, :cond_0

    .line 77
    invoke-virtual {p3, p0}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    :cond_0
    return-void
.end method


# virtual methods
.method protected a()V
    .locals 7

    .line 140
    iget-object v0, p0, Lcom/android/settings/security/trustagent/TrustAgentListPreferenceController;->d:Landroidx/preference/PreferenceCategory;

    if-nez v0, :cond_0

    return-void

    .line 145
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/settings/security/trustagent/TrustAgentListPreferenceController;->d:Landroidx/preference/PreferenceCategory;

    const-string v1, "trust_agent"

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 149
    iget-object v1, p0, Lcom/android/settings/security/trustagent/TrustAgentListPreferenceController;->d:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v1, v0}, Landroidx/preference/PreferenceCategory;->removePreference(Landroidx/preference/Preference;)Z

    goto :goto_0

    .line 153
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/security/trustagent/TrustAgentListPreferenceController;->isAvailable()Z

    move-result v0

    if-nez v0, :cond_2

    return-void

    .line 157
    :cond_2
    iget-object v0, p0, Lcom/android/settings/security/trustagent/TrustAgentListPreferenceController;->b:Lcom/android/internal/widget/LockPatternUtils;

    sget v2, Lcom/android/settings/security/trustagent/TrustAgentListPreferenceController;->a:I

    invoke-virtual {v0, v2}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v0

    .line 158
    iget-object v2, p0, Lcom/android/settings/security/trustagent/TrustAgentListPreferenceController;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/settings/security/trustagent/TrustAgentListPreferenceController;->b:Lcom/android/internal/widget/LockPatternUtils;

    .line 159
    invoke-static {v2, v3}, Lcom/android/settings/security/trustagent/b;->b(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;)Ljava/util/List;

    move-result-object v2

    .line 163
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settings/security/trustagent/b$a;

    .line 164
    new-instance v4, Lcom/android/settingslib/RestrictedPreference;

    iget-object v5, p0, Lcom/android/settings/security/trustagent/TrustAgentListPreferenceController;->d:Landroidx/preference/PreferenceCategory;

    .line 165
    invoke-virtual {v5}, Landroidx/preference/PreferenceCategory;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/android/settingslib/RestrictedPreference;-><init>(Landroid/content/Context;)V

    .line 166
    invoke-virtual {v4, v1}, Lcom/android/settingslib/RestrictedPreference;->setKey(Ljava/lang/String;)V

    .line 167
    iget-object v5, v3, Lcom/android/settings/security/trustagent/b$a;->b:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/android/settingslib/RestrictedPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 168
    iget-object v5, v3, Lcom/android/settings/security/trustagent/b$a;->c:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/android/settingslib/RestrictedPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 170
    new-instance v5, Landroid/content/Intent;

    const-string v6, "android.intent.action.MAIN"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v6, v3, Lcom/android/settings/security/trustagent/b$a;->a:Landroid/content/ComponentName;

    .line 171
    invoke-virtual {v5, v6}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v5

    .line 170
    invoke-virtual {v4, v5}, Lcom/android/settingslib/RestrictedPreference;->setIntent(Landroid/content/Intent;)V

    .line 172
    iget-object v3, v3, Lcom/android/settings/security/trustagent/b$a;->d:Lcom/android/settingslib/g$a;

    invoke-virtual {v4, v3}, Lcom/android/settingslib/RestrictedPreference;->a(Lcom/android/settingslib/g$a;)V

    .line 173
    invoke-virtual {v4}, Lcom/android/settingslib/RestrictedPreference;->m()Z

    move-result v3

    if-nez v3, :cond_3

    if-nez v0, :cond_3

    const/4 v3, 0x0

    .line 174
    invoke-virtual {v4, v3}, Lcom/android/settingslib/RestrictedPreference;->setEnabled(Z)V

    const v3, 0x7f1207ea

    .line 175
    invoke-virtual {v4, v3}, Lcom/android/settingslib/RestrictedPreference;->setSummary(I)V

    .line 178
    :cond_3
    iget-object v3, p0, Lcom/android/settings/security/trustagent/TrustAgentListPreferenceController;->d:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v3, v4}, Landroidx/preference/PreferenceCategory;->addPreference(Landroidx/preference/Preference;)Z

    goto :goto_1

    :cond_4
    return-void
.end method

.method public final a(II)Z
    .locals 1

    const/16 v0, 0x7e

    if-ne p1, v0, :cond_1

    const/4 p1, -0x1

    if-ne p2, p1, :cond_1

    .line 184
    iget-object p1, p0, Lcom/android/settings/security/trustagent/TrustAgentListPreferenceController;->f:Landroid/content/Intent;

    if-eqz p1, :cond_0

    .line 185
    iget-object p2, p0, Lcom/android/settings/security/trustagent/TrustAgentListPreferenceController;->e:Lcom/android/settings/security/SecuritySettings;

    invoke-virtual {p2, p1}, Lcom/android/settings/security/SecuritySettings;->startActivity(Landroid/content/Intent;)V

    const/4 p1, 0x0

    .line 186
    iput-object p1, p0, Lcom/android/settings/security/trustagent/TrustAgentListPreferenceController;->f:Landroid/content/Intent;

    :cond_0
    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    .line 93
    invoke-super {p0, p1}, Lcom/android/settingslib/core/a;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    const-string v0, "security_category"

    .line 94
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/PreferenceCategory;

    iput-object p1, p0, Lcom/android/settings/security/trustagent/TrustAgentListPreferenceController;->d:Landroidx/preference/PreferenceCategory;

    return-void
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    const-string v0, "trust_agent"

    return-object v0
.end method

.method public handlePreferenceTreeClick(Landroidx/preference/Preference;)Z
    .locals 3

    .line 117
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings/security/trustagent/TrustAgentListPreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 118
    invoke-super {p0, p1}, Lcom/android/settingslib/core/a;->handlePreferenceTreeClick(Landroidx/preference/Preference;)Z

    move-result p1

    return p1

    .line 120
    :cond_0
    new-instance v0, Lcom/android/settings/password/b;

    iget-object v1, p0, Lcom/android/settings/security/trustagent/TrustAgentListPreferenceController;->e:Lcom/android/settings/security/SecuritySettings;

    .line 121
    invoke-virtual {v1}, Lcom/android/settings/security/SecuritySettings;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/security/trustagent/TrustAgentListPreferenceController;->e:Lcom/android/settings/security/SecuritySettings;

    invoke-direct {v0, v1, v2}, Lcom/android/settings/password/b;-><init>(Landroid/app/Activity;Landroidx/fragment/app/Fragment;)V

    .line 122
    invoke-virtual {p1}, Landroidx/preference/Preference;->getIntent()Landroid/content/Intent;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/security/trustagent/TrustAgentListPreferenceController;->f:Landroid/content/Intent;

    const/16 v1, 0x7e

    .line 124
    invoke-virtual {p1}, Landroidx/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object p1

    .line 123
    invoke-virtual {v0, v1, p1}, Lcom/android/settings/password/b;->a(ILjava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 126
    iget-object p1, p0, Lcom/android/settings/security/trustagent/TrustAgentListPreferenceController;->f:Landroid/content/Intent;

    if-eqz p1, :cond_1

    .line 128
    iget-object v0, p0, Lcom/android/settings/security/trustagent/TrustAgentListPreferenceController;->e:Lcom/android/settings/security/SecuritySettings;

    invoke-virtual {v0, p1}, Lcom/android/settings/security/SecuritySettings;->startActivity(Landroid/content/Intent;)V

    const/4 p1, 0x0

    .line 129
    iput-object p1, p0, Lcom/android/settings/security/trustagent/TrustAgentListPreferenceController;->f:Landroid/content/Intent;

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method public isAvailable()Z
    .locals 2

    .line 83
    iget-object v0, p0, Lcom/android/settings/security/trustagent/TrustAgentListPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f050045

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    if-eqz p1, :cond_0

    const-string v0, "trust_agent_click_intent"

    .line 103
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 104
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/content/Intent;

    iput-object p1, p0, Lcom/android/settings/security/trustagent/TrustAgentListPreferenceController;->f:Landroid/content/Intent;

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 0

    .line 136
    invoke-virtual {p0}, Lcom/android/settings/security/trustagent/TrustAgentListPreferenceController;->a()V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 110
    iget-object v0, p0, Lcom/android/settings/security/trustagent/TrustAgentListPreferenceController;->f:Landroid/content/Intent;

    if-eqz v0, :cond_0

    const-string v1, "trust_agent_click_intent"

    .line 111
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    :cond_0
    return-void
.end method
