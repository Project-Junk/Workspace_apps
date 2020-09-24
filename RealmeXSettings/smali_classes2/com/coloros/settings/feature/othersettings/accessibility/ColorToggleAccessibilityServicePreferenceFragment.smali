.class public Lcom/coloros/settings/feature/othersettings/accessibility/ColorToggleAccessibilityServicePreferenceFragment;
.super Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;
.source "ColorToggleAccessibilityServicePreferenceFragment.java"


# instance fields
.field private a:Landroid/view/View;

.field private b:Landroid/widget/Button;

.field private l:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 37
    invoke-direct {p0}, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;-><init>()V

    const/4 v0, 0x0

    .line 41
    iput-boolean v0, p0, Lcom/coloros/settings/feature/othersettings/accessibility/ColorToggleAccessibilityServicePreferenceFragment;->l:Z

    return-void
.end method

.method static synthetic a(Lcom/coloros/settings/feature/othersettings/accessibility/ColorToggleAccessibilityServicePreferenceFragment;)Landroid/content/Intent;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/coloros/settings/feature/othersettings/accessibility/ColorToggleAccessibilityServicePreferenceFragment;->g:Landroid/content/Intent;

    return-object p0
.end method


# virtual methods
.method public final b()V
    .locals 1

    const/4 v0, 0x1

    .line 92
    iput-boolean v0, p0, Lcom/coloros/settings/feature/othersettings/accessibility/ColorToggleAccessibilityServicePreferenceFragment;->l:Z

    return-void
.end method

