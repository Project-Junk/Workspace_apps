.class final Lcom/coloros/settings/feature/print/ColorPrintSettingsFragment$c;
.super Ljava/lang/Object;
.source "ColorPrintSettingsFragment.java"

# interfaces
.implements Landroidx/loader/app/LoaderManager$LoaderCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/settings/feature/print/ColorPrintSettingsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroidx/loader/app/LoaderManager$LoaderCallbacks<",
        "Ljava/util/List<",
        "Landroid/printservice/PrintServiceInfo;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/coloros/settings/feature/print/ColorPrintSettingsFragment;


# direct methods
.method private constructor <init>(Lcom/coloros/settings/feature/print/ColorPrintSettingsFragment;)V
    .locals 0

    .line 151
    iput-object p1, p0, Lcom/coloros/settings/feature/print/ColorPrintSettingsFragment$c;->a:Lcom/coloros/settings/feature/print/ColorPrintSettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/coloros/settings/feature/print/ColorPrintSettingsFragment;B)V
    .locals 0

    .line 151
    invoke-direct {p0, p1}, Lcom/coloros/settings/feature/print/ColorPrintSettingsFragment$c;-><init>(Lcom/coloros/settings/feature/print/ColorPrintSettingsFragment;)V

    return-void
.end method

.method private synthetic a(Landroid/content/ComponentName;Z)V
    .locals 2

    .line 192
    iget-object v0, p0, Lcom/coloros/settings/feature/print/ColorPrintSettingsFragment$c;->a:Lcom/coloros/settings/feature/print/ColorPrintSettingsFragment;

    invoke-virtual {v0}, Lcom/coloros/settings/feature/print/ColorPrintSettingsFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "print"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/print/PrintManager;

    .line 193
    invoke-virtual {v0, p1, p2}, Landroid/print/PrintManager;->setPrintServiceEnabled(Landroid/content/ComponentName;Z)V

    return-void
.end method

