.class public Lcom/android/settings/inputmethod/SpellCheckersSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "SpellCheckersSettings.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;
.implements Landroidx/preference/Preference$OnPreferenceClickListener;
.implements Lcom/android/settings/widget/SwitchBar$a;


# static fields
.field private static final a:Ljava/lang/String; = "SpellCheckersSettings"


# instance fields
.field private b:Lcom/android/settings/widget/SwitchBar;

.field private c:Landroidx/preference/Preference;

.field private d:Lcolor/support/v7/app/AlertDialog;

.field private e:Landroid/view/textservice/SpellCheckerInfo;

.field private f:[Landroid/view/textservice/SpellCheckerInfo;

.field private g:Landroid/view/textservice/TextServicesManager;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 43
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    const/4 v0, 0x0

    .line 54
    iput-object v0, p0, Lcom/android/settings/inputmethod/SpellCheckersSettings;->d:Lcolor/support/v7/app/AlertDialog;

    return-void
.end method

.method static synthetic a(I)I
    .locals 0

    add-int/lit8 p0, p0, -0x1

    return p0
.end method

.method static synthetic a(Lcom/android/settings/inputmethod/SpellCheckersSettings;)Landroid/content/ContentResolver;
    .locals 0

    .line 43
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/SpellCheckersSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    return-object p0
.end method

.method private a(Landroid/view/textservice/SpellCheckerInfo;Landroid/view/textservice/SpellCheckerSubtype;)Ljava/lang/CharSequence;
    .locals 2

    if-nez p1, :cond_0

    const p1, 0x7f12152b

    .line 148
    invoke-virtual {p0, p1}, Lcom/android/settings/inputmethod/SpellCheckersSettings;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    if-nez p2, :cond_1

    const p1, 0x7f1217ea

    .line 151
    invoke-virtual {p0, p1}, Lcom/android/settings/inputmethod/SpellCheckersSettings;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 154
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/SpellCheckersSettings;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/textservice/SpellCheckerInfo;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/textservice/SpellCheckerInfo;->getServiceInfo()Landroid/content/pm/ServiceInfo;

    move-result-object p1

    iget-object p1, p1, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 153
    invoke-virtual {p2, v0, v1, p1}, Landroid/view/textservice/SpellCheckerSubtype;->getDisplayName(Landroid/content/Context;Ljava/lang/String;Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1
.end method

.method private a()V
    .locals 7

    .line 119
    iget-object v0, p0, Lcom/android/settings/inputmethod/SpellCheckersSettings;->g:Landroid/view/textservice/TextServicesManager;

    invoke-virtual {v0}, Landroid/view/textservice/TextServicesManager;->getCurrentSpellChecker()Landroid/view/textservice/SpellCheckerInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/inputmethod/SpellCheckersSettings;->e:Landroid/view/textservice/SpellCheckerInfo;

    .line 120
    iget-object v0, p0, Lcom/android/settings/inputmethod/SpellCheckersSettings;->g:Landroid/view/textservice/TextServicesManager;

    invoke-virtual {v0}, Landroid/view/textservice/TextServicesManager;->isSpellCheckerEnabled()Z

    move-result v0

    .line 121
    iget-object v1, p0, Lcom/android/settings/inputmethod/SpellCheckersSettings;->b:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v1, v0}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    .line 124
    iget-object v1, p0, Lcom/android/settings/inputmethod/SpellCheckersSettings;->e:Landroid/view/textservice/SpellCheckerInfo;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 125
    iget-object v1, p0, Lcom/android/settings/inputmethod/SpellCheckersSettings;->g:Landroid/view/textservice/TextServicesManager;

    invoke-virtual {v1, v2}, Landroid/view/textservice/TextServicesManager;->getCurrentSpellCheckerSubtype(Z)Landroid/view/textservice/SpellCheckerSubtype;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 130
    :goto_0
    iget-object v3, p0, Lcom/android/settings/inputmethod/SpellCheckersSettings;->c:Landroidx/preference/Preference;

    iget-object v4, p0, Lcom/android/settings/inputmethod/SpellCheckersSettings;->e:Landroid/view/textservice/SpellCheckerInfo;

    invoke-direct {p0, v4, v1}, Lcom/android/settings/inputmethod/SpellCheckersSettings;->a(Landroid/view/textservice/SpellCheckerInfo;Landroid/view/textservice/SpellCheckerSubtype;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 132
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/SpellCheckersSettings;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v1

    .line 133
    invoke-virtual {v1}, Landroidx/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v3

    move v4, v2

    :goto_1
    if-ge v4, v3, :cond_2

    .line 135
    invoke-virtual {v1, v4}, Landroidx/preference/PreferenceScreen;->getPreference(I)Landroidx/preference/Preference;

    move-result-object v5

    .line 136
    invoke-virtual {v5, v0}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 137
    instance-of v6, v5, Lcom/android/settings/inputmethod/a;

    if-eqz v6, :cond_1

    .line 138
    check-cast v5, Lcom/android/settings/inputmethod/a;

    .line 139
    iget-object v6, p0, Lcom/android/settings/inputmethod/SpellCheckersSettings;->e:Landroid/view/textservice/SpellCheckerInfo;

    invoke-virtual {v5, v6}, Lcom/android/settings/inputmethod/a;->a(Landroid/view/textservice/SpellCheckerInfo;)V

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 142
    :cond_2
    iget-object v1, p0, Lcom/android/settings/inputmethod/SpellCheckersSettings;->c:Landroidx/preference/Preference;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/settings/inputmethod/SpellCheckersSettings;->e:Landroid/view/textservice/SpellCheckerInfo;

    if-eqz v0, :cond_3

    const/4 v2, 0x1

    :cond_3
    invoke-virtual {v1, v2}, Landroidx/preference/Preference;->setEnabled(Z)V

    return-void
.end method

.method private a(Landroid/view/textservice/SpellCheckerInfo;)V
    .locals 2

    .line 267
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/SpellCheckersSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 268
    invoke-virtual {p1}, Landroid/view/textservice/SpellCheckerInfo;->getId()Ljava/lang/String;

    move-result-object p1

    const-string v1, "selected_spell_checker"

    .line 267
    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 270
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/SpellCheckersSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "selected_spell_checker_subtype"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 275
    invoke-direct {p0}, Lcom/android/settings/inputmethod/SpellCheckersSettings;->a()V

    return-void
.end method

.method static synthetic a(Lcom/android/settings/inputmethod/SpellCheckersSettings;Landroid/view/textservice/SpellCheckerInfo;)V
    .locals 0

    .line 43
    invoke-direct {p0, p1}, Lcom/android/settings/inputmethod/SpellCheckersSettings;->a(Landroid/view/textservice/SpellCheckerInfo;)V

    return-void
.end method

.method static synthetic b(Lcom/android/settings/inputmethod/SpellCheckersSettings;)V
    .locals 0

    .line 43
    invoke-direct {p0}, Lcom/android/settings/inputmethod/SpellCheckersSettings;->a()V

    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x3b

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 66
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f15011c

    .line 68
    invoke-virtual {p0, p1}, Lcom/android/settings/inputmethod/SpellCheckersSettings;->addPreferencesFromResource(I)V

    const-string p1, "spellchecker_language"

    .line 69
    invoke-virtual {p0, p1}, Lcom/android/settings/inputmethod/SpellCheckersSettings;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/inputmethod/SpellCheckersSettings;->c:Landroidx/preference/Preference;

    .line 70
    iget-object p1, p0, Lcom/android/settings/inputmethod/SpellCheckersSettings;->c:Landroidx/preference/Preference;

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    const-string/jumbo p1, "textservices"

    .line 72
    invoke-virtual {p0, p1}, Lcom/android/settings/inputmethod/SpellCheckersSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/textservice/TextServicesManager;

    iput-object p1, p0, Lcom/android/settings/inputmethod/SpellCheckersSettings;->g:Landroid/view/textservice/TextServicesManager;

    .line 73
    iget-object p1, p0, Lcom/android/settings/inputmethod/SpellCheckersSettings;->g:Landroid/view/textservice/TextServicesManager;

    invoke-virtual {p1}, Landroid/view/textservice/TextServicesManager;->getCurrentSpellChecker()Landroid/view/textservice/SpellCheckerInfo;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/inputmethod/SpellCheckersSettings;->e:Landroid/view/textservice/SpellCheckerInfo;

    .line 74
    iget-object p1, p0, Lcom/android/settings/inputmethod/SpellCheckersSettings;->g:Landroid/view/textservice/TextServicesManager;

    invoke-virtual {p1}, Landroid/view/textservice/TextServicesManager;->getEnabledSpellCheckers()[Landroid/view/textservice/SpellCheckerInfo;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/inputmethod/SpellCheckersSettings;->f:[Landroid/view/textservice/SpellCheckerInfo;

    .line 1079
    new-instance p1, Lcom/android/settings/inputmethod/a;

    invoke-virtual {p0}, Lcom/android/settings/inputmethod/SpellCheckersSettings;->getPrefContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/inputmethod/SpellCheckersSettings;->f:[Landroid/view/textservice/SpellCheckerInfo;

    invoke-direct {p1, v0, v1}, Lcom/android/settings/inputmethod/a;-><init>(Landroid/content/Context;[Landroid/view/textservice/SpellCheckerInfo;)V

    const v0, 0x7f12074a

    .line 1081
    invoke-virtual {p1, v0}, Lcom/android/settings/inputmethod/a;->setTitle(I)V

    .line 1082
    iget-object v0, p0, Lcom/android/settings/inputmethod/SpellCheckersSettings;->f:[Landroid/view/textservice/SpellCheckerInfo;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    array-length v0, v0

    :goto_0
    if-lez v0, :cond_1

    const-string v0, "%s"

    .line 1084
    invoke-virtual {p1, v0}, Lcom/android/settings/inputmethod/a;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_1
    const v0, 0x7f12152b

    .line 1086
    invoke-virtual {p1, v0}, Lcom/android/settings/inputmethod/a;->setSummary(I)V

    :goto_1
    const-string v0, "default_spellchecker"

    .line 1088
    invoke-virtual {p1, v0}, Lcom/android/settings/inputmethod/a;->setKey(Ljava/lang/String;)V

    .line 1089
    invoke-virtual {p1, p0}, Lcom/android/settings/inputmethod/a;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 1090
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/SpellCheckersSettings;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/preference/PreferenceScreen;->addPreference(Landroidx/preference/Preference;)Z

    return-void
.end method

.method public onPause()V
    .locals 1

    .line 107
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    .line 108
    iget-object v0, p0, Lcom/android/settings/inputmethod/SpellCheckersSettings;->b:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0, p0}, Lcom/android/settings/widget/SwitchBar;->b(Lcom/android/settings/widget/SwitchBar$a;)V

    return-void
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 5

    .line 168
    check-cast p2, Landroid/view/textservice/SpellCheckerInfo;

    .line 170
    invoke-virtual {p2}, Landroid/view/textservice/SpellCheckerInfo;->getServiceInfo()Landroid/content/pm/ServiceInfo;

    move-result-object p1

    iget-object p1, p1, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget p1, p1, Landroid/content/pm/ApplicationInfo;->flags:I

    const/4 v0, 0x1

    and-int/2addr p1, v0

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    move p1, v0

    goto :goto_0

    :cond_0
    move p1, v1

    :goto_0
    if-eqz p1, :cond_1

    .line 172
    invoke-direct {p0, p2}, Lcom/android/settings/inputmethod/SpellCheckersSettings;->a(Landroid/view/textservice/SpellCheckerInfo;)V

    return v0

    .line 2243
    :cond_1
    iget-object p1, p0, Lcom/android/settings/inputmethod/SpellCheckersSettings;->d:Lcolor/support/v7/app/AlertDialog;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcolor/support/v7/app/AlertDialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 2244
    iget-object p1, p0, Lcom/android/settings/inputmethod/SpellCheckersSettings;->d:Lcolor/support/v7/app/AlertDialog;

    invoke-virtual {p1}, Lcolor/support/v7/app/AlertDialog;->dismiss()V

    .line 2246
    :cond_2
    new-instance p1, Lcolor/support/v7/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/inputmethod/SpellCheckersSettings;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-direct {p1, v2}, Lcolor/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x1040014

    .line 2247
    invoke-virtual {p1, v2}, Lcolor/support/v7/app/AlertDialog$Builder;->setTitle(I)Lcolor/support/v7/app/AlertDialog$Builder;

    const v2, 0x7f12152e

    .line 2248
    new-array v3, v0, [Ljava/lang/Object;

    .line 2249
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/SpellCheckersSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {p2, v4}, Landroid/view/textservice/SpellCheckerInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v4

    aput-object v4, v3, v1

    .line 2248
    invoke-virtual {p0, v2, v3}, Lcom/android/settings/inputmethod/SpellCheckersSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcolor/support/v7/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcolor/support/v7/app/AlertDialog$Builder;

    .line 2250
    invoke-virtual {p1, v0}, Lcolor/support/v7/app/AlertDialog$Builder;->setCancelable(Z)Lcolor/support/v7/app/AlertDialog$Builder;

    const v0, 0x104000a

    .line 2251
    new-instance v2, Lcom/android/settings/inputmethod/SpellCheckersSettings$2;

    invoke-direct {v2, p0, p2}, Lcom/android/settings/inputmethod/SpellCheckersSettings$2;-><init>(Lcom/android/settings/inputmethod/SpellCheckersSettings;Landroid/view/textservice/SpellCheckerInfo;)V

    invoke-virtual {p1, v0, v2}, Lcolor/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcolor/support/v7/app/AlertDialog$Builder;

    const/high16 p2, 0x1040000

    .line 2257
    new-instance v0, Lcom/android/settings/inputmethod/SpellCheckersSettings$3;

    invoke-direct {v0, p0}, Lcom/android/settings/inputmethod/SpellCheckersSettings$3;-><init>(Lcom/android/settings/inputmethod/SpellCheckersSettings;)V

    invoke-virtual {p1, p2, v0}, Lcolor/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcolor/support/v7/app/AlertDialog$Builder;

    .line 2262
    invoke-virtual {p1}, Lcolor/support/v7/app/AlertDialog$Builder;->create()Lcolor/support/v7/app/AlertDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/inputmethod/SpellCheckersSettings;->d:Lcolor/support/v7/app/AlertDialog;

    .line 2263
    iget-object p1, p0, Lcom/android/settings/inputmethod/SpellCheckersSettings;->d:Lcolor/support/v7/app/AlertDialog;

    invoke-virtual {p1}, Lcolor/support/v7/app/AlertDialog;->show()V

    return v1
.end method

.method public onPreferenceClick(Landroidx/preference/Preference;)Z
    .locals 8

    .line 159
    iget-object v0, p0, Lcom/android/settings/inputmethod/SpellCheckersSettings;->c:Landroidx/preference/Preference;

    const/4 v1, 0x0

    if-ne p1, v0, :cond_4

    .line 1189
    iget-object p1, p0, Lcom/android/settings/inputmethod/SpellCheckersSettings;->d:Lcolor/support/v7/app/AlertDialog;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcolor/support/v7/app/AlertDialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1190
    iget-object p1, p0, Lcom/android/settings/inputmethod/SpellCheckersSettings;->d:Lcolor/support/v7/app/AlertDialog;

    invoke-virtual {p1}, Lcolor/support/v7/app/AlertDialog;->dismiss()V

    .line 1192
    :cond_0
    iget-object p1, p0, Lcom/android/settings/inputmethod/SpellCheckersSettings;->g:Landroid/view/textservice/TextServicesManager;

    invoke-virtual {p1}, Landroid/view/textservice/TextServicesManager;->getCurrentSpellChecker()Landroid/view/textservice/SpellCheckerInfo;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 1198
    iget-object v0, p0, Lcom/android/settings/inputmethod/SpellCheckersSettings;->g:Landroid/view/textservice/TextServicesManager;

    invoke-virtual {v0, v1}, Landroid/view/textservice/TextServicesManager;->getCurrentSpellCheckerSubtype(Z)Landroid/view/textservice/SpellCheckerSubtype;

    move-result-object v0

    .line 1200
    new-instance v2, Lcolor/support/v7/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/inputmethod/SpellCheckersSettings;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    invoke-direct {v2, v3}, Lcolor/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f12101e

    .line 1201
    invoke-virtual {v2, v3}, Lcolor/support/v7/app/AlertDialog$Builder;->setTitle(I)Lcolor/support/v7/app/AlertDialog$Builder;

    .line 1202
    invoke-virtual {p1}, Landroid/view/textservice/SpellCheckerInfo;->getSubtypeCount()I

    move-result v3

    add-int/lit8 v4, v3, 0x1

    .line 1203
    new-array v4, v4, [Ljava/lang/CharSequence;

    const/4 v5, 0x0

    .line 1204
    invoke-direct {p0, p1, v5}, Lcom/android/settings/inputmethod/SpellCheckersSettings;->a(Landroid/view/textservice/SpellCheckerInfo;Landroid/view/textservice/SpellCheckerSubtype;)Ljava/lang/CharSequence;

    move-result-object v5

    aput-object v5, v4, v1

    :goto_0
    move v5, v1

    :cond_1
    if-ge v1, v3, :cond_2

    .line 1207
    invoke-virtual {p1, v1}, Landroid/view/textservice/SpellCheckerInfo;->getSubtypeAt(I)Landroid/view/textservice/SpellCheckerSubtype;

    move-result-object v6

    add-int/lit8 v1, v1, 0x1

    .line 1209
    invoke-direct {p0, p1, v6}, Lcom/android/settings/inputmethod/SpellCheckersSettings;->a(Landroid/view/textservice/SpellCheckerInfo;Landroid/view/textservice/SpellCheckerSubtype;)Ljava/lang/CharSequence;

    move-result-object v7

    aput-object v7, v4, v1

    .line 1210
    invoke-virtual {v6, v0}, Landroid/view/textservice/SpellCheckerSubtype;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    goto :goto_0

    .line 1214
    :cond_2
    new-instance v0, Lcom/android/settings/inputmethod/SpellCheckersSettings$1;

    invoke-direct {v0, p0, p1}, Lcom/android/settings/inputmethod/SpellCheckersSettings$1;-><init>(Lcom/android/settings/inputmethod/SpellCheckersSettings;Landroid/view/textservice/SpellCheckerInfo;)V

    invoke-virtual {v2, v4, v5, v0}, Lcolor/support/v7/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Lcolor/support/v7/app/AlertDialog$Builder;

    .line 1238
    invoke-virtual {v2}, Lcolor/support/v7/app/AlertDialog$Builder;->create()Lcolor/support/v7/app/AlertDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/inputmethod/SpellCheckersSettings;->d:Lcolor/support/v7/app/AlertDialog;

    .line 1239
    iget-object p1, p0, Lcom/android/settings/inputmethod/SpellCheckersSettings;->d:Lcolor/support/v7/app/AlertDialog;

    invoke-virtual {p1}, Lcolor/support/v7/app/AlertDialog;->show()V

    :cond_3
    const/4 p1, 0x1

    return p1

    :cond_4
    return v1
.end method

.method public onResume()V
    .locals 2

    .line 95
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 96
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/SpellCheckersSettings;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SettingsActivity;

    invoke-virtual {v0}, Lcom/android/settings/SettingsActivity;->getSwitchBar()Lcom/android/settings/widget/SwitchBar;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/inputmethod/SpellCheckersSettings;->b:Lcom/android/settings/widget/SwitchBar;

    .line 97
    iget-object v0, p0, Lcom/android/settings/inputmethod/SpellCheckersSettings;->b:Lcom/android/settings/widget/SwitchBar;

    const v1, 0x7f12152a

    invoke-virtual {v0, v1, v1}, Lcom/android/settings/widget/SwitchBar;->a(II)V

    .line 100
    iget-object v0, p0, Lcom/android/settings/inputmethod/SpellCheckersSettings;->b:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0}, Lcom/android/settings/widget/SwitchBar;->a()V

    .line 101
    iget-object v0, p0, Lcom/android/settings/inputmethod/SpellCheckersSettings;->b:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0, p0}, Lcom/android/settings/widget/SwitchBar;->a(Lcom/android/settings/widget/SwitchBar$a;)V

    .line 102
    invoke-direct {p0}, Lcom/android/settings/inputmethod/SpellCheckersSettings;->a()V

    return-void
.end method

.method public onSwitchChanged(Landroid/widget/Switch;Z)V
    .locals 1

    .line 113
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/SpellCheckersSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "spell_checker_enabled"

    invoke-static {p1, v0, p2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 115
    invoke-direct {p0}, Lcom/android/settings/inputmethod/SpellCheckersSettings;->a()V

    return-void
.end method
