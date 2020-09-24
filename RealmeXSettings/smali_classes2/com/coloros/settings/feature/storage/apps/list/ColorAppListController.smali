.class public Lcom/coloros/settings/feature/storage/apps/list/ColorAppListController;
.super Lcom/android/settingslib/core/a;
.source "ColorAppListController.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceClickListener;
.implements Lcom/coloros/settings/feature/storage/apps/usage/a$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coloros/settings/feature/storage/apps/list/ColorAppListController$a;
    }
.end annotation


# instance fields
.field a:Landroidx/preference/PreferenceCategory;

.field b:Lcom/coloros/settings/feature/storage/a;

.field c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/coloros/settings/feature/storage/preferences/OppoStoragePreference;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/coloros/settings/feature/storage/apps/usage/b;",
            ">;"
        }
    .end annotation
.end field

.field private e:Z

.field private f:Landroidx/preference/PreferenceFragmentCompat;


# direct methods
.method public constructor <init>(Landroidx/preference/PreferenceFragmentCompat;)V
    .locals 1

    .line 61
    invoke-virtual {p1}, Landroidx/preference/PreferenceFragmentCompat;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settingslib/core/a;-><init>(Landroid/content/Context;)V

    .line 56
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/coloros/settings/feature/storage/apps/list/ColorAppListController;->c:Ljava/util/Map;

    const/4 v0, 0x0

    .line 57
    iput-boolean v0, p0, Lcom/coloros/settings/feature/storage/apps/list/ColorAppListController;->e:Z

    .line 62
    iput-object p1, p0, Lcom/coloros/settings/feature/storage/apps/list/ColorAppListController;->f:Landroidx/preference/PreferenceFragmentCompat;

    .line 63
    invoke-static {}, Lcom/coloros/settings/feature/storage/a;->a()Lcom/coloros/settings/feature/storage/a;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/settings/feature/storage/apps/list/ColorAppListController;->b:Lcom/coloros/settings/feature/storage/a;

    .line 64
    iget-object p1, p0, Lcom/coloros/settings/feature/storage/apps/list/ColorAppListController;->b:Lcom/coloros/settings/feature/storage/a;

    .line 1070
    iput-object p0, p1, Lcom/coloros/settings/feature/storage/a;->j:Lcom/coloros/settings/feature/storage/apps/usage/a$a;

    .line 1199
    iget-object p1, p1, Lcom/coloros/settings/feature/storage/a;->g:Ljava/util/Map;

    .line 65
    iput-object p1, p0, Lcom/coloros/settings/feature/storage/apps/list/ColorAppListController;->d:Ljava/util/Map;

    return-void
.end method