.method public final d()V
    .locals 2

    .line 2075
    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/accessibility/ColorToggleAccessibilityServicePreferenceFragment;->a:Landroid/view/View;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/coloros/settings/feature/othersettings/accessibility/ColorToggleAccessibilityServicePreferenceFragment;->b:Landroid/widget/Button;

    if-nez v1, :cond_0

    goto :goto_1

    .line 2078
    :cond_0
    iget-boolean v1, p0, Lcom/coloros/settings/feature/othersettings/accessibility/ColorToggleAccessibilityServicePreferenceFragment;->l:Z

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2079
    iget-boolean v0, p0, Lcom/coloros/settings/feature/othersettings/accessibility/ColorToggleAccessibilityServicePreferenceFragment;->l:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/accessibility/ColorToggleAccessibilityServicePreferenceFragment;->f:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/accessibility/ColorToggleAccessibilityServicePreferenceFragment;->g:Landroid/content/Intent;

    if-eqz v0, :cond_2

    .line 2080
    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/accessibility/ColorToggleAccessibilityServicePreferenceFragment;->b:Landroid/widget/Button;

    iget-object v1, p0, Lcom/coloros/settings/feature/othersettings/accessibility/ColorToggleAccessibilityServicePreferenceFragment;->f:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 2081
    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/accessibility/ColorToggleAccessibilityServicePreferenceFragment;->b:Landroid/widget/Button;

    new-instance v1, Lcom/coloros/settings/feature/othersettings/accessibility/ColorToggleAccessibilityServicePreferenceFragment$1;

    invoke-direct {v1, p0}, Lcom/coloros/settings/feature/othersettings/accessibility/ColorToggleAccessibilityServicePreferenceFragment$1;-><init>(Lcom/coloros/settings/feature/othersettings/accessibility/ColorToggleAccessibilityServicePreferenceFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 11

    .line 46
    invoke-super {p0, p1}, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 47
    invoke-virtual {p0}, Lcom/coloros/settings/feature/othersettings/accessibility/ColorToggleAccessibilityServicePreferenceFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "settings_component_name"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_4

    .line 1096
    invoke-virtual {p0}, Lcom/coloros/settings/feature/othersettings/accessibility/ColorToggleAccessibilityServicePreferenceFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v1, ":settings:fragment_args_key"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1097
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 1100
    invoke-virtual {p0}, Lcom/coloros/settings/feature/othersettings/accessibility/ColorToggleAccessibilityServicePreferenceFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v1

    .line 1102
    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityManager;->getInstalledAccessibilityServiceList()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    .line 1103
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    :goto_0
    if-ge v2, v3, :cond_4

    .line 1104
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/accessibilityservice/AccessibilityServiceInfo;

    .line 1105
    invoke-virtual {v4}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v5

    if-nez v5, :cond_0

    .line 1106
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "info.getResolveInfo()==null i="

    invoke-virtual {v5, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "AccessibilitySettings"

    invoke-static {v5, v4}, Lcom/coloros/settings/utils/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 1109
    :cond_0
    invoke-virtual {v4}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v5

    iget-object v5, v5, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 1110
    iget-object v6, v5, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 1111
    new-instance v7, Landroid/content/ComponentName;

    iget-object v8, v5, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v7, v6, v8}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1112
    invoke-virtual {v7}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v8

    .line 1113
    invoke-virtual {p0}, Lcom/coloros/settings/feature/othersettings/accessibility/ColorToggleAccessibilityServicePreferenceFragment;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9}, Lcom/coloros/settings/feature/othersettings/accessibility/b;->b(Landroid/content/Context;)Lcom/coloros/settings/feature/othersettings/accessibility/b;

    move-result-object v9

    .line 1114
    invoke-virtual {v8, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 1115
    invoke-virtual {v4}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object p1

    invoke-virtual {p0}, Lcom/coloros/settings/feature/othersettings/accessibility/ColorToggleAccessibilityServicePreferenceFragment;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1116
    iget-object v1, v5, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v9, p1}, Lcom/coloros/settings/feature/othersettings/accessibility/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1117
    invoke-virtual {p0}, Lcom/coloros/settings/feature/othersettings/accessibility/ColorToggleAccessibilityServicePreferenceFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "preference_key"

    .line 1118
    invoke-virtual {v2, v3, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "title"

    .line 1119
    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1120
    invoke-virtual {p0}, Lcom/coloros/settings/feature/othersettings/accessibility/ColorToggleAccessibilityServicePreferenceFragment;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroid/accessibilityservice/AccessibilityServiceInfo;->loadDescription(Landroid/content/pm/PackageManager;)Ljava/lang/String;

    move-result-object v3

    .line 1121
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    const p1, 0x7f120082

    .line 1122
    invoke-virtual {p0, p1}, Lcom/coloros/settings/feature/othersettings/accessibility/ColorToggleAccessibilityServicePreferenceFragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    .line 1124
    :cond_1
    invoke-virtual {v3, p1, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    :goto_1
    const-string v1, "summary"

    .line 1126
    invoke-virtual {v2, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1127
    invoke-virtual {v4}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getSettingsActivityName()Ljava/lang/String;

    move-result-object p1

    .line 1128
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    const v1, 0x7f12006e

    .line 1130
    invoke-virtual {p0, v1}, Lcom/coloros/settings/feature/othersettings/accessibility/ColorToggleAccessibilityServicePreferenceFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v3, "settings_title"

    .line 1129
    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1131
    new-instance v1, Landroid/content/ComponentName;

    invoke-direct {v1, v6, p1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1132
    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object p1

    .line 1131
    invoke-virtual {v2, v0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    const-string p1, "component_name"

    .line 1134
    invoke-virtual {v2, p1, v7}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    goto :goto_3

    :cond_3
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 50
    :cond_4
    :goto_3
    invoke-virtual {p0}, Lcom/coloros/settings/feature/othersettings/accessibility/ColorToggleAccessibilityServicePreferenceFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1

    const v0, 0x7f130147

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    .line 61
    invoke-virtual {p0}, Lcom/coloros/settings/feature/othersettings/accessibility/ColorToggleAccessibilityServicePreferenceFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    const v1, 0x7f130147

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    .line 62
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f0a03d6

    .line 63
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/coloros/settings/feature/othersettings/accessibility/ColorToggleAccessibilityServicePreferenceFragment;->a:Landroid/view/View;

    const p2, 0x7f0a03db

    .line 64
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    iput-object p2, p0, Lcom/coloros/settings/feature/othersettings/accessibility/ColorToggleAccessibilityServicePreferenceFragment;->b:Landroid/widget/Button;

    return-object p1
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    .line 70
    invoke-super {p0, p1, p2}, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 71
    invoke-virtual {p0}, Lcom/coloros/settings/feature/othersettings/accessibility/ColorToggleAccessibilityServicePreferenceFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    const/4 v0, 0x1

    invoke-static {p2, p1, v0}, Lcom/coloros/settings/utils/al;->a(Landroid/app/Activity;Landroid/view/View;Z)V

    return-void
.end method
