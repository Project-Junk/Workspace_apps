.class final Lcom/android/settings/print/PrintSettingsFragment$c;
.super Ljava/lang/Object;
.source "PrintSettingsFragment.java"

# interfaces
.implements Landroidx/loader/app/LoaderManager$LoaderCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/print/PrintSettingsFragment;
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
.field final synthetic a:Lcom/android/settings/print/PrintSettingsFragment;


# direct methods
.method private constructor <init>(Lcom/android/settings/print/PrintSettingsFragment;)V
    .locals 0

    .line 165
    iput-object p1, p0, Lcom/android/settings/print/PrintSettingsFragment$c;->a:Lcom/android/settings/print/PrintSettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/print/PrintSettingsFragment;B)V
    .locals 0

    .line 165
    invoke-direct {p0, p1}, Lcom/android/settings/print/PrintSettingsFragment$c;-><init>(Lcom/android/settings/print/PrintSettingsFragment;)V

    return-void
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

    .line 168
    iget-object p1, p0, Lcom/android/settings/print/PrintSettingsFragment$c;->a:Lcom/android/settings/print/PrintSettingsFragment;

    .line 169
    invoke-virtual {p1}, Lcom/android/settings/print/PrintSettingsFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string p2, "print"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/print/PrintManager;

    if-eqz p1, :cond_0

    .line 171
    new-instance p2, Lcom/android/settings/print/SettingsPrintServicesLoader;

    iget-object v0, p0, Lcom/android/settings/print/PrintSettingsFragment$c;->a:Lcom/android/settings/print/PrintSettingsFragment;

    invoke-virtual {v0}, Lcom/android/settings/print/PrintSettingsFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p2, p1, v0}, Lcom/android/settings/print/SettingsPrintServicesLoader;-><init>(Landroid/print/PrintManager;Landroid/content/Context;)V

    return-object p2

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public final synthetic onLoadFinished(Landroidx/loader/content/Loader;Ljava/lang/Object;)V
    .locals 7

    .line 165
    check-cast p2, Ljava/util/List;

    .line 1181
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1182
    iget-object p1, p0, Lcom/android/settings/print/PrintSettingsFragment$c;->a:Lcom/android/settings/print/PrintSettingsFragment;

    invoke-virtual {p1}, Lcom/android/settings/print/PrintSettingsFragment;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p1

    iget-object p2, p0, Lcom/android/settings/print/PrintSettingsFragment$c;->a:Lcom/android/settings/print/PrintSettingsFragment;

    invoke-static {p2}, Lcom/android/settings/print/PrintSettingsFragment;->a(Lcom/android/settings/print/PrintSettingsFragment;)Landroidx/preference/PreferenceCategory;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroidx/preference/PreferenceScreen;->removePreference(Landroidx/preference/Preference;)Z

    return-void

    .line 1184
    :cond_0
    iget-object p1, p0, Lcom/android/settings/print/PrintSettingsFragment$c;->a:Lcom/android/settings/print/PrintSettingsFragment;

    invoke-virtual {p1}, Lcom/android/settings/print/PrintSettingsFragment;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p1

    const-string v0, "print_services_category"

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    if-nez p1, :cond_1

    .line 1185
    iget-object p1, p0, Lcom/android/settings/print/PrintSettingsFragment$c;->a:Lcom/android/settings/print/PrintSettingsFragment;

    invoke-virtual {p1}, Lcom/android/settings/print/PrintSettingsFragment;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p1

    iget-object v0, p0, Lcom/android/settings/print/PrintSettingsFragment$c;->a:Lcom/android/settings/print/PrintSettingsFragment;

    invoke-static {v0}, Lcom/android/settings/print/PrintSettingsFragment;->a(Lcom/android/settings/print/PrintSettingsFragment;)Landroidx/preference/PreferenceCategory;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceScreen;->addPreference(Landroidx/preference/Preference;)Z

    .line 1188
    :cond_1
    iget-object p1, p0, Lcom/android/settings/print/PrintSettingsFragment$c;->a:Lcom/android/settings/print/PrintSettingsFragment;

    invoke-static {p1}, Lcom/android/settings/print/PrintSettingsFragment;->a(Lcom/android/settings/print/PrintSettingsFragment;)Landroidx/preference/PreferenceCategory;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/preference/PreferenceCategory;->removeAll()V

    .line 1189
    iget-object p1, p0, Lcom/android/settings/print/PrintSettingsFragment$c;->a:Lcom/android/settings/print/PrintSettingsFragment;

    invoke-virtual {p1}, Lcom/android/settings/print/PrintSettingsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    .line 1190
    iget-object v0, p0, Lcom/android/settings/print/PrintSettingsFragment$c;->a:Lcom/android/settings/print/PrintSettingsFragment;

    invoke-static {v0}, Lcom/android/settings/print/PrintSettingsFragment;->b(Lcom/android/settings/print/PrintSettingsFragment;)Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_2

    const-string p1, "PrintSettingsFragment"

    const-string p2, "No preference context, skip adding print services"

    .line 1192
    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1196
    :cond_2
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/printservice/PrintServiceInfo;

    .line 1197
    new-instance v2, Lcom/android/settingslib/widget/apppreference/AppPreference;

    invoke-direct {v2, v0}, Lcom/android/settingslib/widget/apppreference/AppPreference;-><init>(Landroid/content/Context;)V

    .line 1199
    invoke-virtual {v1}, Landroid/printservice/PrintServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1200
    invoke-virtual {v2, v3}, Lcom/android/settingslib/widget/apppreference/AppPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 1202
    invoke-virtual {v1}, Landroid/printservice/PrintServiceInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v4

    .line 1203
    invoke-virtual {v4}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/android/settingslib/widget/apppreference/AppPreference;->setKey(Ljava/lang/String;)V

    .line 1205
    const-class v5, Lcom/android/settings/print/PrintServiceSettingsFragment;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/android/settingslib/widget/apppreference/AppPreference;->setFragment(Ljava/lang/String;)V

    const/4 v5, 0x0

    .line 1206
    invoke-virtual {v2, v5}, Lcom/android/settingslib/widget/apppreference/AppPreference;->setPersistent(Z)V

    .line 1208
    invoke-virtual {v1}, Landroid/printservice/PrintServiceInfo;->isEnabled()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1209
    iget-object v5, p0, Lcom/android/settings/print/PrintSettingsFragment$c;->a:Lcom/android/settings/print/PrintSettingsFragment;

    const v6, 0x7f1210ab

    invoke-virtual {v5, v6}, Lcom/android/settings/print/PrintSettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/android/settingslib/widget/apppreference/AppPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 1211
    :cond_3
    iget-object v5, p0, Lcom/android/settings/print/PrintSettingsFragment$c;->a:Lcom/android/settings/print/PrintSettingsFragment;

    const v6, 0x7f1210aa

    invoke-virtual {v5, v6}, Lcom/android/settings/print/PrintSettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/android/settingslib/widget/apppreference/AppPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1214
    :goto_1
    invoke-virtual {v1}, Landroid/printservice/PrintServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v5

    invoke-virtual {v5, p1}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    if-eqz v5, :cond_4

    .line 1216
    invoke-virtual {v2, v5}, Lcom/android/settingslib/widget/apppreference/AppPreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 1219
    :cond_4
    invoke-virtual {v2}, Lcom/android/settingslib/widget/apppreference/AppPreference;->getExtras()Landroid/os/Bundle;

    move-result-object v5

    .line 1220
    invoke-virtual {v1}, Landroid/printservice/PrintServiceInfo;->isEnabled()Z

    move-result v1

    const-string v6, "EXTRA_CHECKED"

    invoke-virtual {v5, v6, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v1, "EXTRA_TITLE"

    .line 1221
    invoke-virtual {v5, v1, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1222
    invoke-virtual {v4}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "EXTRA_SERVICE_COMPONENT_NAME"

    invoke-virtual {v5, v3, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1224
    iget-object v1, p0, Lcom/android/settings/print/PrintSettingsFragment$c;->a:Lcom/android/settings/print/PrintSettingsFragment;

    invoke-static {v1}, Lcom/android/settings/print/PrintSettingsFragment;->a(Lcom/android/settings/print/PrintSettingsFragment;)Landroidx/preference/PreferenceCategory;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroidx/preference/PreferenceCategory;->addPreference(Landroidx/preference/Preference;)Z

    goto/16 :goto_0

    .line 1227
    :cond_5
    iget-object p1, p0, Lcom/android/settings/print/PrintSettingsFragment$c;->a:Lcom/android/settings/print/PrintSettingsFragment;

    invoke-static {p1}, Lcom/android/settings/print/PrintSettingsFragment;->c(Lcom/android/settings/print/PrintSettingsFragment;)Landroidx/preference/Preference;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 1229
    iget-object p2, p0, Lcom/android/settings/print/PrintSettingsFragment$c;->a:Lcom/android/settings/print/PrintSettingsFragment;

    invoke-static {p2}, Lcom/android/settings/print/PrintSettingsFragment;->a(Lcom/android/settings/print/PrintSettingsFragment;)Landroidx/preference/PreferenceCategory;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroidx/preference/PreferenceCategory;->addPreference(Landroidx/preference/Preference;)Z

    :cond_6
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

    .line 235
    iget-object p1, p0, Lcom/android/settings/print/PrintSettingsFragment$c;->a:Lcom/android/settings/print/PrintSettingsFragment;

    invoke-virtual {p1}, Lcom/android/settings/print/PrintSettingsFragment;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p1

    iget-object v0, p0, Lcom/android/settings/print/PrintSettingsFragment$c;->a:Lcom/android/settings/print/PrintSettingsFragment;

    invoke-static {v0}, Lcom/android/settings/print/PrintSettingsFragment;->a(Lcom/android/settings/print/PrintSettingsFragment;)Landroidx/preference/PreferenceCategory;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceScreen;->removePreference(Landroidx/preference/Preference;)Z

    return-void
.end method
