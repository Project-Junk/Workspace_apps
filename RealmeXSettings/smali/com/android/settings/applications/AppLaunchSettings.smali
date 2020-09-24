.class public Lcom/android/settings/applications/AppLaunchSettings;
.super Lcom/android/settings/applications/AppInfoWithHeader;
.source "AppLaunchSettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;


# static fields
.field private static final u:Landroid/content/Intent;


# instance fields
.field public q:Landroid/content/pm/PackageManager;

.field public r:Z

.field public s:Z

.field public t:Lcom/android/settings/applications/AppDomainsPreference;

.field private v:Landroidx/preference/DropDownPreference;

.field private w:Lcom/android/settings/applications/ClearDefaultsPreference;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 63
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "android.intent.action.VIEW"

    .line 64
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "android.intent.category.BROWSABLE"

    .line 65
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "http:"

    .line 66
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v0

    sput-object v0, Lcom/android/settings/applications/AppLaunchSettings;->u:Landroid/content/Intent;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 53
    invoke-direct {p0}, Lcom/android/settings/applications/AppInfoWithHeader;-><init>()V

    return-void
.end method

.method private d()Lcom/coloros/settings/adaptor/AppLaunchSettingsAdaptor;
    .locals 1

    .line 245
    iget-object v0, p0, Lcom/android/settings/applications/AppLaunchSettings;->mAdaptor:Lcom/color/injector/adaptor/ClassAdaptor;

    if-nez v0, :cond_0

    .line 246
    const-class v0, Lcom/coloros/settings/adaptor/AppLaunchSettingsAdaptor;

    invoke-static {v0}, Lcom/color/injector/adaptor/ClassAdaptor;->getAdaptor(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/color/injector/adaptor/ClassAdaptor;

    iput-object v0, p0, Lcom/android/settings/applications/AppLaunchSettings;->mAdaptor:Lcom/color/injector/adaptor/ClassAdaptor;

    .line 247
    iget-object v0, p0, Lcom/android/settings/applications/AppLaunchSettings;->mAdaptor:Lcom/color/injector/adaptor/ClassAdaptor;

    invoke-virtual {v0, p0}, Lcom/color/injector/adaptor/ClassAdaptor;->bind(Ljava/lang/Object;)V

    .line 249
    :cond_0
    iget-object v0, p0, Lcom/android/settings/applications/AppLaunchSettings;->mAdaptor:Lcom/color/injector/adaptor/ClassAdaptor;

    check-cast v0, Lcom/coloros/settings/adaptor/AppLaunchSettingsAdaptor;

    return-object v0
.end method


# virtual methods
.method protected final b(I)Lcolor/support/v7/app/AlertDialog;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method protected final b()Z
    .locals 2

    .line 215
    iget-object v0, p0, Lcom/android/settings/applications/AppLaunchSettings;->w:Lcom/android/settings/applications/ClearDefaultsPreference;

    iget-object v1, p0, Lcom/android/settings/applications/AppLaunchSettings;->i:Ljava/lang/String;

    .line 3085
    iput-object v1, v0, Lcom/android/settings/applications/ClearDefaultsPreference;->b:Ljava/lang/String;

    .line 216
    iget-object v0, p0, Lcom/android/settings/applications/AppLaunchSettings;->w:Lcom/android/settings/applications/ClearDefaultsPreference;

    iget-object v1, p0, Lcom/android/settings/applications/AppLaunchSettings;->f:Lcom/coloros/settingslib/applications/ApplicationsState$a;

    invoke-virtual {v0, v1}, Lcom/android/settings/applications/ClearDefaultsPreference;->a(Lcom/coloros/settingslib/applications/ApplicationsState$a;)V

    const/4 v0, 0x1

    return v0
.end method

.method public final c(I)Z
    .locals 4

    .line 183
    iget-boolean v0, p0, Lcom/android/settings/applications/AppLaunchSettings;->r:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 189
    :cond_0
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    .line 190
    iget-object v2, p0, Lcom/android/settings/applications/AppLaunchSettings;->q:Landroid/content/pm/PackageManager;

    iget-object v3, p0, Lcom/android/settings/applications/AppLaunchSettings;->i:Ljava/lang/String;

    invoke-virtual {v2, v3, v0}, Landroid/content/pm/PackageManager;->getIntentVerificationStatusAsUser(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, p1, :cond_1

    return v1

    .line 196
    :cond_1
    iget-object v2, p0, Lcom/android/settings/applications/AppLaunchSettings;->q:Landroid/content/pm/PackageManager;

    iget-object v3, p0, Lcom/android/settings/applications/AppLaunchSettings;->i:Ljava/lang/String;

    invoke-virtual {v2, v3, p1, v0}, Landroid/content/pm/PackageManager;->updateIntentVerificationStatusAsUser(Ljava/lang/String;II)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 199
    iget-object v2, p0, Lcom/android/settings/applications/AppLaunchSettings;->q:Landroid/content/pm/PackageManager;

    iget-object v3, p0, Lcom/android/settings/applications/AppLaunchSettings;->i:Ljava/lang/String;

    invoke-virtual {v2, v3, v0}, Landroid/content/pm/PackageManager;->getIntentVerificationStatusAsUser(Ljava/lang/String;I)I

    move-result v0

    if-ne p1, v0, :cond_2

    const/4 v1, 0x1

    :cond_2
    move v2, v1

    goto :goto_0

    :cond_3
    const-string p1, "AppLaunchSettings"

    const-string v0, "Couldn\'t update intent verification status!"

    .line 202
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v2
.end method

.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x11

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6

    .line 79
    invoke-super {p0, p1}, Lcom/android/settings/applications/AppInfoWithHeader;->onCreate(Landroid/os/Bundle;)V

    .line 81
    invoke-direct {p0}, Lcom/android/settings/applications/AppLaunchSettings;->d()Lcom/coloros/settings/adaptor/AppLaunchSettingsAdaptor;

    move-result-object p1

    const v0, 0x7f1500aa

    invoke-virtual {p1, v0}, Lcom/coloros/settings/adaptor/AppLaunchSettingsAdaptor;->getPreferenceResId(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/settings/applications/AppLaunchSettings;->addPreferencesFromResource(I)V

    const-string p1, "app_launch_supported_domain_urls"

    .line 82
    invoke-virtual {p0, p1}, Lcom/android/settings/applications/AppLaunchSettings;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/android/settings/applications/AppDomainsPreference;

    iput-object p1, p0, Lcom/android/settings/applications/AppLaunchSettings;->t:Lcom/android/settings/applications/AppDomainsPreference;

    const-string p1, "app_launch_clear_defaults"

    .line 83
    invoke-virtual {p0, p1}, Lcom/android/settings/applications/AppLaunchSettings;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/android/settings/applications/ClearDefaultsPreference;

    iput-object p1, p0, Lcom/android/settings/applications/AppLaunchSettings;->w:Lcom/android/settings/applications/ClearDefaultsPreference;

    .line 84
    invoke-direct {p0}, Lcom/android/settings/applications/AppLaunchSettings;->d()Lcom/coloros/settings/adaptor/AppLaunchSettingsAdaptor;

    move-result-object p1

    invoke-virtual {p1}, Lcom/coloros/settings/adaptor/AppLaunchSettingsAdaptor;->initAppLinkPreference()Z

    move-result p1

    if-nez p1, :cond_0

    const-string p1, "app_link_state"

    .line 85
    invoke-virtual {p0, p1}, Lcom/android/settings/applications/AppLaunchSettings;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/DropDownPreference;

    iput-object p1, p0, Lcom/android/settings/applications/AppLaunchSettings;->v:Landroidx/preference/DropDownPreference;

    .line 88
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/applications/AppLaunchSettings;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/applications/AppLaunchSettings;->q:Landroid/content/pm/PackageManager;

    .line 90
    iget-object p1, p0, Lcom/android/settings/applications/AppLaunchSettings;->i:Ljava/lang/String;

    .line 1110
    sget-object v0, Lcom/android/settings/applications/AppLaunchSettings;->u:Landroid/content/Intent;

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1111
    iget-object p1, p0, Lcom/android/settings/applications/AppLaunchSettings;->q:Landroid/content/pm/PackageManager;

    sget-object v0, Lcom/android/settings/applications/AppLaunchSettings;->u:Landroid/content/Intent;

    const/high16 v1, 0x20000

    .line 1112
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    .line 1111
    invoke-virtual {p1, v0, v1, v2}, Landroid/content/pm/PackageManager;->queryIntentActivitiesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object p1

    .line 1113
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    const/4 v3, 0x1

    if-ge v2, v0, :cond_2

    .line 1115
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    .line 1116
    iget-object v5, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v5, :cond_1

    iget-boolean v4, v4, Landroid/content/pm/ResolveInfo;->handleAllWebDataURI:Z

    if-eqz v4, :cond_1

    move p1, v3

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    move p1, v1

    .line 90
    :goto_1
    iput-boolean p1, p0, Lcom/android/settings/applications/AppLaunchSettings;->r:Z

    .line 91
    iget-object p1, p0, Lcom/android/settings/applications/AppLaunchSettings;->f:Lcom/coloros/settingslib/applications/ApplicationsState$a;

    iget-object p1, p1, Lcom/coloros/settingslib/applications/ApplicationsState$a;->k:Landroid/content/pm/ApplicationInfo;

    iget p1, p1, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    and-int/lit8 p1, p1, 0x10

    if-eqz p1, :cond_3

    move p1, v3

    goto :goto_2

    :cond_3
    move p1, v1

    :goto_2
    iput-boolean p1, p0, Lcom/android/settings/applications/AppLaunchSettings;->s:Z

    .line 94
    iget-boolean p1, p0, Lcom/android/settings/applications/AppLaunchSettings;->r:Z

    if-nez p1, :cond_4

    .line 95
    iget-object p1, p0, Lcom/android/settings/applications/AppLaunchSettings;->q:Landroid/content/pm/PackageManager;

    iget-object v0, p0, Lcom/android/settings/applications/AppLaunchSettings;->i:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/content/pm/PackageManager;->getIntentFilterVerifications(Ljava/lang/String;)Ljava/util/List;

    .line 96
    iget-object p1, p0, Lcom/android/settings/applications/AppLaunchSettings;->q:Landroid/content/pm/PackageManager;

    iget-object v0, p0, Lcom/android/settings/applications/AppLaunchSettings;->i:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/content/pm/PackageManager;->getAllIntentFilters(Ljava/lang/String;)Ljava/util/List;

    .line 97
    iget-object p1, p0, Lcom/android/settings/applications/AppLaunchSettings;->i:Ljava/lang/String;

    .line 1209
    iget-object v0, p0, Lcom/android/settings/applications/AppLaunchSettings;->q:Landroid/content/pm/PackageManager;

    invoke-static {v0, p1}, Lcom/android/settings/m;->a(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/util/ArraySet;

    move-result-object p1

    .line 1210
    invoke-virtual {p1}, Landroid/util/ArraySet;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/util/ArraySet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/CharSequence;

    .line 98
    invoke-direct {p0}, Lcom/android/settings/applications/AppLaunchSettings;->d()Lcom/coloros/settings/adaptor/AppLaunchSettingsAdaptor;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/coloros/settings/adaptor/AppLaunchSettingsAdaptor;->setAppDomainUrls([Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 99
    iget-object v0, p0, Lcom/android/settings/applications/AppLaunchSettings;->t:Lcom/android/settings/applications/AppDomainsPreference;

    invoke-virtual {v0, p1}, Lcom/android/settings/applications/AppDomainsPreference;->a([Ljava/lang/CharSequence;)V

    .line 100
    iget-object v0, p0, Lcom/android/settings/applications/AppLaunchSettings;->t:Lcom/android/settings/applications/AppDomainsPreference;

    array-length p1, p1

    new-array p1, p1, [I

    invoke-virtual {v0, p1}, Lcom/android/settings/applications/AppDomainsPreference;->a([I)V

    .line 2124
    :cond_4
    invoke-direct {p0}, Lcom/android/settings/applications/AppLaunchSettings;->d()Lcom/coloros/settings/adaptor/AppLaunchSettingsAdaptor;

    move-result-object p1

    invoke-virtual {p1}, Lcom/coloros/settings/adaptor/AppLaunchSettingsAdaptor;->buildStateDropDown()Z

    move-result p1

    if-nez p1, :cond_8

    .line 2127
    iget-boolean p1, p0, Lcom/android/settings/applications/AppLaunchSettings;->r:Z

    if-eqz p1, :cond_5

    .line 2129
    iget-object p1, p0, Lcom/android/settings/applications/AppLaunchSettings;->v:Landroidx/preference/DropDownPreference;

    invoke-virtual {p1, v3}, Landroidx/preference/DropDownPreference;->setShouldDisableView(Z)V

    .line 2130
    iget-object p1, p0, Lcom/android/settings/applications/AppLaunchSettings;->v:Landroidx/preference/DropDownPreference;

    invoke-virtual {p1, v1}, Landroidx/preference/DropDownPreference;->setEnabled(Z)V

    .line 2131
    iget-object p1, p0, Lcom/android/settings/applications/AppLaunchSettings;->t:Lcom/android/settings/applications/AppDomainsPreference;

    invoke-virtual {p1, v3}, Lcom/android/settings/applications/AppDomainsPreference;->setShouldDisableView(Z)V

    .line 2132
    iget-object p1, p0, Lcom/android/settings/applications/AppLaunchSettings;->t:Lcom/android/settings/applications/AppDomainsPreference;

    invoke-virtual {p1, v1}, Lcom/android/settings/applications/AppDomainsPreference;->setEnabled(Z)V

    goto :goto_4

    .line 2141
    :cond_5
    iget-object p1, p0, Lcom/android/settings/applications/AppLaunchSettings;->v:Landroidx/preference/DropDownPreference;

    const/4 v0, 0x3

    new-array v2, v0, [Ljava/lang/CharSequence;

    const v4, 0x7f1201ca

    .line 2142
    invoke-virtual {p0, v4}, Lcom/android/settings/applications/AppLaunchSettings;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v1

    const v4, 0x7f1201cb

    .line 2143
    invoke-virtual {p0, v4}, Lcom/android/settings/applications/AppLaunchSettings;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const v4, 0x7f1201cc

    .line 2144
    invoke-virtual {p0, v4}, Lcom/android/settings/applications/AppLaunchSettings;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x2

    aput-object v4, v2, v5

    .line 2141
    invoke-virtual {p1, v2}, Landroidx/preference/DropDownPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 2146
    iget-object p1, p0, Lcom/android/settings/applications/AppLaunchSettings;->v:Landroidx/preference/DropDownPreference;

    new-array v2, v0, [Ljava/lang/CharSequence;

    .line 2147
    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v1

    const/4 v4, 0x4

    .line 2148
    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 2149
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v5

    .line 2146
    invoke-virtual {p1, v2}, Landroidx/preference/DropDownPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 2152
    iget-object p1, p0, Lcom/android/settings/applications/AppLaunchSettings;->v:Landroidx/preference/DropDownPreference;

    iget-boolean v2, p0, Lcom/android/settings/applications/AppLaunchSettings;->s:Z

    invoke-virtual {p1, v2}, Landroidx/preference/DropDownPreference;->setEnabled(Z)V

    .line 2153
    iget-boolean p1, p0, Lcom/android/settings/applications/AppLaunchSettings;->s:Z

    if-eqz p1, :cond_8

    .line 2157
    iget-object p1, p0, Lcom/android/settings/applications/AppLaunchSettings;->q:Landroid/content/pm/PackageManager;

    iget-object v2, p0, Lcom/android/settings/applications/AppLaunchSettings;->i:Ljava/lang/String;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    invoke-virtual {p1, v2, v4}, Landroid/content/pm/PackageManager;->getIntentVerificationStatusAsUser(Ljava/lang/String;I)I

    move-result p1

    .line 2158
    iget-object v2, p0, Lcom/android/settings/applications/AppLaunchSettings;->v:Landroidx/preference/DropDownPreference;

    if-eq p1, v5, :cond_7

    if-eq p1, v0, :cond_6

    move v1, v3

    goto :goto_3

    :cond_6
    move v1, v5

    :cond_7
    :goto_3
    invoke-virtual {v2, v1}, Landroidx/preference/DropDownPreference;->setValueIndex(I)V

    .line 2161
    iget-object p1, p0, Lcom/android/settings/applications/AppLaunchSettings;->v:Landroidx/preference/DropDownPreference;

    new-instance v0, Lcom/android/settings/applications/AppLaunchSettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings/applications/AppLaunchSettings$1;-><init>(Lcom/android/settings/applications/AppLaunchSettings;)V

    invoke-virtual {p1, v0}, Landroidx/preference/DropDownPreference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 104
    :cond_8
    :goto_4
    invoke-direct {p0}, Lcom/android/settings/applications/AppLaunchSettings;->d()Lcom/coloros/settings/adaptor/AppLaunchSettingsAdaptor;

    move-result-object p1

    invoke-virtual {p1}, Lcom/coloros/settings/adaptor/AppLaunchSettingsAdaptor;->onCreate()V

    return-void
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 254
    invoke-super {p0, p1, p2}, Lcom/android/settings/applications/AppInfoWithHeader;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    const/4 p1, 0x0

    .line 255
    invoke-virtual {p0, p1}, Lcom/android/settings/applications/AppLaunchSettings;->addPreferenceHeader(Z)V

    return-void
.end method

.method public shouldAddPreferenceFooter()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public shouldAddPreferenceHeader()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public shouldAddTopPadding()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
