.class public final Lcom/android/settings/inputmethod/b;
.super Lcom/android/settingslib/core/a;
.source "SpellCheckerPreferenceController.java"

# interfaces
.implements Lcom/android/settings/core/d;


# instance fields
.field private final a:Landroid/view/textservice/TextServicesManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 39
    invoke-direct {p0, p1}, Lcom/android/settingslib/core/a;-><init>(Landroid/content/Context;)V

    const-string/jumbo v0, "textservices"

    .line 40
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/textservice/TextServicesManager;

    iput-object p1, p0, Lcom/android/settings/inputmethod/b;->a:Landroid/view/textservice/TextServicesManager;

    return-void
.end method


# virtual methods
.method public final displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    .line 46
    invoke-super {p0, p1}, Lcom/android/settingslib/core/a;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    const-string v0, "spellcheckers_settings"

    .line 47
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 49
    invoke-static {p1}, Lcom/android/settingslib/inputmethod/b;->a(Landroidx/preference/Preference;)V

    :cond_0
    return-void
.end method

.method public final getPreferenceKey()Ljava/lang/String;
    .locals 1

    const-string v0, "spellcheckers_settings"

    return-object v0
.end method

.method public final isAvailable()Z
    .locals 2

    .line 55
    iget-object v0, p0, Lcom/android/settings/inputmethod/b;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f05003d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method public final updateState(Landroidx/preference/Preference;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 68
    :cond_0
    iget-object v0, p0, Lcom/android/settings/inputmethod/b;->a:Landroid/view/textservice/TextServicesManager;

    invoke-virtual {v0}, Landroid/view/textservice/TextServicesManager;->isSpellCheckerEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    const v0, 0x7f12163c

    .line 69
    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setSummary(I)V

    return-void

    .line 71
    :cond_1
    iget-object v0, p0, Lcom/android/settings/inputmethod/b;->a:Landroid/view/textservice/TextServicesManager;

    invoke-virtual {v0}, Landroid/view/textservice/TextServicesManager;->getCurrentSpellChecker()Landroid/view/textservice/SpellCheckerInfo;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 73
    iget-object v1, p0, Lcom/android/settings/inputmethod/b;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/textservice/SpellCheckerInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    return-void

    :cond_2
    const v0, 0x7f12152b

    .line 75
    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setSummary(I)V

    return-void
.end method