.method private a()V
    .locals 5

    .line 91
    iget-object v0, p0, Lcom/coloros/settings/feature/storage/apps/list/ColorAppListController;->d:Ljava/util/Map;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 92
    :cond_0
    iget-object v0, p0, Lcom/coloros/settings/feature/storage/apps/list/ColorAppListController;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 93
    iget-object v0, p0, Lcom/coloros/settings/feature/storage/apps/list/ColorAppListController;->d:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/coloros/settings/feature/storage/apps/usage/b;

    .line 94
    new-instance v2, Lcom/coloros/settings/feature/storage/preferences/OppoStoragePreference;

    iget-object v3, p0, Lcom/coloros/settings/feature/storage/apps/list/ColorAppListController;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/coloros/settings/feature/storage/preferences/OppoStoragePreference;-><init>(Landroid/content/Context;)V

    .line 95
    iget-object v3, v1, Lcom/coloros/settings/feature/storage/apps/usage/b;->b:Ljava/lang/String;

    iput-object v3, v2, Lcom/coloros/settings/feature/storage/preferences/OppoStoragePreference;->b:Ljava/lang/String;

    .line 96
    iget-wide v3, v1, Lcom/coloros/settings/feature/storage/apps/usage/b;->m:J

    iput-wide v3, v2, Lcom/coloros/settings/feature/storage/preferences/OppoStoragePreference;->a:J

    .line 97
    iget-boolean v3, v1, Lcom/coloros/settings/feature/storage/apps/usage/b;->o:Z

    iput-boolean v3, v2, Lcom/coloros/settings/feature/storage/preferences/OppoStoragePreference;->c:Z

    .line 98
    iget-object v3, v1, Lcom/coloros/settings/feature/storage/apps/usage/b;->d:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/coloros/settings/feature/storage/preferences/OppoStoragePreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 99
    invoke-direct {p0, v1}, Lcom/coloros/settings/feature/storage/apps/list/ColorAppListController;->b(Lcom/coloros/settings/feature/storage/apps/usage/b;)Ljava/lang/String;

    move-result-object v3

    .line 2061
    invoke-virtual {v2, v3}, Lcom/coloros/settings/feature/storage/preferences/OppoStoragePreference;->a(Ljava/lang/CharSequence;)V

    .line 100
    new-instance v3, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v4, v1, Lcom/coloros/settings/feature/storage/apps/usage/b;->g:Landroid/graphics/Bitmap;

    invoke-direct {v3, v4}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 2065
    invoke-virtual {v2, v3}, Lcom/coloros/settings/feature/storage/preferences/OppoStoragePreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 101
    invoke-virtual {v2, p0}, Lcom/coloros/settings/feature/storage/preferences/OppoStoragePreference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 102
    iget-object v3, p0, Lcom/coloros/settings/feature/storage/apps/list/ColorAppListController;->c:Ljava/util/Map;

    iget-object v1, v1, Lcom/coloros/settings/feature/storage/apps/usage/b;->b:Ljava/lang/String;

    invoke-interface {v3, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 105
    :cond_1
    invoke-direct {p0}, Lcom/coloros/settings/feature/storage/apps/list/ColorAppListController;->b()V

    :cond_2
    :goto_1
    return-void
.end method

.method private b(Lcom/coloros/settings/feature/storage/apps/usage/b;)Ljava/lang/String;
    .locals 4

    .line 120
    iget-object v0, p1, Lcom/coloros/settings/feature/storage/apps/usage/b;->f:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object p1, p1, Lcom/coloros/settings/feature/storage/apps/usage/b;->f:Ljava/lang/String;

    return-object p1

    .line 121
    :cond_0
    iget-wide v0, p1, Lcom/coloros/settings/feature/storage/apps/usage/b;->m:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_1

    iget-object p1, p0, Lcom/coloros/settings/feature/storage/apps/list/ColorAppListController;->mContext:Landroid/content/Context;

    const v0, 0x7f120d60

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 122
    :cond_1
    iget-object v0, p0, Lcom/coloros/settings/feature/storage/apps/list/ColorAppListController;->mContext:Landroid/content/Context;

    iget-wide v1, p1, Lcom/coloros/settings/feature/storage/apps/usage/b;->m:J

    invoke-static {v0, v1, v2}, Lcom/coloros/settings/utils/al;->b(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/coloros/settings/feature/storage/apps/usage/b;->f:Ljava/lang/String;

    .line 123
    iget-object p1, p1, Lcom/coloros/settings/feature/storage/apps/usage/b;->f:Ljava/lang/String;

    return-object p1
.end method

.method private b()V
    .locals 4

    .line 109
    iget-object v0, p0, Lcom/coloros/settings/feature/storage/apps/list/ColorAppListController;->a:Landroidx/preference/PreferenceCategory;

    if-nez v0, :cond_0

    return-void

    .line 2127
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/coloros/settings/feature/storage/apps/list/ColorAppListController;->c:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 2128
    new-instance v1, Lcom/coloros/settings/feature/storage/apps/list/ColorAppListController$a;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/coloros/settings/feature/storage/apps/list/ColorAppListController$a;-><init>(B)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 111
    iget-object v1, p0, Lcom/coloros/settings/feature/storage/apps/list/ColorAppListController;->a:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v1}, Landroidx/preference/PreferenceCategory;->removeAll()V

    .line 113
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/coloros/settings/feature/storage/preferences/OppoStoragePreference;

    add-int/lit8 v3, v2, 0x1

    .line 114
    invoke-virtual {v1, v2}, Lcom/coloros/settings/feature/storage/preferences/OppoStoragePreference;->setOrder(I)V

    .line 115
    iget-object v2, p0, Lcom/coloros/settings/feature/storage/apps/list/ColorAppListController;->a:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v2, v1}, Landroidx/preference/PreferenceCategory;->addPreference(Landroidx/preference/Preference;)Z

    move v2, v3

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public final a(Lcom/coloros/settings/feature/storage/apps/usage/b;)V
    .locals 5

    .line 168
    iget-object v0, p0, Lcom/coloros/settings/feature/storage/apps/list/ColorAppListController;->b:Lcom/coloros/settings/feature/storage/a;

    .line 3251
    iget-object v1, v0, Lcom/coloros/settings/feature/storage/a;->g:Ljava/util/Map;

    iget-object v2, p1, Lcom/coloros/settings/feature/storage/apps/usage/b;->b:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/coloros/settings/feature/storage/apps/usage/b;

    if-eqz v1, :cond_0

    .line 3253
    iget-wide v1, v1, Lcom/coloros/settings/feature/storage/apps/usage/b;->m:J

    iget-wide v3, p1, Lcom/coloros/settings/feature/storage/apps/usage/b;->m:J

    sub-long/2addr v1, v3

    .line 3254
    iget-wide v3, v0, Lcom/coloros/settings/feature/storage/a;->d:J

    sub-long/2addr v3, v1

    iput-wide v3, v0, Lcom/coloros/settings/feature/storage/a;->d:J

    .line 3255
    iget-wide v3, v0, Lcom/coloros/settings/feature/storage/a;->b:J

    sub-long/2addr v3, v1

    iput-wide v3, v0, Lcom/coloros/settings/feature/storage/a;->b:J

    .line 3257
    :cond_0
    iget-object v0, v0, Lcom/coloros/settings/feature/storage/a;->g:Ljava/util/Map;

    iget-object v1, p1, Lcom/coloros/settings/feature/storage/apps/usage/b;->b:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    iget-object v0, p0, Lcom/coloros/settings/feature/storage/apps/list/ColorAppListController;->c:Ljava/util/Map;

    iget-object v1, p1, Lcom/coloros/settings/feature/storage/apps/usage/b;->b:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coloros/settings/feature/storage/preferences/OppoStoragePreference;

    if-eqz v0, :cond_1

    .line 171
    iget-wide v1, p1, Lcom/coloros/settings/feature/storage/apps/usage/b;->m:J

    iput-wide v1, v0, Lcom/coloros/settings/feature/storage/preferences/OppoStoragePreference;->a:J

    .line 172
    iget-object p1, p1, Lcom/coloros/settings/feature/storage/apps/usage/b;->f:Ljava/lang/String;

    invoke-virtual {v0, p1}, Lcom/coloros/settings/feature/storage/preferences/OppoStoragePreference;->a(Ljava/lang/CharSequence;)V

    .line 173
    invoke-direct {p0}, Lcom/coloros/settings/feature/storage/apps/list/ColorAppListController;->b()V

    :cond_1
    return-void
