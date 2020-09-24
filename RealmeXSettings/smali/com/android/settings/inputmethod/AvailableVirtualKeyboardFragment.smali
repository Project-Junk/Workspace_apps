.class public Lcom/android/settings/inputmethod/AvailableVirtualKeyboardFragment;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "AvailableVirtualKeyboardFragment.java"

# interfaces
.implements Lcom/coloros/settingslib/inputmethod/InputMethodPreference$a;


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;


# instance fields
.field protected final a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/coloros/settingslib/inputmethod/InputMethodPreference;",
            ">;"
        }
    .end annotation
.end field

.field protected b:Lcom/android/settingslib/inputmethod/c;

.field protected c:Landroid/view/inputmethod/InputMethodManager;

.field protected d:Landroid/app/admin/DevicePolicyManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 118
    new-instance v0, Lcom/android/settings/inputmethod/AvailableVirtualKeyboardFragment$1;

    invoke-direct {v0}, Lcom/android/settings/inputmethod/AvailableVirtualKeyboardFragment$1;-><init>()V

    sput-object v0, Lcom/android/settings/inputmethod/AvailableVirtualKeyboardFragment;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 44
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/inputmethod/AvailableVirtualKeyboardFragment;->a:Ljava/util/ArrayList;

    return-void
.end method

.method private static synthetic a(Ljava/text/Collator;Lcom/coloros/settingslib/inputmethod/InputMethodPreference;Lcom/coloros/settingslib/inputmethod/InputMethodPreference;)I
    .locals 0

    .line 107
    invoke-virtual {p1, p2, p0}, Lcom/coloros/settingslib/inputmethod/InputMethodPreference;->a(Lcom/coloros/settingslib/inputmethod/InputMethodPreference;Ljava/text/Collator;)I

    move-result p0

    return p0
.end method

.method public static synthetic lambda$YhL_eCtEiQUOk9YHSzZCTgpyGvA(Ljava/text/Collator;Lcom/coloros/settingslib/inputmethod/InputMethodPreference;Lcom/coloros/settingslib/inputmethod/InputMethodPreference;)I
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/android/settings/inputmethod/AvailableVirtualKeyboardFragment;->a(Ljava/text/Collator;Lcom/coloros/settingslib/inputmethod/InputMethodPreference;Lcom/coloros/settingslib/inputmethod/InputMethodPreference;)I

    move-result p0

    return p0
.end method


