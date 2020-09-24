.class final Lcom/coloros/settings/feature/systemapp/SystemAppSettingsFragment$a;
.super Landroid/os/AsyncTask;
.source "SystemAppSettingsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/settings/feature/systemapp/SystemAppSettingsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/util/List<",
        "Lcom/coloros/settings/utils/bi$a;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/coloros/settings/feature/systemapp/SystemAppSettingsFragment;

.field private b:Landroid/content/pm/PackageManager;

.field private c:Z

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/coloros/settings/utils/bi$a;",
            ">;"
        }
    .end annotation
.end field

.field private e:Landroid/content/Intent;

.field private f:Z


# direct methods
.method private constructor <init>(Lcom/coloros/settings/feature/systemapp/SystemAppSettingsFragment;)V
    .locals 0

    .line 77
    iput-object p1, p0, Lcom/coloros/settings/feature/systemapp/SystemAppSettingsFragment$a;->a:Lcom/coloros/settings/feature/systemapp/SystemAppSettingsFragment;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/coloros/settings/feature/systemapp/SystemAppSettingsFragment;B)V
    .locals 0

    .line 77
    invoke-direct {p0, p1}, Lcom/coloros/settings/feature/systemapp/SystemAppSettingsFragment$a;-><init>(Lcom/coloros/settings/feature/systemapp/SystemAppSettingsFragment;)V

    return-void
.end method


