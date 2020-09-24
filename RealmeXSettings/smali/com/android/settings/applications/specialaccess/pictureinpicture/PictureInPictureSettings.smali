.class public Lcom/android/settings/applications/specialaccess/pictureinpicture/PictureInPictureSettings;
.super Lcom/android/settings/widget/EmptyTextSettings;
.source "PictureInPictureSettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/applications/specialaccess/pictureinpicture/PictureInPictureSettings$a;
    }
.end annotation


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

.field static final a:Ljava/util/List;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private b:Landroid/content/Context;

.field private c:Landroid/content/pm/PackageManager;

.field private d:Landroid/os/UserManager;

.field private e:Landroid/util/IconDrawableFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 59
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 62
    sput-object v0, Lcom/android/settings/applications/specialaccess/pictureinpicture/PictureInPictureSettings;->a:Ljava/util/List;

    const-string v1, "com.android.systemui"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 222
    new-instance v0, Lcom/android/settings/applications/specialaccess/pictureinpicture/PictureInPictureSettings$2;

    invoke-direct {v0}, Lcom/android/settings/applications/specialaccess/pictureinpicture/PictureInPictureSettings$2;-><init>()V

    sput-object v0, Lcom/android/settings/applications/specialaccess/pictureinpicture/PictureInPictureSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 122
    invoke-direct {p0}, Lcom/android/settings/widget/EmptyTextSettings;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;[Landroid/content/pm/ActivityInfo;)Z
    .locals 3

    .line 106
    sget-object v0, Lcom/android/settings/applications/specialaccess/pictureinpicture/PictureInPictureSettings;->a:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    return v0

    :cond_0
    if-eqz p1, :cond_2

    .line 113
    array-length p0, p1

    const/4 v1, 0x1

    sub-int/2addr p0, v1

    :goto_0
    if-ltz p0, :cond_2

    .line 114
    aget-object v2, p1, p0

    invoke-virtual {v2}, Landroid/content/pm/ActivityInfo;->supportsPictureInPicture()Z

    move-result v2

    if-eqz v2, :cond_1

    return v1

    :cond_1
    add-int/lit8 p0, p0, -0x1

    goto :goto_0

    :cond_2
    return v0
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x32c

    return v0
.end method

.method public getPreferenceScreenResId()I
    .locals 1

    const v0, 0x7f1500ef

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 133
    invoke-super {p0, p1}, Lcom/android/settings/widget/EmptyTextSettings;->onCreate(Landroid/os/Bundle;)V

    .line 135
    invoke-virtual {p0}, Lcom/android/settings/applications/specialaccess/pictureinpicture/PictureInPictureSettings;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/applications/specialaccess/pictureinpicture/PictureInPictureSettings;->b:Landroid/content/Context;

    .line 136
    iget-object p1, p0, Lcom/android/settings/applications/specialaccess/pictureinpicture/PictureInPictureSettings;->b:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/applications/specialaccess/pictureinpicture/PictureInPictureSettings;->c:Landroid/content/pm/PackageManager;

    .line 137
    iget-object p1, p0, Lcom/android/settings/applications/specialaccess/pictureinpicture/PictureInPictureSettings;->b:Landroid/content/Context;

    const-string/jumbo v0, "user"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/UserManager;

    iput-object p1, p0, Lcom/android/settings/applications/specialaccess/pictureinpicture/PictureInPictureSettings;->d:Landroid/os/UserManager;

    .line 138
    iget-object p1, p0, Lcom/android/settings/applications/specialaccess/pictureinpicture/PictureInPictureSettings;->b:Landroid/content/Context;

    invoke-static {p1}, Landroid/util/IconDrawableFactory;->newInstance(Landroid/content/Context;)Landroid/util/IconDrawableFactory;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/applications/specialaccess/pictureinpicture/PictureInPictureSettings;->e:Landroid/util/IconDrawableFactory;

    return-void
.end method

