.class public Lcom/android/settings/accessibility/ShortcutServicePickerFragment;
.super Lcom/android/settings/widget/RadioButtonPickerFragment;
.source "ShortcutServicePickerFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/accessibility/ShortcutServicePickerFragment$b;,
        Lcom/android/settings/accessibility/ShortcutServicePickerFragment$a;,
        Lcom/android/settings/accessibility/ShortcutServicePickerFragment$ConfirmationDialogFragment;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 63
    invoke-direct {p0}, Lcom/android/settings/widget/RadioButtonPickerFragment;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/android/settings/accessibility/ShortcutServicePickerFragment;Ljava/lang/String;)V
    .locals 0

    .line 1157
    invoke-virtual {p0, p1}, Lcom/android/settings/accessibility/ShortcutServicePickerFragment;->b(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final a()Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/android/settingslib/widget/g;",
            ">;"
        }
    .end annotation

    .line 77
    invoke-virtual {p0}, Lcom/android/settings/accessibility/ShortcutServicePickerFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 78
    const-class v1, Landroid/view/accessibility/AccessibilityManager;

    .line 79
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    .line 81
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->getInstalledAccessibilityServiceList()Ljava/util/List;

    move-result-object v0

    .line 82
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 84
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 86
    invoke-static {}, Lcom/android/internal/accessibility/AccessibilityShortcutController;->getFrameworkShortcutFeaturesMap()Ljava/util/Map;

    move-result-object v3

    .line 87
    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    .line 89
    sget-object v6, Lcom/android/internal/accessibility/AccessibilityShortcutController;->COLOR_INVERSION_COMPONENT_NAME:Landroid/content/ComponentName;

    invoke-virtual {v5, v6}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const v6, 0x7f0806c0

    goto :goto_1

    .line 91
    :cond_0
    sget-object v6, Lcom/android/internal/accessibility/AccessibilityShortcutController;->DALTONIZER_COMPONENT_NAME:Landroid/content/ComponentName;

    invoke-virtual {v5, v6}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    const v6, 0x7f0806c8

    goto :goto_1

    :cond_1
    const v6, 0x7f08053b

    .line 96
    :goto_1
    new-instance v7, Lcom/android/settings/accessibility/ShortcutServicePickerFragment$a;

    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/internal/accessibility/AccessibilityShortcutController$ToggleableFrameworkFeatureInfo;

    .line 97
    invoke-virtual {v5}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v7, p0, v8, v6, v5}, Lcom/android/settings/accessibility/ShortcutServicePickerFragment$a;-><init>(Lcom/android/settings/accessibility/ShortcutServicePickerFragment;Lcom/android/internal/accessibility/AccessibilityShortcutController$ToggleableFrameworkFeatureInfo;ILjava/lang/String;)V

    .line 96
    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    :goto_2
    if-ge v3, v1, :cond_4

    .line 102
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/accessibilityservice/AccessibilityServiceInfo;

    .line 103
    invoke-static {v4}, Lcom/coloros/settings/utils/al;->a(Landroid/accessibilityservice/AccessibilityServiceInfo;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 106
    new-instance v5, Lcom/android/settings/accessibility/ShortcutServicePickerFragment$b;

    invoke-direct {v5, p0, v4}, Lcom/android/settings/accessibility/ShortcutServicePickerFragment$b;-><init>(Lcom/android/settings/accessibility/ShortcutServicePickerFragment;Landroid/accessibilityservice/AccessibilityServiceInfo;)V

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_4
    return-object v2
.end method

.method public final a(Lcom/android/settings/widget/RadioButtonPreference;)V
    .locals 2

    .line 135
    invoke-virtual {p1}, Lcom/android/settings/widget/RadioButtonPreference;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 137
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 138
    invoke-super {p0, p1}, Lcom/android/settings/widget/RadioButtonPickerFragment;->a(Lcom/android/settings/widget/RadioButtonPreference;)V

    return-void

    .line 140
    :cond_0
    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object p1

    .line 141
    invoke-static {}, Lcom/android/internal/accessibility/AccessibilityShortcutController;->getFrameworkShortcutFeaturesMap()Ljava/util/Map;

    move-result-object v1

    .line 142
    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 144
    invoke-virtual {p0, v0}, Lcom/android/settings/accessibility/ShortcutServicePickerFragment;->b(Ljava/lang/String;)V

    return-void

    .line 146
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/accessibility/ShortcutServicePickerFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 148
    invoke-static {p0, v0}, Lcom/android/settings/accessibility/ShortcutServicePickerFragment$ConfirmationDialogFragment;->a(Lcom/android/settings/accessibility/ShortcutServicePickerFragment;Ljava/lang/String;)Lcom/android/settings/accessibility/ShortcutServicePickerFragment$ConfirmationDialogFragment;

    move-result-object v0

    .line 149
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    const-string v1, "ConfirmationDialogFragment"

    invoke-virtual {v0, p1, v1}, Lcom/android/settings/accessibility/ShortcutServicePickerFragment$ConfirmationDialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public final a(Ljava/lang/String;)Z
    .locals 2

    .line 128
    invoke-virtual {p0}, Lcom/android/settings/accessibility/ShortcutServicePickerFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "accessibility_shortcut_target_service"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    const/4 p1, 0x1

    return p1
.end method

.method public final b()Ljava/lang/String;
    .locals 2

    .line 116
    invoke-virtual {p0}, Lcom/android/settings/accessibility/ShortcutServicePickerFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/settingslib/a/a;->b(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 118
    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 120
    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final d()Landroidx/preference/PreferenceGroup;
    .locals 2

    .line 303
    invoke-virtual {p0}, Lcom/android/settings/accessibility/ShortcutServicePickerFragment;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    const-string v1, "accessibility_shortcut_service_container"

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/PreferenceGroup;

    if-eqz v0, :cond_0

    return-object v0

    .line 307
    :cond_0
    invoke-super {p0}, Lcom/android/settings/widget/RadioButtonPickerFragment;->d()Landroidx/preference/PreferenceGroup;

    move-result-object v0

    return-object v0
.end method

.method public getMetricsCategory()I
    .locals 1

    const/4 v0, 0x6

    return v0
.end method

.method public getPreferenceScreenResId()I
    .locals 1

    const v0, 0x7f150009

    return v0
.end method

.method public final h_()I
    .locals 1

    const v0, 0x7f0d00a7

    return v0
.end method