# virtual methods
.method protected final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 2098
    iget-object p1, p0, Lcom/coloros/settings/feature/systemapp/SystemAppSettingsFragment$a;->b:Landroid/content/pm/PackageManager;

    iget-object v0, p0, Lcom/coloros/settings/feature/systemapp/SystemAppSettingsFragment$a;->e:Landroid/content/Intent;

    const/16 v1, 0x80

    .line 2099
    invoke-virtual {p1, v0, v1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 2101
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 2102
    invoke-virtual {p0}, Lcom/coloros/settings/feature/systemapp/SystemAppSettingsFragment$a;->isCancelled()Z

    move-result v1

    if-nez v1, :cond_3

    .line 2108
    invoke-static {}, Lcom/coloros/settings/utils/al;->g()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const-string v2, "com.heytap.speechassist"

    .line 2109
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2112
    :cond_1
    iget-boolean v1, p0, Lcom/coloros/settings/feature/systemapp/SystemAppSettingsFragment$a;->f:Z

    if-eqz v1, :cond_2

    iget-object v1, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const-string v2, "com.nearme.themespace"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const-string v2, "com.nearme.themestore"

    .line 2113
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2116
    :cond_2
    iget-object v1, p0, Lcom/coloros/settings/feature/systemapp/SystemAppSettingsFragment$a;->a:Lcom/coloros/settings/feature/systemapp/SystemAppSettingsFragment;

    .line 2117
    invoke-static {v1}, Lcom/coloros/settings/feature/systemapp/SystemAppSettingsFragment;->a(Lcom/coloros/settings/feature/systemapp/SystemAppSettingsFragment;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/coloros/settings/feature/systemapp/SystemAppSettingsFragment$a;->b:Landroid/content/pm/PackageManager;

    iget-boolean v3, p0, Lcom/coloros/settings/feature/systemapp/SystemAppSettingsFragment$a;->c:Z

    .line 2116
    invoke-static {v1, v0, v2, v3}, Lcom/coloros/settings/utils/bi;->a(Landroid/content/Context;Landroid/content/pm/ResolveInfo;Landroid/content/pm/PackageManager;Z)Lcom/coloros/settings/utils/bi$a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2123
    iget-object v1, p0, Lcom/coloros/settings/feature/systemapp/SystemAppSettingsFragment$a;->d:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2126
    :cond_3
    iget-object p1, p0, Lcom/coloros/settings/feature/systemapp/SystemAppSettingsFragment$a;->d:Ljava/util/List;

    return-object p1
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 10

    .line 77
    check-cast p1, Ljava/util/List;

    .line 1131
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 1133
    iget-object v0, p0, Lcom/coloros/settings/feature/systemapp/SystemAppSettingsFragment$a;->a:Lcom/coloros/settings/feature/systemapp/SystemAppSettingsFragment;

    invoke-virtual {v0}, Lcom/coloros/settings/feature/systemapp/SystemAppSettingsFragment;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    .line 1134
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1135
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1140
    iget-object v3, p0, Lcom/coloros/settings/feature/systemapp/SystemAppSettingsFragment$a;->a:Lcom/coloros/settings/feature/systemapp/SystemAppSettingsFragment;

    invoke-virtual {v3}, Lcom/coloros/settings/feature/systemapp/SystemAppSettingsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    if-eqz v3, :cond_8

    .line 1144
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v4, 0x0

    move v5, v4

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/coloros/settings/utils/bi$a;

    .line 1145
    new-instance v7, Lcom/coloros/settings/widget/preference/SettingsIconPreference;

    invoke-direct {v7, v3}, Lcom/coloros/settings/widget/preference/SettingsIconPreference;-><init>(Landroid/content/Context;)V

    .line 1146
    new-instance v8, Landroid/content/Intent;

    iget-object v9, p0, Lcom/coloros/settings/feature/systemapp/SystemAppSettingsFragment$a;->e:Landroid/content/Intent;

    invoke-direct {v8, v9}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 1147
    iget-object v9, v6, Lcom/coloros/settings/utils/bi$a;->d:Landroid/content/ComponentName;

    invoke-virtual {v8, v9}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1148
    iget-object v9, v6, Lcom/coloros/settings/utils/bi$a;->e:Ljava/lang/String;

    invoke-virtual {v7, v9}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 1149
    invoke-virtual {v7, v8}, Landroidx/preference/Preference;->setIntent(Landroid/content/Intent;)V

    .line 1150
    iget-object v8, v6, Lcom/coloros/settings/utils/bi$a;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7, v8}, Landroidx/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 1151
    iget-object v8, v6, Lcom/coloros/settings/utils/bi$a;->c:Ljava/lang/CharSequence;

    invoke-virtual {v7, v8}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 1152
    iget v8, v6, Lcom/coloros/settings/utils/bi$a;->f:I

    invoke-virtual {v7, v8}, Landroidx/preference/Preference;->setOrder(I)V

    .line 1153
    iget v8, v6, Lcom/coloros/settings/utils/bi$a;->f:I

    const/16 v9, 0x271a

    if-ge v8, v9, :cond_1

    .line 1154
    iget v7, v6, Lcom/coloros/settings/utils/bi$a;->f:I

    if-le v7, v5, :cond_0

    .line 1155
    iget v5, v6, Lcom/coloros/settings/utils/bi$a;->f:I

    goto :goto_0

    .line 1157
    :cond_1
    iget v6, v6, Lcom/coloros/settings/utils/bi$a;->f:I

    const v8, 0xc350

    if-gt v6, v8, :cond_2

    .line 1161
    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1166
    :cond_2
    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1170
    :cond_3
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result p1

    .line 1171
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int v5, p1, v3

    if-gtz v5, :cond_4

    .line 1174
    iget-object p1, p0, Lcom/coloros/settings/feature/systemapp/SystemAppSettingsFragment$a;->a:Lcom/coloros/settings/feature/systemapp/SystemAppSettingsFragment;

    invoke-static {p1}, Lcom/coloros/settings/feature/systemapp/SystemAppSettingsFragment;->b(Lcom/coloros/settings/feature/systemapp/SystemAppSettingsFragment;)Landroidx/preference/PreferenceCategory;

    move-result-object p1

    if-eqz p1, :cond_8

    .line 1175
    iget-object p1, p0, Lcom/coloros/settings/feature/systemapp/SystemAppSettingsFragment$a;->a:Lcom/coloros/settings/feature/systemapp/SystemAppSettingsFragment;

    invoke-static {p1}, Lcom/coloros/settings/feature/systemapp/SystemAppSettingsFragment;->b(Lcom/coloros/settings/feature/systemapp/SystemAppSettingsFragment;)Landroidx/preference/PreferenceCategory;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/preference/PreferenceScreen;->removePreference(Landroidx/preference/Preference;)Z

    return-void

    :cond_4
    move v0, v4

    :goto_1
    if-ge v0, p1, :cond_6

    .line 1179
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/preference/Preference;

    .line 1180
    iget-object v6, p0, Lcom/coloros/settings/feature/systemapp/SystemAppSettingsFragment$a;->a:Lcom/coloros/settings/feature/systemapp/SystemAppSettingsFragment;

    invoke-static {v6}, Lcom/coloros/settings/feature/systemapp/SystemAppSettingsFragment;->b(Lcom/coloros/settings/feature/systemapp/SystemAppSettingsFragment;)Landroidx/preference/PreferenceCategory;

    move-result-object v6

    if-eqz v6, :cond_5

    .line 1181
    iget-object v6, p0, Lcom/coloros/settings/feature/systemapp/SystemAppSettingsFragment$a;->a:Lcom/coloros/settings/feature/systemapp/SystemAppSettingsFragment;

    invoke-static {v6}, Lcom/coloros/settings/feature/systemapp/SystemAppSettingsFragment;->b(Lcom/coloros/settings/feature/systemapp/SystemAppSettingsFragment;)Landroidx/preference/PreferenceCategory;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroidx/preference/PreferenceCategory;->addPreference(Landroidx/preference/Preference;)Z

    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_6
    :goto_2
    if-ge v4, v3, :cond_8

    .line 1186
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/preference/Preference;

    .line 1187
    iget-object v0, p0, Lcom/coloros/settings/feature/systemapp/SystemAppSettingsFragment$a;->a:Lcom/coloros/settings/feature/systemapp/SystemAppSettingsFragment;

    invoke-static {v0}, Lcom/coloros/settings/feature/systemapp/SystemAppSettingsFragment;->b(Lcom/coloros/settings/feature/systemapp/SystemAppSettingsFragment;)Landroidx/preference/PreferenceCategory;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 1188
    iget-object v0, p0, Lcom/coloros/settings/feature/systemapp/SystemAppSettingsFragment$a;->a:Lcom/coloros/settings/feature/systemapp/SystemAppSettingsFragment;

    invoke-static {v0}, Lcom/coloros/settings/feature/systemapp/SystemAppSettingsFragment;->b(Lcom/coloros/settings/feature/systemapp/SystemAppSettingsFragment;)Landroidx/preference/PreferenceCategory;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/preference/PreferenceCategory;->addPreference(Landroidx/preference/Preference;)Z

    :cond_7
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_8
    return-void
.end method

.method protected final onPreExecute()V
    .locals 2

    .line 88
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 89
    iget-object v0, p0, Lcom/coloros/settings/feature/systemapp/SystemAppSettingsFragment$a;->a:Lcom/coloros/settings/feature/systemapp/SystemAppSettingsFragment;

    invoke-static {v0}, Lcom/coloros/settings/feature/systemapp/SystemAppSettingsFragment;->a(Lcom/coloros/settings/feature/systemapp/SystemAppSettingsFragment;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/settings/feature/systemapp/SystemAppSettingsFragment$a;->b:Landroid/content/pm/PackageManager;

    .line 90
    iget-object v0, p0, Lcom/coloros/settings/feature/systemapp/SystemAppSettingsFragment$a;->a:Lcom/coloros/settings/feature/systemapp/SystemAppSettingsFragment;

    invoke-virtual {v0}, Lcom/coloros/settings/feature/systemapp/SystemAppSettingsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/coloros/settings/utils/al;->y(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/coloros/settings/feature/systemapp/SystemAppSettingsFragment$a;->c:Z

    .line 91
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/coloros/settings/feature/systemapp/SystemAppSettingsFragment$a;->d:Ljava/util/List;

    .line 92
    new-instance v0, Landroid/content/Intent;

    const-string v1, "oppo.intent.action.APP_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/coloros/settings/feature/systemapp/SystemAppSettingsFragment$a;->e:Landroid/content/Intent;

    .line 93
    iget-object v0, p0, Lcom/coloros/settings/feature/systemapp/SystemAppSettingsFragment$a;->a:Lcom/coloros/settings/feature/systemapp/SystemAppSettingsFragment;

    invoke-virtual {v0}, Lcom/coloros/settings/feature/systemapp/SystemAppSettingsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/coloros/settings/utils/al;->b(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/coloros/settings/feature/systemapp/SystemAppSettingsFragment$a;->f:Z

    return-void
.end method
