.class public final Lcom/coloros/settings/feature/othersettings/input/ColorVirtualKeyboardFragment;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "ColorVirtualKeyboardFragment.java"

# interfaces
.implements Lcom/android/settings/search/Indexable;


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;


# instance fields
.field private final a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/settingslib/inputmethod/InputMethodPreference;",
            ">;"
        }
    .end annotation
.end field

.field private b:Landroid/view/inputmethod/InputMethodManager;

.field private c:Landroid/app/admin/DevicePolicyManager;

.field private d:Landroidx/preference/Preference;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 115
    new-instance v0, Lcom/coloros/settings/feature/othersettings/input/ColorVirtualKeyboardFragment$1;

    invoke-direct {v0}, Lcom/coloros/settings/feature/othersettings/input/ColorVirtualKeyboardFragment$1;-><init>()V

    sput-object v0, Lcom/coloros/settings/feature/othersettings/input/ColorVirtualKeyboardFragment;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 46
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 50
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/coloros/settings/feature/othersettings/input/ColorVirtualKeyboardFragment;->a:Ljava/util/ArrayList;

    return-void
.end method

.method private static synthetic a(Ljava/text/Collator;Lcom/android/settingslib/inputmethod/InputMethodPreference;Lcom/android/settingslib/inputmethod/InputMethodPreference;)I
    .locals 0

    .line 100
    invoke-virtual {p1, p2, p0}, Lcom/android/settingslib/inputmethod/InputMethodPreference;->a(Lcom/android/settingslib/inputmethod/InputMethodPreference;Ljava/text/Collator;)I

    move-result p0

    return p0
.end method

.method public static synthetic lambda$m3fit11oEvEGKWgnHUPbjUiLcUU(Ljava/text/Collator;Lcom/android/settingslib/inputmethod/InputMethodPreference;Lcom/android/settingslib/inputmethod/InputMethodPreference;)I
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/coloros/settings/feature/othersettings/input/ColorVirtualKeyboardFragment;->a(Ljava/text/Collator;Lcom/android/settingslib/inputmethod/InputMethodPreference;Lcom/android/settingslib/inputmethod/InputMethodPreference;)I

    move-result p0

    return p0
.end method


# virtual methods
.method public final getMetricsCategory()I
    .locals 1

    const/16 v0, 0x159

    return v0
.end method

.method public final onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 0

    .line 57
    invoke-virtual {p0}, Lcom/coloros/settings/feature/othersettings/input/ColorVirtualKeyboardFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/Activity;

    const p2, 0x7f150072

    .line 58
    invoke-virtual {p0, p2}, Lcom/coloros/settings/feature/othersettings/input/ColorVirtualKeyboardFragment;->addPreferencesFromResource(I)V

    .line 59
    const-class p2, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {p1, p2}, Landroid/app/Activity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/inputmethod/InputMethodManager;

    iput-object p2, p0, Lcom/coloros/settings/feature/othersettings/input/ColorVirtualKeyboardFragment;->b:Landroid/view/inputmethod/InputMethodManager;

    .line 60
    const-class p2, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {p1, p2}, Landroid/app/Activity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/admin/DevicePolicyManager;

    iput-object p1, p0, Lcom/coloros/settings/feature/othersettings/input/ColorVirtualKeyboardFragment;->c:Landroid/app/admin/DevicePolicyManager;

    const-string p1, "add_virtual_keyboard_screen"

    .line 62
    invoke-virtual {p0, p1}, Lcom/coloros/settings/feature/othersettings/input/ColorVirtualKeyboardFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    .line 61
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/preference/Preference;

    iput-object p1, p0, Lcom/coloros/settings/feature/othersettings/input/ColorVirtualKeyboardFragment;->d:Landroidx/preference/Preference;

    return-void
.end method