.method public onResume()V
    .locals 10

    .line 143
    invoke-super {p0}, Lcom/android/settings/widget/EmptyTextSettings;->onResume()V

    .line 146
    invoke-virtual {p0}, Lcom/android/settings/applications/specialaccess/pictureinpicture/PictureInPictureSettings;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    .line 147
    invoke-virtual {v0}, Landroidx/preference/PreferenceScreen;->removeAll()V

    .line 152
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    .line 1203
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1204
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1205
    iget-object v4, p0, Lcom/android/settings/applications/specialaccess/pictureinpicture/PictureInPictureSettings;->d:Landroid/os/UserManager;

    invoke-virtual {v4, v1}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/UserInfo;

    .line 1206
    iget v4, v4, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1209
    :cond_0
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 1210
    iget-object v4, p0, Lcom/android/settings/applications/specialaccess/pictureinpicture/PictureInPictureSettings;->c:Landroid/content/pm/PackageManager;

    const/4 v5, 0x1

    invoke-virtual {v4, v5, v3}, Landroid/content/pm/PackageManager;->getInstalledPackagesAsUser(II)Ljava/util/List;

    move-result-object v4

    .line 1212
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/PackageInfo;

    .line 1213
    iget-object v6, v5, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    iget-object v7, v5, Landroid/content/pm/PackageInfo;->activities:[Landroid/content/pm/ActivityInfo;

    invoke-static {v6, v7}, Lcom/android/settings/applications/specialaccess/pictureinpicture/PictureInPictureSettings;->a(Ljava/lang/String;[Landroid/content/pm/ActivityInfo;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1215
    new-instance v6, Landroid/util/Pair;

    iget-object v5, v5, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-direct {v6, v5, v7}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 153
    :cond_3
    new-instance v1, Lcom/android/settings/applications/specialaccess/pictureinpicture/PictureInPictureSettings$a;

    iget-object v3, p0, Lcom/android/settings/applications/specialaccess/pictureinpicture/PictureInPictureSettings;->c:Landroid/content/pm/PackageManager;

    invoke-direct {v1, v3}, Lcom/android/settings/applications/specialaccess/pictureinpicture/PictureInPictureSettings$a;-><init>(Landroid/content/pm/PackageManager;)V

    invoke-static {v2, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 156
    invoke-virtual {p0}, Lcom/android/settings/applications/specialaccess/pictureinpicture/PictureInPictureSettings;->getPrefContext()Landroid/content/Context;

    move-result-object v1

    .line 157
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/Pair;

    .line 158
    iget-object v4, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Landroid/content/pm/ApplicationInfo;

    .line 159
    iget-object v3, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 160
    invoke-static {v3}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v5

    .line 161
    iget-object v6, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 162
    iget-object v7, p0, Lcom/android/settings/applications/specialaccess/pictureinpicture/PictureInPictureSettings;->c:Landroid/content/pm/PackageManager;

    invoke-virtual {v4, v7}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v7

    .line 164
    new-instance v8, Lcom/android/settingslib/widget/apppreference/AppPreference;

    invoke-direct {v8, v1}, Lcom/android/settingslib/widget/apppreference/AppPreference;-><init>(Landroid/content/Context;)V

    .line 165
    iget-object v9, p0, Lcom/android/settings/applications/specialaccess/pictureinpicture/PictureInPictureSettings;->e:Landroid/util/IconDrawableFactory;

    invoke-virtual {v9, v4, v3}, Landroid/util/IconDrawableFactory;->getBadgedIcon(Landroid/content/pm/ApplicationInfo;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v8, v3}, Landroidx/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 166
    iget-object v3, p0, Lcom/android/settings/applications/specialaccess/pictureinpicture/PictureInPictureSettings;->c:Landroid/content/pm/PackageManager;

    invoke-virtual {v3, v7, v5}, Landroid/content/pm/PackageManager;->getUserBadgedLabel(Ljava/lang/CharSequence;Landroid/os/UserHandle;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v8, v3}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 167
    iget v3, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v1, v3, v6}, Lcom/android/settings/applications/specialaccess/pictureinpicture/PictureInPictureDetails;->a(Landroid/content/Context;ILjava/lang/String;)I

    move-result v3

    invoke-virtual {v8, v3}, Landroidx/preference/Preference;->setSummary(I)V

    .line 169
    new-instance v3, Lcom/android/settings/applications/specialaccess/pictureinpicture/PictureInPictureSettings$1;

    invoke-direct {v3, p0, v6, v4}, Lcom/android/settings/applications/specialaccess/pictureinpicture/PictureInPictureSettings$1;-><init>(Lcom/android/settings/applications/specialaccess/pictureinpicture/PictureInPictureSettings;Ljava/lang/String;Landroid/content/pm/ApplicationInfo;)V

    invoke-virtual {v8, v3}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 178
    invoke-virtual {v0, v8}, Landroidx/preference/PreferenceScreen;->addPreference(Landroidx/preference/Preference;)Z

    goto :goto_2

    :cond_4
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    .line 184
    invoke-super {p0, p1, p2}, Lcom/android/settings/widget/EmptyTextSettings;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    const p1, 0x7f12102c

    .line 185
    invoke-virtual {p0, p1}, Lcom/android/settings/applications/specialaccess/pictureinpicture/PictureInPictureSettings;->a(I)V

    return-void
.end method