# virtual methods
.method protected a()V
    .locals 14

    .line 90
    iget-object v0, p0, Lcom/android/settings/inputmethod/AvailableVirtualKeyboardFragment;->b:Lcom/android/settingslib/inputmethod/c;

    invoke-virtual {v0}, Lcom/android/settingslib/inputmethod/c;->a()V

    .line 92
    iget-object v0, p0, Lcom/android/settings/inputmethod/AvailableVirtualKeyboardFragment;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 93
    iget-object v0, p0, Lcom/android/settings/inputmethod/AvailableVirtualKeyboardFragment;->d:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManager;->getPermittedInputMethodsForCurrentUser()Ljava/util/List;

    move-result-object v0

    .line 94
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/AvailableVirtualKeyboardFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v7

    .line 95
    iget-object v1, p0, Lcom/android/settings/inputmethod/AvailableVirtualKeyboardFragment;->b:Lcom/android/settingslib/inputmethod/c;

    invoke-virtual {v1}, Lcom/android/settingslib/inputmethod/c;->b()Ljava/util/List;

    move-result-object v8

    .line 96
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v9

    const/4 v10, 0x0

    move v11, v10

    :goto_0
    if-ge v11, v9, :cond_2

    .line 98
    invoke-interface {v8, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v12, v1

    check-cast v12, Landroid/view/inputmethod/InputMethodInfo;

    if-eqz v0, :cond_1

    .line 100
    invoke-virtual {v12}, Landroid/view/inputmethod/InputMethodInfo;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    move v5, v10

    goto :goto_2

    :cond_1
    :goto_1
    const/4 v1, 0x1

    move v5, v1

    .line 101
    :goto_2
    new-instance v13, Lcom/coloros/settingslib/inputmethod/InputMethodPreference;

    const/4 v4, 0x1

    move-object v1, v13

    move-object v2, v7

    move-object v3, v12

    move-object v6, p0

    invoke-direct/range {v1 .. v6}, Lcom/coloros/settingslib/inputmethod/InputMethodPreference;-><init>(Landroid/content/Context;Landroid/view/inputmethod/InputMethodInfo;ZZLcom/coloros/settingslib/inputmethod/InputMethodPreference$a;)V

    .line 103
    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v12, v1}, Landroid/view/inputmethod/InputMethodInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v13, v1}, Lcom/coloros/settingslib/inputmethod/InputMethodPreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 104
    iget-object v1, p0, Lcom/android/settings/inputmethod/AvailableVirtualKeyboardFragment;->a:Ljava/util/ArrayList;

    invoke-virtual {v1, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 106
    :cond_2
    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object v0

    .line 107
    iget-object v1, p0, Lcom/android/settings/inputmethod/AvailableVirtualKeyboardFragment;->a:Ljava/util/ArrayList;

    new-instance v2, Lcom/android/settings/inputmethod/-$$Lambda$AvailableVirtualKeyboardFragment$YhL_eCtEiQUOk9YHSzZCTgpyGvA;

    invoke-direct {v2, v0}, Lcom/android/settings/inputmethod/-$$Lambda$AvailableVirtualKeyboardFragment$YhL_eCtEiQUOk9YHSzZCTgpyGvA;-><init>(Ljava/text/Collator;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->sort(Ljava/util/Comparator;)V

    .line 108
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/AvailableVirtualKeyboardFragment;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/preference/PreferenceScreen;->removeAll()V

    :goto_3
    if-ge v10, v9, :cond_3

    .line 110
    iget-object v0, p0, Lcom/android/settings/inputmethod/AvailableVirtualKeyboardFragment;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coloros/settingslib/inputmethod/InputMethodPreference;

    .line 111
    invoke-virtual {v0, v10}, Lcom/coloros/settingslib/inputmethod/InputMethodPreference;->setOrder(I)V

    .line 112
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/AvailableVirtualKeyboardFragment;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroidx/preference/PreferenceScreen;->addPreference(Landroidx/preference/Preference;)Z

    .line 113
    invoke-static {v0}, Lcom/android/settingslib/inputmethod/b;->a(Landroidx/preference/Preference;)V

    .line 114
    invoke-virtual {v0}, Lcom/coloros/settingslib/inputmethod/InputMethodPreference;->b()V

    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    :cond_3
    return-void
.end method

.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x15b

    return v0
.end method

.method public onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 0

    const p1, 0x7f150023

    .line 54
    invoke-virtual {p0, p1}, Lcom/android/settings/inputmethod/AvailableVirtualKeyboardFragment;->addPreferencesFromResource(I)V

    .line 55
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/AvailableVirtualKeyboardFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    .line 57
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/android/settingslib/inputmethod/c;->a(Landroid/content/Context;)Lcom/android/settingslib/inputmethod/c;

    move-result-object p2

    iput-object p2, p0, Lcom/android/settings/inputmethod/AvailableVirtualKeyboardFragment;->b:Lcom/android/settingslib/inputmethod/c;

    .line 58
    const-class p2, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {p1, p2}, Landroid/app/Activity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/inputmethod/InputMethodManager;

    iput-object p2, p0, Lcom/android/settings/inputmethod/AvailableVirtualKeyboardFragment;->c:Landroid/view/inputmethod/InputMethodManager;

    .line 59
    const-class p2, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {p1, p2}, Landroid/app/Activity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/admin/DevicePolicyManager;

    iput-object p1, p0, Lcom/android/settings/inputmethod/AvailableVirtualKeyboardFragment;->d:Landroid/app/admin/DevicePolicyManager;

    return-void
.end method

.method public onResume()V
    .locals 1

    .line 64
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 67
    iget-object v0, p0, Lcom/android/settings/inputmethod/AvailableVirtualKeyboardFragment;->b:Lcom/android/settingslib/inputmethod/c;

    invoke-virtual {v0}, Lcom/android/settingslib/inputmethod/c;->a()V

    .line 68
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/AvailableVirtualKeyboardFragment;->a()V

    return-void
.end method

.method public onSaveInputMethodPreference(Lcom/coloros/settingslib/inputmethod/InputMethodPreference;)V
    .locals 2

    .line 73
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/AvailableVirtualKeyboardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget p1, p1, Landroid/content/res/Configuration;->keyboard:I

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 75
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/AvailableVirtualKeyboardFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/inputmethod/AvailableVirtualKeyboardFragment;->c:Landroid/view/inputmethod/InputMethodManager;

    .line 76
    invoke-virtual {v1}, Landroid/view/inputmethod/InputMethodManager;->getInputMethodList()Ljava/util/List;

    move-result-object v1

    .line 75
    invoke-static {p0, v0, v1, p1}, Lcom/android/settingslib/inputmethod/b;->a(Landroidx/preference/PreferenceFragmentCompat;Landroid/content/ContentResolver;Ljava/util/List;Z)V

    .line 78
    iget-object p1, p0, Lcom/android/settings/inputmethod/AvailableVirtualKeyboardFragment;->b:Lcom/android/settingslib/inputmethod/c;

    invoke-virtual {p1}, Lcom/android/settingslib/inputmethod/c;->a()V

    .line 79
    iget-object p1, p0, Lcom/android/settings/inputmethod/AvailableVirtualKeyboardFragment;->a:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coloros/settingslib/inputmethod/InputMethodPreference;

    .line 80
    invoke-virtual {v0}, Lcom/coloros/settingslib/inputmethod/InputMethodPreference;->b()V

    goto :goto_1

    :cond_1
    return-void
.end method
