.class final Lcom/android/settings/notification/u$2;
.super Ljava/lang/Object;
.source "ZenModeAllBypassingAppsPreferenceController.java"

# interfaces
.implements Lcom/coloros/settingslib/applications/ApplicationsState$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/notification/u;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/android/settings/notification/u;


# direct methods
.method constructor <init>(Lcom/android/settings/notification/u;)V
    .locals 0

    .line 159
    iput-object p1, p0, Lcom/android/settings/notification/u$2;->a:Lcom/android/settings/notification/u;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAllSizesComputed()V
    .locals 0

    return-void
.end method

.method public final onLauncherInfoChanged()V
    .locals 1

    .line 191
    iget-object v0, p0, Lcom/android/settings/notification/u$2;->a:Lcom/android/settings/notification/u;

    invoke-virtual {v0}, Lcom/android/settings/notification/u;->a()V

    return-void
.end method

.method public final onLoadEntriesCompleted()V
    .locals 1

    .line 196
    iget-object v0, p0, Lcom/android/settings/notification/u$2;->a:Lcom/android/settings/notification/u;

    invoke-virtual {v0}, Lcom/android/settings/notification/u;->a()V

    return-void
.end method

.method public final onPackageIconChanged()V
    .locals 1

    .line 178
    iget-object v0, p0, Lcom/android/settings/notification/u$2;->a:Lcom/android/settings/notification/u;

    invoke-virtual {v0}, Lcom/android/settings/notification/u;->a()V

    return-void
.end method

.method public final onPackageListChanged()V
    .locals 1

    .line 168
    iget-object v0, p0, Lcom/android/settings/notification/u$2;->a:Lcom/android/settings/notification/u;

    invoke-virtual {v0}, Lcom/android/settings/notification/u;->a()V

    return-void
.end method

.method public final onPackageSizeChanged(Ljava/lang/String;)V
    .locals 0

    .line 183
    iget-object p1, p0, Lcom/android/settings/notification/u$2;->a:Lcom/android/settings/notification/u;

    invoke-virtual {p1}, Lcom/android/settings/notification/u;->a()V

    return-void
.end method

.method public final onRebuildComplete(Ljava/util/ArrayList;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/coloros/settingslib/applications/ApplicationsState$a;",
            ">;)V"
        }
    .end annotation

    .line 173
    iget-object v0, p0, Lcom/android/settings/notification/u$2;->a:Lcom/android/settings/notification/u;

    .line 1112
    iget-object v1, v0, Lcom/android/settings/notification/u;->b:Landroidx/preference/PreferenceScreen;

    if-eqz v1, :cond_3

    if-nez p1, :cond_0

    goto/16 :goto_2

    .line 1116
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1117
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/coloros/settingslib/applications/ApplicationsState$a;

    .line 1118
    iget-object v3, v2, Lcom/coloros/settingslib/applications/ApplicationsState$a;->k:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 1119
    iget-object v4, v0, Lcom/android/settings/notification/u;->a:Lcom/coloros/settingslib/applications/ApplicationsState;

    invoke-virtual {v4, v2}, Lcom/coloros/settingslib/applications/ApplicationsState;->a(Lcom/coloros/settingslib/applications/ApplicationsState$a;)V

    .line 1120
    iget-object v4, v2, Lcom/coloros/settingslib/applications/ApplicationsState$a;->k:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 1121
    invoke-static {v3, v4}, Lcom/android/settings/notification/k;->c(Ljava/lang/String;I)Landroid/content/pm/ParceledListSlice;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v4

    .line 1120
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/NotificationChannel;

    .line 1122
    new-instance v6, Lcom/android/settingslib/widget/apppreference/AppPreference;

    iget-object v7, v0, Lcom/android/settings/notification/u;->c:Landroid/content/Context;

    invoke-direct {v6, v7}, Lcom/android/settingslib/widget/apppreference/AppPreference;-><init>(Landroid/content/Context;)V

    .line 1123
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "|"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 1124
    invoke-static {}, Landroidx/core/text/BidiFormatter;->getInstance()Landroidx/core/text/BidiFormatter;

    move-result-object v7

    iget-object v8, v2, Lcom/coloros/settingslib/applications/ApplicationsState$a;->c:Ljava/lang/String;

    invoke-virtual {v7, v8}, Landroidx/core/text/BidiFormatter;->unicodeWrap(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 1125
    iget-object v7, v2, Lcom/coloros/settingslib/applications/ApplicationsState$a;->l:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6, v7}, Landroidx/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 1126
    invoke-static {}, Landroidx/core/text/BidiFormatter;->getInstance()Landroidx/core/text/BidiFormatter;

    move-result-object v7

    invoke-virtual {v5}, Landroid/app/NotificationChannel;->getName()Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroidx/core/text/BidiFormatter;->unicodeWrap(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1128
    new-instance v7, Lcom/android/settings/notification/u$1;

    invoke-direct {v7, v0, v2, v5}, Lcom/android/settings/notification/u$1;-><init>(Lcom/android/settings/notification/u;Lcom/coloros/settingslib/applications/ApplicationsState$a;Landroid/app/NotificationChannel;)V

    invoke-virtual {v6, v7}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 1146
    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1149
    :cond_2
    iget-object v2, v0, Lcom/android/settings/notification/u;->b:Landroidx/preference/PreferenceScreen;

    invoke-virtual {v2}, Landroidx/preference/PreferenceScreen;->removeAll()V

    .line 1150
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 1151
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/preference/Preference;

    .line 1152
    iget-object v4, v0, Lcom/android/settings/notification/u;->b:Landroidx/preference/PreferenceScreen;

    invoke-virtual {v4, v3}, Landroidx/preference/PreferenceScreen;->addPreference(Landroidx/preference/Preference;)Z

    goto :goto_1

    :cond_3
    :goto_2
    return-void
.end method

.method public final onRunningStateChanged(Z)V
    .locals 0

    .line 163
    iget-object p1, p0, Lcom/android/settings/notification/u$2;->a:Lcom/android/settings/notification/u;

    invoke-virtual {p1}, Lcom/android/settings/notification/u;->a()V

    return-void
.end method