.method private synthetic a(Landroid/content/ComponentName;Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 1

    .line 191
    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    .line 192
    new-instance p3, Landroid/os/Handler;

    invoke-direct {p3}, Landroid/os/Handler;-><init>()V

    new-instance v0, Lcom/coloros/settings/feature/print/-$$Lambda$ColorPrintSettingsFragment$c$IjKSCT9_853FgS7y9v5X0j4GqaI;

    invoke-direct {v0, p0, p1, p2}, Lcom/coloros/settings/feature/print/-$$Lambda$ColorPrintSettingsFragment$c$IjKSCT9_853FgS7y9v5X0j4GqaI;-><init>(Lcom/coloros/settings/feature/print/ColorPrintSettingsFragment$c;Landroid/content/ComponentName;Z)V

    const-wide/16 p1, 0x12c

    invoke-virtual {p3, v0, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    const/4 p1, 0x1

    return p1
.end method

.method public static synthetic lambda$IjKSCT9_853FgS7y9v5X0j4GqaI(Lcom/coloros/settings/feature/print/ColorPrintSettingsFragment$c;Landroid/content/ComponentName;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/coloros/settings/feature/print/ColorPrintSettingsFragment$c;->a(Landroid/content/ComponentName;Z)V

    return-void
.end method

.method public static synthetic lambda$OJTkZePBZ_nlaGzd1JJ5cMiA7Hw(Lcom/coloros/settings/feature/print/ColorPrintSettingsFragment$c;Landroid/content/ComponentName;Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/coloros/settings/feature/print/ColorPrintSettingsFragment$c;->a(Landroid/content/ComponentName;Landroidx/preference/Preference;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public final onCreateLoader(ILandroid/os/Bundle;)Landroidx/loader/content/Loader;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroidx/loader/content/Loader<",
            "Ljava/util/List<",
            "Landroid/printservice/PrintServiceInfo;",
            ">;>;"
        }
    .end annotation

    .line 154
    iget-object p1, p0, Lcom/coloros/settings/feature/print/ColorPrintSettingsFragment$c;->a:Lcom/coloros/settings/feature/print/ColorPrintSettingsFragment;

    .line 155
    invoke-virtual {p1}, Lcom/coloros/settings/feature/print/ColorPrintSettingsFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string p2, "print"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/print/PrintManager;

    if-eqz p1, :cond_0

    .line 157
    new-instance p2, Lcom/android/settings/print/SettingsPrintServicesLoader;

    iget-object v0, p0, Lcom/coloros/settings/feature/print/ColorPrintSettingsFragment$c;->a:Lcom/coloros/settings/feature/print/ColorPrintSettingsFragment;

    invoke-virtual {v0}, Lcom/coloros/settings/feature/print/ColorPrintSettingsFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p2, p1, v0}, Lcom/android/settings/print/SettingsPrintServicesLoader;-><init>(Landroid/print/PrintManager;Landroid/content/Context;)V

    return-object p2

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public final synthetic onLoadFinished(Landroidx/loader/content/Loader;Ljava/lang/Object;)V
    .locals 7

    .line 151
    check-cast p2, Ljava/util/List;

    .line 1167
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1168
    iget-object p1, p0, Lcom/coloros/settings/feature/print/ColorPrintSettingsFragment$c;->a:Lcom/coloros/settings/feature/print/ColorPrintSettingsFragment;

    invoke-virtual {p1}, Lcom/coloros/settings/feature/print/ColorPrintSettingsFragment;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p1

    iget-object p2, p0, Lcom/coloros/settings/feature/print/ColorPrintSettingsFragment$c;->a:Lcom/coloros/settings/feature/print/ColorPrintSettingsFragment;

    invoke-static {p2}, Lcom/coloros/settings/feature/print/ColorPrintSettingsFragment;->a(Lcom/coloros/settings/feature/print/ColorPrintSettingsFragment;)Landroidx/preference/PreferenceCategory;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroidx/preference/PreferenceScreen;->removePreference(Landroidx/preference/Preference;)Z

    return-void

    .line 1170
    :cond_0
    iget-object p1, p0, Lcom/coloros/settings/feature/print/ColorPrintSettingsFragment$c;->a:Lcom/coloros/settings/feature/print/ColorPrintSettingsFragment;

    invoke-virtual {p1}, Lcom/coloros/settings/feature/print/ColorPrintSettingsFragment;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p1

    const-string v0, "print_services_category"

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    if-nez p1, :cond_1

    .line 1171
    iget-object p1, p0, Lcom/coloros/settings/feature/print/ColorPrintSettingsFragment$c;->a:Lcom/coloros/settings/feature/print/ColorPrintSettingsFragment;

    invoke-virtual {p1}, Lcom/coloros/settings/feature/print/ColorPrintSettingsFragment;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p1

    iget-object v0, p0, Lcom/coloros/settings/feature/print/ColorPrintSettingsFragment$c;->a:Lcom/coloros/settings/feature/print/ColorPrintSettingsFragment;

    invoke-static {v0}, Lcom/coloros/settings/feature/print/ColorPrintSettingsFragment;->a(Lcom/coloros/settings/feature/print/ColorPrintSettingsFragment;)Landroidx/preference/PreferenceCategory;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceScreen;->addPreference(Landroidx/preference/Preference;)Z

    .line 1174
    :cond_1
    iget-object p1, p0, Lcom/coloros/settings/feature/print/ColorPrintSettingsFragment$c;->a:Lcom/coloros/settings/feature/print/ColorPrintSettingsFragment;

    invoke-static {p1}, Lcom/coloros/settings/feature/print/ColorPrintSettingsFragment;->a(Lcom/coloros/settings/feature/print/ColorPrintSettingsFragment;)Landroidx/preference/PreferenceCategory;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/preference/PreferenceCategory;->removeAll()V

    .line 1175
    iget-object p1, p0, Lcom/coloros/settings/feature/print/ColorPrintSettingsFragment$c;->a:Lcom/coloros/settings/feature/print/ColorPrintSettingsFragment;

    invoke-virtual {p1}, Lcom/coloros/settings/feature/print/ColorPrintSettingsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    .line 1176
    iget-object v0, p0, Lcom/coloros/settings/feature/print/ColorPrintSettingsFragment$c;->a:Lcom/coloros/settings/feature/print/ColorPrintSettingsFragment;

    invoke-static {v0}, Lcom/coloros/settings/feature/print/ColorPrintSettingsFragment;->b(Lcom/coloros/settings/feature/print/ColorPrintSettingsFragment;)Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_2

    const-string p1, "ColorPrintSettingsFragment"

    const-string p2, "No preference context, skip adding print services"

    .line 1178
    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1182
    :cond_2
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/printservice/PrintServiceInfo;

    .line 1183
    invoke-virtual {v1}, Landroid/printservice/PrintServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1184
    new-instance v3, Lcom/coloros/settings/widget/preference/SettingsColorSwitchWithDividerPreference;

    invoke-direct {v3, v0}, Lcom/coloros/settings/widget/preference/SettingsColorSwitchWithDividerPreference;-><init>(Landroid/content/Context;)V

    .line 1185
    invoke-virtual {v3, v2}, Lcom/coloros/settings/widget/preference/SettingsColorSwitchWithDividerPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 1186
    invoke-virtual {v1}, Landroid/printservice/PrintServiceInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v4

    .line 1187
    invoke-virtual {v4}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/coloros/settings/widget/preference/SettingsColorSwitchWithDividerPreference;->setKey(Ljava/lang/String;)V

    .line 1188
    const-class v5, Lcom/coloros/settings/feature/print/ColorPrintServiceSettingsFragment;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/coloros/settings/widget/preference/SettingsColorSwitchWithDividerPreference;->setFragment(Ljava/lang/String;)V

    .line 1190
    new-instance v5, Lcom/coloros/settings/feature/print/-$$Lambda$ColorPrintSettingsFragment$c$OJTkZePBZ_nlaGzd1JJ5cMiA7Hw;

    invoke-direct {v5, p0, v4}, Lcom/coloros/settings/feature/print/-$$Lambda$ColorPrintSettingsFragment$c$OJTkZePBZ_nlaGzd1JJ5cMiA7Hw;-><init>(Lcom/coloros/settings/feature/print/ColorPrintSettingsFragment$c;Landroid/content/ComponentName;)V

    invoke-virtual {v3, v5}, Lcom/coloros/settings/widget/preference/SettingsColorSwitchWithDividerPreference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    const/16 v5, 0x2e

    .line 1197
    invoke-virtual {v3, v5}, Lcom/coloros/settings/widget/preference/SettingsColorSwitchWithDividerPreference;->a(I)V

    .line 1198
    invoke-virtual {v1}, Landroid/printservice/PrintServiceInfo;->isEnabled()Z

    move-result v5

    if-eqz v5, :cond_3

    const/4 v5, 0x1

    .line 1199
    invoke-virtual {v3, v5}, Lcom/coloros/settings/widget/preference/SettingsColorSwitchWithDividerPreference;->setChecked(Z)V

    goto :goto_1

    :cond_3
    const/4 v5, 0x0

    .line 1201
    invoke-virtual {v3, v5}, Lcom/coloros/settings/widget/preference/SettingsColorSwitchWithDividerPreference;->setChecked(Z)V

    .line 1204
    :goto_1
    invoke-virtual {v3}, Lcom/coloros/settings/widget/preference/SettingsColorSwitchWithDividerPreference;->getExtras()Landroid/os/Bundle;

    move-result-object v5

    .line 1205
    invoke-virtual {v1}, Landroid/printservice/PrintServiceInfo;->isEnabled()Z

    move-result v1

    const-string v6, "EXTRA_CHECKED"

    invoke-virtual {v5, v6, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v1, "EXTRA_TITLE"

    .line 1206
    invoke-virtual {v5, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1207
    invoke-virtual {v4}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "EXTRA_SERVICE_COMPONENT_NAME"

    invoke-virtual {v5, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1208
    iget-object v1, p0, Lcom/coloros/settings/feature/print/ColorPrintSettingsFragment$c;->a:Lcom/coloros/settings/feature/print/ColorPrintSettingsFragment;

    invoke-static {v1}, Lcom/coloros/settings/feature/print/ColorPrintSettingsFragment;->a(Lcom/coloros/settings/feature/print/ColorPrintSettingsFragment;)Landroidx/preference/PreferenceCategory;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroidx/preference/PreferenceCategory;->addPreference(Landroidx/preference/Preference;)Z

    goto :goto_0

    .line 1211
    :cond_4
    iget-object p1, p0, Lcom/coloros/settings/feature/print/ColorPrintSettingsFragment$c;->a:Lcom/coloros/settings/feature/print/ColorPrintSettingsFragment;

    invoke-static {p1}, Lcom/coloros/settings/feature/print/ColorPrintSettingsFragment;->c(Lcom/coloros/settings/feature/print/ColorPrintSettingsFragment;)Landroidx/preference/Preference;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 1213
    iget-object p2, p0, Lcom/coloros/settings/feature/print/ColorPrintSettingsFragment$c;->a:Lcom/coloros/settings/feature/print/ColorPrintSettingsFragment;

    invoke-static {p2}, Lcom/coloros/settings/feature/print/ColorPrintSettingsFragment;->a(Lcom/coloros/settings/feature/print/ColorPrintSettingsFragment;)Landroidx/preference/PreferenceCategory;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroidx/preference/PreferenceCategory;->addPreference(Landroidx/preference/Preference;)Z

    :cond_5
    return-void
.end method

.method public final onLoaderReset(Landroidx/loader/content/Loader;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/loader/content/Loader<",
            "Ljava/util/List<",
            "Landroid/printservice/PrintServiceInfo;",
            ">;>;)V"
        }
    .end annotation

    .line 219
    iget-object p1, p0, Lcom/coloros/settings/feature/print/ColorPrintSettingsFragment$c;->a:Lcom/coloros/settings/feature/print/ColorPrintSettingsFragment;

    invoke-virtual {p1}, Lcom/coloros/settings/feature/print/ColorPrintSettingsFragment;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p1

    iget-object v0, p0, Lcom/coloros/settings/feature/print/ColorPrintSettingsFragment$c;->a:Lcom/coloros/settings/feature/print/ColorPrintSettingsFragment;

    invoke-static {v0}, Lcom/coloros/settings/feature/print/ColorPrintSettingsFragment;->a(Lcom/coloros/settings/feature/print/ColorPrintSettingsFragment;)Landroidx/preference/PreferenceCategory;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceScreen;->removePreference(Landroidx/preference/Preference;)Z

    return-void
.end method