.end method

.method public final a(Lcom/coloros/settings/feature/storage/apps/usage/b;II)V
    .locals 2

    .line 134
    iget-object p2, p0, Lcom/coloros/settings/feature/storage/apps/list/ColorAppListController;->d:Ljava/util/Map;

    iget-object p3, p1, Lcom/coloros/settings/feature/storage/apps/usage/b;->b:Ljava/lang/String;

    invoke-interface {p2, p3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    iget-object p2, p0, Lcom/coloros/settings/feature/storage/apps/list/ColorAppListController;->c:Ljava/util/Map;

    iget-object p3, p1, Lcom/coloros/settings/feature/storage/apps/usage/b;->b:Ljava/lang/String;

    invoke-interface {p2, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/coloros/settings/feature/storage/preferences/OppoStoragePreference;

    if-eqz p2, :cond_0

    .line 137
    iget-wide v0, p1, Lcom/coloros/settings/feature/storage/apps/usage/b;->m:J

    iput-wide v0, p2, Lcom/coloros/settings/feature/storage/preferences/OppoStoragePreference;->a:J

    .line 138
    invoke-direct {p0, p1}, Lcom/coloros/settings/feature/storage/apps/list/ColorAppListController;->b(Lcom/coloros/settings/feature/storage/apps/usage/b;)Ljava/lang/String;

    move-result-object p1

    .line 3061
    invoke-virtual {p2, p1}, Lcom/coloros/settings/feature/storage/preferences/OppoStoragePreference;->a(Ljava/lang/CharSequence;)V

    .line 140
    :cond_0
    invoke-direct {p0}, Lcom/coloros/settings/feature/storage/apps/list/ColorAppListController;->b()V

    return-void
.end method

.method public final a(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/coloros/settings/feature/storage/apps/usage/b;",
            ">;)V"
        }
    .end annotation

    .line 86
    iput-object p1, p0, Lcom/coloros/settings/feature/storage/apps/list/ColorAppListController;->d:Ljava/util/Map;

    .line 87
    invoke-direct {p0}, Lcom/coloros/settings/feature/storage/apps/list/ColorAppListController;->a()V

    return-void
.end method

.method public final a(Ljava/util/concurrent/CopyOnWriteArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    .line 80
    invoke-virtual {p0}, Lcom/coloros/settings/feature/storage/apps/list/ColorAppListController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/PreferenceCategory;

    iput-object p1, p0, Lcom/coloros/settings/feature/storage/apps/list/ColorAppListController;->a:Landroidx/preference/PreferenceCategory;

    .line 81
    invoke-direct {p0}, Lcom/coloros/settings/feature/storage/apps/list/ColorAppListController;->a()V

    return-void
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    const-string v0, "pref_app_list"

    return-object v0
.end method

.method public isAvailable()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onPreferenceClick(Landroidx/preference/Preference;)Z
    .locals 4

    .line 150
    check-cast p1, Lcom/coloros/settings/feature/storage/preferences/OppoStoragePreference;

    .line 151
    iget-object v0, p0, Lcom/coloros/settings/feature/storage/apps/list/ColorAppListController;->d:Ljava/util/Map;

    iget-object p1, p1, Lcom/coloros/settings/feature/storage/preferences/OppoStoragePreference;->b:Ljava/lang/String;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/coloros/settings/feature/storage/apps/usage/b;

    .line 153
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/coloros/settings/feature/storage/apps/list/ColorAppListController;->mContext:Landroid/content/Context;

    const-class v2, Lcom/coloros/settings/feature/storage/apps/detail/ColorStorageAppDetailActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 154
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 155
    iget-object v2, p0, Lcom/coloros/settings/feature/storage/apps/list/ColorAppListController;->mContext:Landroid/content/Context;

    .line 156
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f12159a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "navigate_title_text"

    .line 155
    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "appDataHolder"

    .line 157
    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 158
    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 159
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 160
    iget-object v2, p1, Lcom/coloros/settings/feature/storage/apps/usage/b;->d:Ljava/lang/String;

    const-string v3, "packagename"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    iget-object p1, p1, Lcom/coloros/settings/feature/storage/apps/usage/b;->f:Ljava/lang/String;

    const-string v2, "size"

    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    iget-object p1, p0, Lcom/coloros/settings/feature/storage/apps/list/ColorAppListController;->mContext:Landroid/content/Context;

    const-string v2, "click_details_id"

    invoke-static {p1, v2, v1}, Lcom/coloros/settings/feature/storage/b/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V

    .line 163
    iget-object p1, p0, Lcom/coloros/settings/feature/storage/apps/list/ColorAppListController;->f:Landroidx/preference/PreferenceFragmentCompat;

    const/16 v1, 0x65

    invoke-virtual {p1, v0, v1}, Landroidx/preference/PreferenceFragmentCompat;->startActivityForResult(Landroid/content/Intent;I)V

    const/4 p1, 0x0

    return p1
.end method
