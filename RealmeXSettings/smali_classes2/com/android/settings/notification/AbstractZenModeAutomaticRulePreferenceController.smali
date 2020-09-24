.class public abstract Lcom/android/settings/notification/AbstractZenModeAutomaticRulePreferenceController;
.super Lcom/android/settings/notification/AbstractZenModePreferenceController;
.source "AbstractZenModeAutomaticRulePreferenceController.java"

# interfaces
.implements Lcom/android/settings/core/d;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/notification/AbstractZenModeAutomaticRulePreferenceController$a;
    }
.end annotation


# instance fields
.field protected a:Lcom/android/settings/notification/w;

.field protected b:Landroidx/fragment/app/Fragment;

.field protected c:[Ljava/util/Map$Entry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/String;",
            "Landroid/app/AutomaticZenRule;",
            ">;"
        }
    .end annotation
.end field

.field protected d:Landroid/content/pm/PackageManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroidx/fragment/app/Fragment;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V
    .locals 0

    .line 50
    invoke-direct {p0, p1, p2, p4}, Lcom/android/settings/notification/AbstractZenModePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    .line 51
    invoke-static {p1}, Lcom/android/settings/notification/w;->a(Landroid/content/Context;)Lcom/android/settings/notification/w;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/notification/AbstractZenModeAutomaticRulePreferenceController;->a:Lcom/android/settings/notification/w;

    .line 52
    iget-object p1, p0, Lcom/android/settings/notification/AbstractZenModeAutomaticRulePreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/notification/AbstractZenModeAutomaticRulePreferenceController;->d:Landroid/content/pm/PackageManager;

    .line 53
    iput-object p3, p0, Lcom/android/settings/notification/AbstractZenModeAutomaticRulePreferenceController;->b:Landroidx/fragment/app/Fragment;

    return-void
.end method

