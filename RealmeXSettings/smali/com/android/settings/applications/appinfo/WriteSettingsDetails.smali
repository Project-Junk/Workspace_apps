.class public Lcom/android/settings/applications/appinfo/WriteSettingsDetails;
.super Lcom/android/settings/applications/AppInfoWithHeader;
.source "WriteSettingsDetails.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;
.implements Landroidx/preference/Preference$OnPreferenceClickListener;


# static fields
.field private static final q:[I


# instance fields
.field private r:Lcom/android/settings/applications/l;

.field private s:Landroid/app/AppOpsManager;

.field private t:Landroidx/preference/TwoStatePreference;

.field private u:Landroid/content/Intent;

.field private v:Lcom/android/settings/applications/l$a;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    .line 48
    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x17

    aput v2, v0, v1

    sput-object v0, Lcom/android/settings/applications/appinfo/WriteSettingsDetails;->q:[I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Lcom/android/settings/applications/AppInfoWithHeader;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/coloros/settingslib/applications/ApplicationsState$a;)Ljava/lang/CharSequence;
    .locals 2

    .line 150
    iget-object v0, p1, Lcom/coloros/settingslib/applications/ApplicationsState$a;->r:Ljava/lang/Object;

    instance-of v0, v0, Lcom/android/settings/applications/l$a;

    if-eqz v0, :cond_0

    .line 151
    iget-object p1, p1, Lcom/coloros/settingslib/applications/ApplicationsState$a;->r:Ljava/lang/Object;

    check-cast p1, Lcom/android/settings/applications/l$a;

    goto :goto_0

    .line 152
    :cond_0
    iget-object v0, p1, Lcom/coloros/settingslib/applications/ApplicationsState$a;->r:Ljava/lang/Object;

    instance-of v0, v0, Lcom/android/settings/applications/d$a;

    if-eqz v0, :cond_1

    .line 153
    new-instance v0, Lcom/android/settings/applications/l$a;

    iget-object p1, p1, Lcom/coloros/settingslib/applications/ApplicationsState$a;->r:Ljava/lang/Object;

    check-cast p1, Lcom/android/settings/applications/d$a;

    invoke-direct {v0, p1}, Lcom/android/settings/applications/l$a;-><init>(Lcom/android/settings/applications/d$a;)V

    move-object p1, v0

    goto :goto_0

    .line 155
    :cond_1
    new-instance v0, Lcom/android/settings/applications/l;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1, v1}, Lcom/android/settings/applications/l;-><init>(Landroid/content/Context;Lcom/coloros/settingslib/applications/ApplicationsState;Lcom/android/settings/applications/e$b;)V

    iget-object v1, p1, Lcom/coloros/settingslib/applications/ApplicationsState$a;->k:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object p1, p1, Lcom/coloros/settingslib/applications/ApplicationsState$a;->k:Landroid/content/pm/ApplicationInfo;

    iget p1, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v0, v1, p1}, Lcom/android/settings/applications/l;->c(Ljava/lang/String;I)Lcom/android/settings/applications/l$a;

    move-result-object p1

    .line 1163
    :goto_0
    invoke-virtual {p1}, Lcom/android/settings/applications/l$a;->a()Z

    move-result p1

    if-eqz p1, :cond_2

    const p1, 0x7f1201e9

    goto :goto_1

    :cond_2
    const p1, 0x7f1201ea

    :goto_1
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final b(I)Lcolor/support/v7/app/AlertDialog;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public final b()Z
    .locals 4

    .line 122
    iget-object v0, p0, Lcom/android/settings/applications/appinfo/WriteSettingsDetails;->g:Landroid/content/pm/PackageInfo;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/applications/appinfo/WriteSettingsDetails;->g:Landroid/content/pm/PackageInfo;

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-nez v0, :cond_0

    goto :goto_0

    .line 125
    :cond_0
    iget-object v0, p0, Lcom/android/settings/applications/appinfo/WriteSettingsDetails;->r:Lcom/android/settings/applications/l;

    iget-object v1, p0, Lcom/android/settings/applications/appinfo/WriteSettingsDetails;->i:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/settings/applications/appinfo/WriteSettingsDetails;->g:Landroid/content/pm/PackageInfo;

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/applications/l;->c(Ljava/lang/String;I)Lcom/android/settings/applications/l$a;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/appinfo/WriteSettingsDetails;->v:Lcom/android/settings/applications/l$a;

    .line 128
    iget-object v0, p0, Lcom/android/settings/applications/appinfo/WriteSettingsDetails;->v:Lcom/android/settings/applications/l$a;

    invoke-virtual {v0}, Lcom/android/settings/applications/l$a;->a()Z

    move-result v0

    .line 129
    iget-object v1, p0, Lcom/android/settings/applications/appinfo/WriteSettingsDetails;->t:Landroidx/preference/TwoStatePreference;

    invoke-virtual {v1, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 131
    iget-object v0, p0, Lcom/android/settings/applications/appinfo/WriteSettingsDetails;->t:Landroidx/preference/TwoStatePreference;

    iget-object v1, p0, Lcom/android/settings/applications/appinfo/WriteSettingsDetails;->v:Lcom/android/settings/applications/l$a;

    iget-boolean v1, v1, Lcom/android/settings/applications/l$a;->e:Z

    invoke-virtual {v0, v1}, Landroidx/preference/TwoStatePreference;->setEnabled(Z)V

    .line 133
    iget-object v0, p0, Lcom/android/settings/applications/appinfo/WriteSettingsDetails;->m:Landroid/content/pm/PackageManager;

    iget-object v1, p0, Lcom/android/settings/applications/appinfo/WriteSettingsDetails;->u:Landroid/content/Intent;

    const/16 v2, 0x80

    iget v3, p0, Lcom/android/settings/applications/appinfo/WriteSettingsDetails;->h:I

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/pm/PackageManager;->resolveActivityAsUser(Landroid/content/Intent;II)Landroid/content/pm/ResolveInfo;

    const/4 v0, 0x1

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0xdd

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 62
    invoke-super {p0, p1}, Lcom/android/settings/applications/AppInfoWithHeader;->onCreate(Landroid/os/Bundle;)V

    .line 64
    invoke-virtual {p0}, Lcom/android/settings/applications/appinfo/WriteSettingsDetails;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    .line 65
    new-instance v0, Lcom/android/settings/applications/l;

    iget-object v1, p0, Lcom/android/settings/applications/appinfo/WriteSettingsDetails;->d:Lcom/coloros/settingslib/applications/ApplicationsState;

    const/4 v2, 0x0

    invoke-direct {v0, p1, v1, v2}, Lcom/android/settings/applications/l;-><init>(Landroid/content/Context;Lcom/coloros/settingslib/applications/ApplicationsState;Lcom/android/settings/applications/e$b;)V

    iput-object v0, p0, Lcom/android/settings/applications/appinfo/WriteSettingsDetails;->r:Lcom/android/settings/applications/l;

    const-string v0, "appops"

    .line 66
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/AppOpsManager;

    iput-object p1, p0, Lcom/android/settings/applications/appinfo/WriteSettingsDetails;->s:Landroid/app/AppOpsManager;

    const p1, 0x7f15014a

    .line 68
    invoke-virtual {p0, p1}, Lcom/android/settings/applications/appinfo/WriteSettingsDetails;->addPreferencesFromResource(I)V

    const-string p1, "app_ops_settings_switch"

    .line 69
    invoke-virtual {p0, p1}, Lcom/android/settings/applications/appinfo/WriteSettingsDetails;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/TwoStatePreference;

    iput-object p1, p0, Lcom/android/settings/applications/appinfo/WriteSettingsDetails;->t:Landroidx/preference/TwoStatePreference;

    .line 71
    iget-object p1, p0, Lcom/android/settings/applications/appinfo/WriteSettingsDetails;->t:Landroidx/preference/TwoStatePreference;

    invoke-virtual {p1, p0}, Landroidx/preference/TwoStatePreference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 73
    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.intent.action.MAIN"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v0, "android.intent.category.USAGE_ACCESS_CONFIG"

    .line 74
    invoke-virtual {p1, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    iget-object v0, p0, Lcom/android/settings/applications/appinfo/WriteSettingsDetails;->i:Ljava/lang/String;

    .line 75
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/applications/appinfo/WriteSettingsDetails;->u:Landroid/content/Intent;

    return-void
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 5

    .line 85
    iget-object v0, p0, Lcom/android/settings/applications/appinfo/WriteSettingsDetails;->t:Landroidx/preference/TwoStatePreference;

    const/4 v1, 0x0

    if-ne p1, v0, :cond_3

    .line 86
    iget-object p1, p0, Lcom/android/settings/applications/appinfo/WriteSettingsDetails;->v:Lcom/android/settings/applications/l$a;

    const/4 v0, 0x1

    if-eqz p1, :cond_2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iget-object p2, p0, Lcom/android/settings/applications/appinfo/WriteSettingsDetails;->v:Lcom/android/settings/applications/l$a;

    .line 87
    invoke-virtual {p2}, Lcom/android/settings/applications/l$a;->a()Z

    move-result p2

    if-eq p1, p2, :cond_2

    .line 88
    iget-object p1, p0, Lcom/android/settings/applications/appinfo/WriteSettingsDetails;->v:Lcom/android/settings/applications/l$a;

    invoke-virtual {p1}, Lcom/android/settings/applications/l$a;->a()Z

    move-result p1

    xor-int/2addr p1, v0

    .line 1097
    iget-object p2, p0, Lcom/android/settings/applications/appinfo/WriteSettingsDetails;->i:Ljava/lang/String;

    if-eqz p1, :cond_0

    const/16 v2, 0x306

    goto :goto_0

    :cond_0
    const/16 v2, 0x307

    .line 1106
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/applications/appinfo/WriteSettingsDetails;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings/overlay/b;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/b;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/settings/overlay/b;->getMetricsFeatureProvider()Lcom/android/settingslib/core/instrumentation/d;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/settings/applications/appinfo/WriteSettingsDetails;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v3, v4, v2, p2}, Lcom/android/settingslib/core/instrumentation/d;->a(Landroid/content/Context;ILjava/lang/String;)V

    .line 1098
    iget-object p2, p0, Lcom/android/settings/applications/appinfo/WriteSettingsDetails;->s:Landroid/app/AppOpsManager;

    const/16 v2, 0x17

    iget-object v3, p0, Lcom/android/settings/applications/appinfo/WriteSettingsDetails;->g:Landroid/content/pm/PackageInfo;

    iget-object v3, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v4, p0, Lcom/android/settings/applications/appinfo/WriteSettingsDetails;->i:Ljava/lang/String;

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x2

    :goto_1
    invoke-virtual {p2, v2, v3, v4, v1}, Landroid/app/AppOpsManager;->setMode(IILjava/lang/String;I)V

    .line 89
    invoke-virtual {p0}, Lcom/android/settings/applications/appinfo/WriteSettingsDetails;->b()Z

    :cond_2
    return v0

    :cond_3
    return v1
.end method

.method public onPreferenceClick(Landroidx/preference/Preference;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method
