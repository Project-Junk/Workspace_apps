.class public Lcom/android/settings/notification/ZenModeStarredContactsPreferenceController;
.super Lcom/android/settings/notification/AbstractZenModePreferenceController;
.source "ZenModeStarredContactsPreferenceController.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceClickListener;


# instance fields
.field private a:Landroidx/preference/Preference;

.field private final b:I

.field private final c:Landroid/content/pm/PackageManager;

.field private d:Landroid/content/Intent;

.field private l:Landroid/content/Intent;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;ILjava/lang/String;)V
    .locals 0

    .line 44
    invoke-direct {p0, p1, p4, p2}, Lcom/android/settings/notification/AbstractZenModePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    .line 45
    iput p3, p0, Lcom/android/settings/notification/ZenModeStarredContactsPreferenceController;->b:I

    .line 46
    iget-object p1, p0, Lcom/android/settings/notification/ZenModeStarredContactsPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/notification/ZenModeStarredContactsPreferenceController;->c:Landroid/content/pm/PackageManager;

    .line 48
    new-instance p1, Landroid/content/Intent;

    const-string p2, "com.android.contacts.action.LIST_STARRED"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/settings/notification/ZenModeStarredContactsPreferenceController;->d:Landroid/content/Intent;

    .line 50
    new-instance p1, Landroid/content/Intent;

    const-string p2, "android.intent.action.MAIN"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/settings/notification/ZenModeStarredContactsPreferenceController;->l:Landroid/content/Intent;

    .line 51
    iget-object p1, p0, Lcom/android/settings/notification/ZenModeStarredContactsPreferenceController;->l:Landroid/content/Intent;

    const-string p2, "android.intent.category.APP_CONTACTS"

    invoke-virtual {p1, p2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    return-void
.end method

.method private a()Z
    .locals 2

    .line 101
    iget-object v0, p0, Lcom/android/settings/notification/ZenModeStarredContactsPreferenceController;->d:Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/settings/notification/ZenModeStarredContactsPreferenceController;->c:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/notification/ZenModeStarredContactsPreferenceController;->l:Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/settings/notification/ZenModeStarredContactsPreferenceController;->c:Landroid/content/pm/PackageManager;

    .line 102
    invoke-virtual {v0, v1}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    .line 56
    invoke-super {p0, p1}, Lcom/android/settings/notification/AbstractZenModePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 57
    iget-object v0, p0, Lcom/android/settings/notification/ZenModeStarredContactsPreferenceController;->f:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/notification/ZenModeStarredContactsPreferenceController;->a:Landroidx/preference/Preference;

    .line 59
    iget-object p1, p0, Lcom/android/settings/notification/ZenModeStarredContactsPreferenceController;->a:Landroidx/preference/Preference;

    if-eqz p1, :cond_0

    .line 60
    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    :cond_0
    return-void
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    .line 66
    iget-object v0, p0, Lcom/android/settings/notification/ZenModeStarredContactsPreferenceController;->f:Ljava/lang/String;

    return-object v0
.end method

.method public getSummary()Ljava/lang/CharSequence;
    .locals 1

    .line 87
    iget-object v0, p0, Lcom/android/settings/notification/ZenModeStarredContactsPreferenceController;->j:Lcom/android/settings/notification/w;

    invoke-virtual {v0}, Lcom/android/settings/notification/w;->g()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isAvailable()Z
    .locals 5

    .line 71
    iget v0, p0, Lcom/android/settings/notification/ZenModeStarredContactsPreferenceController;->b:I

    const/4 v1, 0x1

    const/4 v2, 0x2

    const/16 v3, 0x8

    const/4 v4, 0x0

    if-ne v0, v3, :cond_1

    .line 72
    iget-object v0, p0, Lcom/android/settings/notification/ZenModeStarredContactsPreferenceController;->j:Lcom/android/settings/notification/w;

    invoke-virtual {v0, v3}, Lcom/android/settings/notification/w;->d(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/notification/ZenModeStarredContactsPreferenceController;->j:Lcom/android/settings/notification/w;

    .line 73
    invoke-virtual {v0}, Lcom/android/settings/notification/w;->c()I

    move-result v0

    if-ne v0, v2, :cond_0

    .line 74
    invoke-direct {p0}, Lcom/android/settings/notification/ZenModeStarredContactsPreferenceController;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    return v4

    :cond_1
    const/4 v3, 0x4

    if-ne v0, v3, :cond_2

    .line 76
    iget-object v0, p0, Lcom/android/settings/notification/ZenModeStarredContactsPreferenceController;->j:Lcom/android/settings/notification/w;

    invoke-virtual {v0, v3}, Lcom/android/settings/notification/w;->d(I)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/notification/ZenModeStarredContactsPreferenceController;->j:Lcom/android/settings/notification/w;

    .line 77
    invoke-virtual {v0}, Lcom/android/settings/notification/w;->d()I

    move-result v0

    if-ne v0, v2, :cond_2

    .line 78
    invoke-direct {p0}, Lcom/android/settings/notification/ZenModeStarredContactsPreferenceController;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    return v1

    :cond_2
    return v4
.end method

.method public onPreferenceClick(Landroidx/preference/Preference;)Z
    .locals 1

    .line 92
    iget-object p1, p0, Lcom/android/settings/notification/ZenModeStarredContactsPreferenceController;->d:Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/settings/notification/ZenModeStarredContactsPreferenceController;->c:Landroid/content/pm/PackageManager;

    invoke-virtual {p1, v0}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 93
    iget-object p1, p0, Lcom/android/settings/notification/ZenModeStarredContactsPreferenceController;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/android/settings/notification/ZenModeStarredContactsPreferenceController;->d:Landroid/content/Intent;

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 95
    :cond_0
    iget-object p1, p0, Lcom/android/settings/notification/ZenModeStarredContactsPreferenceController;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/android/settings/notification/ZenModeStarredContactsPreferenceController;->l:Landroid/content/Intent;

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :goto_0
    const/4 p1, 0x1

    return p1
.end method