.method protected static a(Landroid/app/AutomaticZenRule;Landroid/content/pm/ComponentInfo;)Landroid/content/ComponentName;
    .locals 1

    if-eqz p0, :cond_0

    .line 115
    invoke-virtual {p0}, Landroid/app/AutomaticZenRule;->getConfigurationActivity()Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 116
    invoke-virtual {p0}, Landroid/app/AutomaticZenRule;->getConfigurationActivity()Landroid/content/ComponentName;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    if-nez p1, :cond_1

    return-object p0

    .line 122
    :cond_1
    instance-of v0, p1, Landroid/content/pm/ActivityInfo;

    if-eqz v0, :cond_2

    .line 123
    new-instance p0, Landroid/content/ComponentName;

    iget-object v0, p1, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    iget-object p1, p1, Landroid/content/pm/ComponentInfo;->name:Ljava/lang/String;

    invoke-direct {p0, v0, p1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0

    .line 126
    :cond_2
    iget-object v0, p1, Landroid/content/pm/ComponentInfo;->metaData:Landroid/os/Bundle;

    if-eqz v0, :cond_3

    .line 127
    iget-object p1, p1, Landroid/content/pm/ComponentInfo;->metaData:Landroid/os/Bundle;

    const-string v0, "android.service.zen.automatic.configurationActivity"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 130
    invoke-static {p1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object p0

    :cond_3
    return-object p0
.end method

.method static synthetic a(Lcom/android/settings/notification/AbstractZenModeAutomaticRulePreferenceController;)Landroid/content/Context;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/android/settings/notification/AbstractZenModeAutomaticRulePreferenceController;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method protected static a(Ljava/lang/String;Landroid/content/ComponentName;Ljava/lang/String;)Landroid/content/Intent;
    .locals 2

    .line 76
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const/high16 v1, 0x4000000

    .line 77
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "android.service.notification.extra.RULE_ID"

    .line 78
    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p2

    if-eqz p1, :cond_0

    .line 80
    invoke-virtual {p2, p1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    goto :goto_0

    .line 82
    :cond_0
    invoke-virtual {p2, p0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    :goto_0
    return-object p2
.end method

.method public static a(Landroid/content/pm/PackageManager;Landroid/content/pm/ComponentInfo;)Lcom/android/settings/notification/y;
    .locals 6

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 88
    iget-object v1, p1, Landroid/content/pm/ComponentInfo;->metaData:Landroid/os/Bundle;

    if-nez v1, :cond_0

    goto :goto_0

    .line 92
    :cond_0
    iget-object v1, p1, Landroid/content/pm/ComponentInfo;->metaData:Landroid/os/Bundle;

    const-string v2, "android.service.zen.automatic.ruleType"

    .line 93
    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 95
    invoke-static {v0, p1}, Lcom/android/settings/notification/AbstractZenModeAutomaticRulePreferenceController;->a(Landroid/app/AutomaticZenRule;Landroid/content/pm/ComponentInfo;)Landroid/content/ComponentName;

    move-result-object v2

    if-eqz v1, :cond_2

    .line 96
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    if-eqz v2, :cond_2

    .line 97
    new-instance v3, Lcom/android/settings/notification/y;

    invoke-direct {v3}, Lcom/android/settings/notification/y;-><init>()V

    .line 98
    instance-of v4, p1, Landroid/content/pm/ServiceInfo;

    if-eqz v4, :cond_1

    new-instance v0, Landroid/content/ComponentName;

    iget-object v4, p1, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    iget-object v5, p1, Landroid/content/pm/ComponentInfo;->name:Ljava/lang/String;

    invoke-direct {v0, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    iput-object v0, v3, Lcom/android/settings/notification/y;->f:Landroid/content/ComponentName;

    const-string v0, "android.settings.ZEN_MODE_EXTERNAL_RULE_SETTINGS"

    .line 100
    iput-object v0, v3, Lcom/android/settings/notification/y;->c:Ljava/lang/String;

    .line 101
    iput-object v1, v3, Lcom/android/settings/notification/y;->b:Ljava/lang/String;

    .line 102
    iget-object v0, p1, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    iput-object v0, v3, Lcom/android/settings/notification/y;->a:Ljava/lang/String;

    .line 103
    iput-object v2, v3, Lcom/android/settings/notification/y;->d:Landroid/content/ComponentName;

    .line 104
    iget-object v0, p1, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v0, p0}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object p0

    iput-object p0, v3, Lcom/android/settings/notification/y;->h:Ljava/lang/CharSequence;

    .line 106
    iget-object p0, p1, Landroid/content/pm/ComponentInfo;->metaData:Landroid/os/Bundle;

    const/4 p1, -0x1

    const-string v0, "android.service.zen.automatic.ruleInstanceLimit"

    .line 107
    invoke-virtual {p0, v0, p1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p0

    iput p0, v3, Lcom/android/settings/notification/y;->i:I

    return-object v3

    :cond_2
    :goto_0
    return-object v0
.end method


# virtual methods
.method protected final a()[Ljava/util/Map$Entry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/String;",
            "Landroid/app/AutomaticZenRule;",
            ">;"
        }
    .end annotation

    .line 63
    iget-object v0, p0, Lcom/android/settings/notification/AbstractZenModeAutomaticRulePreferenceController;->c:[Ljava/util/Map$Entry;

    if-nez v0, :cond_0

    .line 64
    iget-object v0, p0, Lcom/android/settings/notification/AbstractZenModeAutomaticRulePreferenceController;->a:Lcom/android/settings/notification/w;

    invoke-virtual {v0}, Lcom/android/settings/notification/w;->f()[Ljava/util/Map$Entry;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/notification/AbstractZenModeAutomaticRulePreferenceController;->c:[Ljava/util/Map$Entry;

    .line 66
    :cond_0
    iget-object v0, p0, Lcom/android/settings/notification/AbstractZenModeAutomaticRulePreferenceController;->c:[Ljava/util/Map$Entry;

    return-object v0
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 0

    .line 58
    invoke-super {p0, p1}, Lcom/android/settings/notification/AbstractZenModePreferenceController;->updateState(Landroidx/preference/Preference;)V

    .line 59
    iget-object p1, p0, Lcom/android/settings/notification/AbstractZenModeAutomaticRulePreferenceController;->a:Lcom/android/settings/notification/w;

    invoke-virtual {p1}, Lcom/android/settings/notification/w;->f()[Ljava/util/Map$Entry;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/notification/AbstractZenModeAutomaticRulePreferenceController;->c:[Ljava/util/Map$Entry;

    return-void
.end method
