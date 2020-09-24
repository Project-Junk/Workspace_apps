.class public Lcom/android/settings/security/trustagent/TrustAgentsPreferenceController;
.super Lcom/android/settings/core/a;
.source "TrustAgentsPreferenceController.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/a/j;


# static fields
.field private static final TRUST_AGENT_INTENT:Landroid/content/Intent;


# instance fields
.field private final mActiveAgents:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation
.end field

.field private final mAvailableAgents:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/content/ComponentName;",
            "Lcom/android/settings/security/trustagent/a;",
            ">;"
        }
    .end annotation
.end field

.field private final mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

.field private final mIconDrawableFactory:Landroid/util/IconDrawableFactory;

.field private final mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private final mPackageManager:Landroid/content/pm/PackageManager;

.field private mScreen:Landroidx/preference/PreferenceScreen;

.field private final mTrustAgentManager:Lcom/android/settings/security/trustagent/b;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 54
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.service.trust.TrustAgentService"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/settings/security/trustagent/TrustAgentsPreferenceController;->TRUST_AGENT_INTENT:Landroid/content/Intent;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .line 68
    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/a;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 69
    new-instance p2, Landroid/util/ArrayMap;

    invoke-direct {p2}, Landroid/util/ArrayMap;-><init>()V

    iput-object p2, p0, Lcom/android/settings/security/trustagent/TrustAgentsPreferenceController;->mAvailableAgents:Landroid/util/ArrayMap;

    .line 70
    new-instance p2, Landroid/util/ArraySet;

    invoke-direct {p2}, Landroid/util/ArraySet;-><init>()V

    iput-object p2, p0, Lcom/android/settings/security/trustagent/TrustAgentsPreferenceController;->mActiveAgents:Landroid/util/ArraySet;

    .line 71
    const-class p2, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/app/admin/DevicePolicyManager;

    iput-object p2, p0, Lcom/android/settings/security/trustagent/TrustAgentsPreferenceController;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    .line 72
    invoke-static {p1}, Landroid/util/IconDrawableFactory;->newInstance(Landroid/content/Context;)Landroid/util/IconDrawableFactory;

    move-result-object p2

    iput-object p2, p0, Lcom/android/settings/security/trustagent/TrustAgentsPreferenceController;->mIconDrawableFactory:Landroid/util/IconDrawableFactory;

    .line 74
    invoke-static {p1}, Lcom/android/settings/overlay/b;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/b;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/settings/overlay/b;->getSecurityFeatureProvider()Lcom/android/settings/security/f;

    move-result-object p2

    .line 75
    invoke-interface {p2}, Lcom/android/settings/security/f;->a()Lcom/android/settings/security/trustagent/b;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/security/trustagent/TrustAgentsPreferenceController;->mTrustAgentManager:Lcom/android/settings/security/trustagent/b;

    .line 76
    invoke-interface {p2, p1}, Lcom/android/settings/security/f;->a(Landroid/content/Context;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object p2

    iput-object p2, p0, Lcom/android/settings/security/trustagent/TrustAgentsPreferenceController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 77
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/security/trustagent/TrustAgentsPreferenceController;->mPackageManager:Landroid/content/pm/PackageManager;

    return-void
.end method

.method private findAvailableTrustAgents()V
    .locals 5

    .line 141
    iget-object v0, p0, Lcom/android/settings/security/trustagent/TrustAgentsPreferenceController;->mPackageManager:Landroid/content/pm/PackageManager;

    sget-object v1, Lcom/android/settings/security/trustagent/TrustAgentsPreferenceController;->TRUST_AGENT_INTENT:Landroid/content/Intent;

    const/16 v2, 0x80

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 143
    iget-object v1, p0, Lcom/android/settings/security/trustagent/TrustAgentsPreferenceController;->mAvailableAgents:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->clear()V

    .line 144
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    .line 145
    iget-object v2, v1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    if-eqz v2, :cond_0

    .line 148
    iget-object v2, p0, Lcom/android/settings/security/trustagent/TrustAgentsPreferenceController;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-static {v1, v2}, Lcom/android/settings/security/trustagent/b;->a(Landroid/content/pm/ResolveInfo;Landroid/content/pm/PackageManager;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 152
    iget-object v2, p0, Lcom/android/settings/security/trustagent/TrustAgentsPreferenceController;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 153
    invoke-static {v2, v1}, Lcom/android/settings/security/trustagent/b;->a(Landroid/content/pm/PackageManager;Landroid/content/pm/ResolveInfo;)Lcom/android/settings/security/trustagent/b$a;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 154
    iget-object v3, v2, Lcom/android/settings/security/trustagent/b$a;->a:Landroid/content/ComponentName;

    if-eqz v3, :cond_0

    iget-object v2, v2, Lcom/android/settings/security/trustagent/b$a;->b:Ljava/lang/String;

    .line 155
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 159
    iget-object v2, p0, Lcom/android/settings/security/trustagent/TrustAgentsPreferenceController;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v1, v2}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v2

    .line 160
    invoke-static {v1}, Lcom/android/settings/security/trustagent/b;->a(Landroid/content/pm/ResolveInfo;)Landroid/content/ComponentName;

    move-result-object v3

    .line 161
    iget-object v4, p0, Lcom/android/settings/security/trustagent/TrustAgentsPreferenceController;->mIconDrawableFactory:Landroid/util/IconDrawableFactory;

    .line 162
    invoke-virtual {v1}, Landroid/content/pm/ResolveInfo;->getComponentInfo()Landroid/content/pm/ComponentInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 161
    invoke-virtual {v4, v1}, Landroid/util/IconDrawableFactory;->getBadgedIcon(Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 163
    new-instance v4, Lcom/android/settings/security/trustagent/a;

    invoke-direct {v4, v2, v3, v1}, Lcom/android/settings/security/trustagent/a;-><init>(Ljava/lang/CharSequence;Landroid/content/ComponentName;Landroid/graphics/drawable/Drawable;)V

    .line 164
    iget-object v1, p0, Lcom/android/settings/security/trustagent/TrustAgentsPreferenceController;->mAvailableAgents:Landroid/util/ArrayMap;

    invoke-virtual {v1, v3, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    return-void
.end method

.method private loadActiveAgents()V
    .locals 2

    .line 129
    iget-object v0, p0, Lcom/android/settings/security/trustagent/TrustAgentsPreferenceController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 130
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    .line 129
    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->getEnabledTrustAgents(I)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 132
    iget-object v1, p0, Lcom/android/settings/security/trustagent/TrustAgentsPreferenceController;->mActiveAgents:Landroid/util/ArraySet;

    invoke-virtual {v1, v0}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    :cond_0
    return-void
.end method

.method private removeUselessExistingPreferences()V
    .locals 4

    .line 169
    iget-object v0, p0, Lcom/android/settings/security/trustagent/TrustAgentsPreferenceController;->mScreen:Landroidx/preference/PreferenceScreen;

    invoke-virtual {v0}, Landroidx/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v0

    if-gtz v0, :cond_0

    return-void

    :cond_0
    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_2

    .line 174
    iget-object v1, p0, Lcom/android/settings/security/trustagent/TrustAgentsPreferenceController;->mScreen:Landroidx/preference/PreferenceScreen;

    invoke-virtual {v1, v0}, Landroidx/preference/PreferenceScreen;->getPreference(I)Landroidx/preference/Preference;

    move-result-object v1

    .line 178
    invoke-virtual {v1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 183
    iget-object v3, p0, Lcom/android/settings/security/trustagent/TrustAgentsPreferenceController;->mAvailableAgents:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 184
    iget-object v3, p0, Lcom/android/settings/security/trustagent/TrustAgentsPreferenceController;->mScreen:Landroidx/preference/PreferenceScreen;

    invoke-virtual {v3, v1}, Landroidx/preference/PreferenceScreen;->removePreference(Landroidx/preference/Preference;)Z

    .line 185
    iget-object v1, p0, Lcom/android/settings/security/trustagent/TrustAgentsPreferenceController;->mActiveAgents:Landroid/util/ArraySet;

    invoke-virtual {v1, v2}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private saveActiveAgents()V
    .locals 3

    .line 137
    iget-object v0, p0, Lcom/android/settings/security/trustagent/TrustAgentsPreferenceController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v1, p0, Lcom/android/settings/security/trustagent/TrustAgentsPreferenceController;->mActiveAgents:Landroid/util/ArraySet;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/widget/LockPatternUtils;->setEnabledTrustAgents(Ljava/util/Collection;I)V

    return-void
.end method

.method private updateAgents()V
    .locals 7

    .line 97
    invoke-direct {p0}, Lcom/android/settings/security/trustagent/TrustAgentsPreferenceController;->findAvailableTrustAgents()V

    .line 98
    invoke-direct {p0}, Lcom/android/settings/security/trustagent/TrustAgentsPreferenceController;->loadActiveAgents()V

    .line 99
    invoke-direct {p0}, Lcom/android/settings/security/trustagent/TrustAgentsPreferenceController;->removeUselessExistingPreferences()V

    .line 101
    iget-object v0, p0, Lcom/android/settings/security/trustagent/TrustAgentsPreferenceController;->mContext:Landroid/content/Context;

    .line 102
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    const/16 v2, 0x10

    .line 101
    invoke-static {v0, v2, v1}, Lcom/android/settingslib/h;->a(Landroid/content/Context;II)Lcom/android/settingslib/g$a;

    move-result-object v0

    .line 104
    iget-object v1, p0, Lcom/android/settings/security/trustagent/TrustAgentsPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070556

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 105
    iget-object v2, p0, Lcom/android/settings/security/trustagent/TrustAgentsPreferenceController;->mAvailableAgents:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settings/security/trustagent/a;

    .line 1038
    iget-object v4, v3, Lcom/android/settings/security/trustagent/a;->b:Landroid/content/ComponentName;

    .line 107
    iget-object v5, p0, Lcom/android/settings/security/trustagent/TrustAgentsPreferenceController;->mScreen:Landroidx/preference/PreferenceScreen;

    .line 108
    invoke-virtual {v4}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroidx/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v5

    check-cast v5, Lcom/coloros/settings/widget/preference/ColorRestrictedSwitchPreference;

    if-nez v5, :cond_0

    .line 110
    new-instance v5, Lcom/coloros/settings/widget/preference/ColorRestrictedSwitchPreference;

    iget-object v6, p0, Lcom/android/settings/security/trustagent/TrustAgentsPreferenceController;->mScreen:Landroidx/preference/PreferenceScreen;

    invoke-virtual {v6}, Landroidx/preference/PreferenceScreen;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/coloros/settings/widget/preference/ColorRestrictedSwitchPreference;-><init>(Landroid/content/Context;)V

    .line 112
    :cond_0
    invoke-virtual {v4}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/coloros/settings/widget/preference/ColorRestrictedSwitchPreference;->setKey(Ljava/lang/String;)V

    const/4 v6, 0x1

    .line 113
    invoke-virtual {v5, v6}, Lcom/coloros/settings/widget/preference/ColorRestrictedSwitchPreference;->b(Z)V

    .line 1195
    iget v6, v5, Lcom/coloros/settings/widget/preference/ColorRestrictedSwitchPreference;->e:I

    if-eq v6, v1, :cond_1

    .line 1196
    iput v1, v5, Lcom/coloros/settings/widget/preference/ColorRestrictedSwitchPreference;->e:I

    .line 1197
    invoke-virtual {v5}, Lcom/coloros/settings/widget/preference/ColorRestrictedSwitchPreference;->notifyChanged()V

    .line 2034
    :cond_1
    iget-object v6, v3, Lcom/android/settings/security/trustagent/a;->a:Ljava/lang/CharSequence;

    .line 115
    invoke-virtual {v5, v6}, Lcom/coloros/settings/widget/preference/ColorRestrictedSwitchPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 2042
    iget-object v3, v3, Lcom/android/settings/security/trustagent/a;->c:Landroid/graphics/drawable/Drawable;

    .line 116
    invoke-virtual {v5, v3}, Lcom/coloros/settings/widget/preference/ColorRestrictedSwitchPreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 117
    invoke-virtual {v5, p0}, Lcom/coloros/settings/widget/preference/ColorRestrictedSwitchPreference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 118
    iget-object v3, p0, Lcom/android/settings/security/trustagent/TrustAgentsPreferenceController;->mActiveAgents:Landroid/util/ArraySet;

    invoke-virtual {v3, v4}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v3

    invoke-virtual {v5, v3}, Lcom/coloros/settings/widget/preference/ColorRestrictedSwitchPreference;->setChecked(Z)V

    if-eqz v0, :cond_2

    .line 119
    iget-object v3, p0, Lcom/android/settings/security/trustagent/TrustAgentsPreferenceController;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    const/4 v6, 0x0

    invoke-virtual {v3, v6, v4}, Landroid/app/admin/DevicePolicyManager;->getTrustAgentConfiguration(Landroid/content/ComponentName;Landroid/content/ComponentName;)Ljava/util/List;

    move-result-object v3

    if-nez v3, :cond_2

    const/4 v3, 0x0

    .line 121
    invoke-virtual {v5, v3}, Lcom/coloros/settings/widget/preference/ColorRestrictedSwitchPreference;->setChecked(Z)V

    .line 122
    invoke-virtual {v5, v0}, Lcom/coloros/settings/widget/preference/ColorRestrictedSwitchPreference;->a(Lcom/android/settingslib/g$a;)V

    .line 124
    :cond_2
    iget-object v3, p0, Lcom/android/settings/security/trustagent/TrustAgentsPreferenceController;->mScreen:Landroidx/preference/PreferenceScreen;

    invoke-virtual {v3, v5}, Landroidx/preference/PreferenceScreen;->addPreference(Landroidx/preference/Preference;)Z

    goto :goto_0

    :cond_3
    return-void
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 0

    .line 82
    invoke-super {p0, p1}, Lcom/android/settings/core/a;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 83
    iput-object p1, p0, Lcom/android/settings/security/trustagent/TrustAgentsPreferenceController;->mScreen:Landroidx/preference/PreferenceScreen;

    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 5

    .line 192
    instance-of v0, p1, Landroidx/preference/TwoStatePreference;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 195
    :cond_0
    iget-object v0, p0, Lcom/android/settings/security/trustagent/TrustAgentsPreferenceController;->mAvailableAgents:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings/security/trustagent/a;

    .line 3038
    iget-object v2, v2, Lcom/android/settings/security/trustagent/a;->b:Landroid/content/ComponentName;

    .line 197
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 200
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/android/settings/security/trustagent/TrustAgentsPreferenceController;->mActiveAgents:Landroid/util/ArraySet;

    invoke-virtual {p1, v2}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 201
    iget-object p1, p0, Lcom/android/settings/security/trustagent/TrustAgentsPreferenceController;->mActiveAgents:Landroid/util/ArraySet;

    invoke-virtual {p1, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 203
    :cond_2
    iget-object p1, p0, Lcom/android/settings/security/trustagent/TrustAgentsPreferenceController;->mActiveAgents:Landroid/util/ArraySet;

    invoke-virtual {p1, v2}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 205
    :goto_0
    invoke-direct {p0}, Lcom/android/settings/security/trustagent/TrustAgentsPreferenceController;->saveActiveAgents()V

    const/4 p1, 0x1

    return p1

    :cond_3
    return v1
.end method

.method public onStart()V
    .locals 0

    .line 93
    invoke-direct {p0}, Lcom/android/settings/security/trustagent/TrustAgentsPreferenceController;->updateAgents()V

    return-void
.end method