.method public final onResume()V
    .locals 9

    .line 67
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 1080
    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/input/ColorVirtualKeyboardFragment;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1081
    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/input/ColorVirtualKeyboardFragment;->c:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManager;->getPermittedInputMethodsForCurrentUser()Ljava/util/List;

    move-result-object v0

    .line 1082
    invoke-virtual {p0}, Lcom/coloros/settings/feature/othersettings/input/ColorVirtualKeyboardFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v1

    .line 1083
    iget-object v2, p0, Lcom/coloros/settings/feature/othersettings/input/ColorVirtualKeyboardFragment;->b:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v2}, Landroid/view/inputmethod/InputMethodManager;->getEnabledInputMethodList()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    move v4, v3

    goto :goto_0

    .line 1084
    :cond_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    :goto_0
    move v5, v3

    :goto_1
    if-ge v5, v4, :cond_3

    .line 1086
    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/inputmethod/InputMethodInfo;

    if-eqz v0, :cond_2

    .line 1088
    invoke-virtual {v6}, Landroid/view/inputmethod/InputMethodInfo;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v0, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    goto :goto_2

    :cond_1
    move v7, v3

    goto :goto_3

    :cond_2
    :goto_2
    const/4 v7, 0x1

    .line 1089
    :goto_3
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroid/view/inputmethod/InputMethodInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    .line 1090
    new-instance v8, Lcom/android/settingslib/inputmethod/InputMethodPreference;

    invoke-direct {v8, v1, v6, v7}, Lcom/android/settingslib/inputmethod/InputMethodPreference;-><init>(Landroid/content/Context;Landroid/view/inputmethod/InputMethodInfo;Z)V

    .line 1097
    iget-object v6, p0, Lcom/coloros/settings/feature/othersettings/input/ColorVirtualKeyboardFragment;->a:Ljava/util/ArrayList;

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 1099
    :cond_3
    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object v0

    .line 1100
    iget-object v1, p0, Lcom/coloros/settings/feature/othersettings/input/ColorVirtualKeyboardFragment;->a:Ljava/util/ArrayList;

    new-instance v2, Lcom/coloros/settings/feature/othersettings/input/-$$Lambda$ColorVirtualKeyboardFragment$m3fit11oEvEGKWgnHUPbjUiLcUU;

    invoke-direct {v2, v0}, Lcom/coloros/settings/feature/othersettings/input/-$$Lambda$ColorVirtualKeyboardFragment$m3fit11oEvEGKWgnHUPbjUiLcUU;-><init>(Ljava/text/Collator;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->sort(Ljava/util/Comparator;)V

    .line 1101
    invoke-virtual {p0}, Lcom/coloros/settings/feature/othersettings/input/ColorVirtualKeyboardFragment;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/preference/PreferenceScreen;->removeAll()V

    .line 1102
    invoke-virtual {p0}, Lcom/coloros/settings/feature/othersettings/input/ColorVirtualKeyboardFragment;->shouldAddPreferenceHeader()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/coloros/settings/feature/othersettings/input/ColorVirtualKeyboardFragment;->addPreferenceHeader(Z)V

    :goto_4
    if-ge v3, v4, :cond_4

    .line 1104
    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/input/ColorVirtualKeyboardFragment;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/inputmethod/InputMethodPreference;

    .line 1105
    invoke-virtual {v0, v3}, Lcom/android/settingslib/inputmethod/InputMethodPreference;->setOrder(I)V

    .line 1106
    invoke-virtual {p0}, Lcom/coloros/settings/feature/othersettings/input/ColorVirtualKeyboardFragment;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroidx/preference/PreferenceScreen;->addPreference(Landroidx/preference/Preference;)Z

    .line 1107
    invoke-static {v0}, Lcom/android/settingslib/inputmethod/b;->a(Landroidx/preference/Preference;)V

    .line 1108
    invoke-virtual {v0}, Lcom/android/settingslib/inputmethod/InputMethodPreference;->a()V

    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 1111
    :cond_4
    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/input/ColorVirtualKeyboardFragment;->d:Landroidx/preference/Preference;

    invoke-virtual {v0, v4}, Landroidx/preference/Preference;->setOrder(I)V

    .line 1112
    invoke-virtual {p0}, Lcom/coloros/settings/feature/othersettings/input/ColorVirtualKeyboardFragment;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/coloros/settings/feature/othersettings/input/ColorVirtualKeyboardFragment;->d:Landroidx/preference/Preference;

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceScreen;->addPreference(Landroidx/preference/Preference;)Z

    return-void
.end method
