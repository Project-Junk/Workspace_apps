.class public final Lcom/android/settings/deviceinfo/storage/b;
.super Lcom/android/settingslib/core/a;
.source "SecondaryUserController.java"

# interfaces
.implements Lcom/android/settings/core/d;
.implements Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$b;
.implements Lcom/android/settings/deviceinfo/storage/UserIconLoader$b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/deviceinfo/storage/b$a;
    }
.end annotation


# instance fields
.field public a:J

.field private b:Landroid/content/pm/UserInfo;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private c:Lcom/android/settings/deviceinfo/StorageItemPreference;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private d:Landroid/graphics/drawable/Drawable;

.field private e:J


# direct methods
.method private constructor <init>(Landroid/content/Context;Landroid/content/pm/UserInfo;)V
    .locals 0
    .param p2    # Landroid/content/pm/UserInfo;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 103
    invoke-direct {p0, p1}, Lcom/android/settingslib/core/a;-><init>(Landroid/content/Context;)V

    .line 104
    iput-object p2, p0, Lcom/android/settings/deviceinfo/storage/b;->b:Landroid/content/pm/UserInfo;

    const-wide/16 p1, -0x1

    .line 105
    iput-wide p1, p0, Lcom/android/settings/deviceinfo/storage/b;->e:J

    return-void
.end method

.method public static a(Landroid/content/Context;Landroid/os/UserManager;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/os/UserManager;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/settingslib/core/a;",
            ">;"
        }
    .end annotation

    .line 69
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 70
    invoke-virtual {p1}, Landroid/os/UserManager;->getPrimaryUser()Landroid/content/pm/UserInfo;

    move-result-object v1

    .line 72
    invoke-virtual {p1}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object p1

    .line 73
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v3, v2, :cond_3

    .line 74
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/UserInfo;

    .line 75
    invoke-virtual {v5}, Landroid/content/pm/UserInfo;->isPrimary()Z

    move-result v6

    if-nez v6, :cond_2

    if-eqz v5, :cond_1

    .line 79
    invoke-static {v1, v5}, Lcom/android/settings/m;->a(Landroid/content/pm/UserInfo;Landroid/content/pm/UserInfo;)Z

    move-result v6

    if-eqz v6, :cond_0

    goto :goto_1

    .line 85
    :cond_0
    new-instance v4, Lcom/android/settings/deviceinfo/storage/b;

    invoke-direct {v4, p0, v5}, Lcom/android/settings/deviceinfo/storage/b;-><init>(Landroid/content/Context;Landroid/content/pm/UserInfo;)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v4, 0x1

    goto :goto_2

    .line 80
    :cond_1
    :goto_1
    new-instance v6, Lcom/android/settings/deviceinfo/storage/e;

    invoke-direct {v6, p0, v5}, Lcom/android/settings/deviceinfo/storage/e;-><init>(Landroid/content/Context;Landroid/content/pm/UserInfo;)V

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    if-nez v4, :cond_4

    .line 90
    new-instance p1, Lcom/android/settings/deviceinfo/storage/b$a;

    invoke-direct {p1, p0}, Lcom/android/settings/deviceinfo/storage/b$a;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    return-object v0
.end method

.method private a()V
    .locals 2

    .line 181
    iget-object v0, p0, Lcom/android/settings/deviceinfo/storage/b;->d:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/settings/deviceinfo/storage/b;->c:Lcom/android/settings/deviceinfo/StorageItemPreference;

    if-eqz v1, :cond_0

    .line 182
    invoke-virtual {v1, v0}, Lcom/android/settings/deviceinfo/StorageItemPreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public final a(Landroid/util/SparseArray;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$a;",
            ">;)V"
        }
    .end annotation

    .line 1142
    iget-object v0, p0, Lcom/android/settings/deviceinfo/storage/b;->b:Landroid/content/pm/UserInfo;

    .line 167
    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    .line 168
    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$a;

    if-eqz p1, :cond_0

    .line 170
    iget-object p1, p1, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$a;->g:Lcom/android/settingslib/applications/f$c;

    iget-wide v0, p1, Lcom/android/settingslib/applications/f$c;->a:J

    .line 1151
    iput-wide v0, p0, Lcom/android/settings/deviceinfo/storage/b;->e:J

    .line 1152
    iget-object p1, p0, Lcom/android/settings/deviceinfo/storage/b;->c:Lcom/android/settings/deviceinfo/StorageItemPreference;

    if-eqz p1, :cond_0

    .line 1153
    iget-wide v0, p0, Lcom/android/settings/deviceinfo/storage/b;->e:J

    iget-wide v2, p0, Lcom/android/settings/deviceinfo/storage/b;->a:J

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/android/settings/deviceinfo/StorageItemPreference;->a(JJ)V

    :cond_0
    return-void
.end method

.method public final b(Landroid/util/SparseArray;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Landroid/graphics/drawable/Drawable;",
            ">;)V"
        }
    .end annotation

    .line 176
    iget-object v0, p0, Lcom/android/settings/deviceinfo/storage/b;->b:Landroid/content/pm/UserInfo;

    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/drawable/Drawable;

    iput-object p1, p0, Lcom/android/settings/deviceinfo/storage/b;->d:Landroid/graphics/drawable/Drawable;

    .line 177
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/storage/b;->a()V

    return-void
.end method

.method public final displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 5

    .line 110
    iget-object v0, p0, Lcom/android/settings/deviceinfo/storage/b;->c:Lcom/android/settings/deviceinfo/StorageItemPreference;

    if-nez v0, :cond_1

    .line 111
    new-instance v0, Lcom/android/settings/deviceinfo/StorageItemPreference;

    invoke-virtual {p1}, Landroidx/preference/PreferenceScreen;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/settings/deviceinfo/StorageItemPreference;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/deviceinfo/storage/b;->c:Lcom/android/settings/deviceinfo/StorageItemPreference;

    const-string v0, "pref_secondary_users"

    .line 114
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/PreferenceGroup;

    .line 115
    iget-object v0, p0, Lcom/android/settings/deviceinfo/storage/b;->c:Lcom/android/settings/deviceinfo/StorageItemPreference;

    iget-object v1, p0, Lcom/android/settings/deviceinfo/storage/b;->b:Landroid/content/pm/UserInfo;

    iget-object v1, v1, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/settings/deviceinfo/StorageItemPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 116
    iget-object v0, p0, Lcom/android/settings/deviceinfo/storage/b;->c:Lcom/android/settings/deviceinfo/StorageItemPreference;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "pref_user_"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/settings/deviceinfo/storage/b;->b:Landroid/content/pm/UserInfo;

    iget v2, v2, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/deviceinfo/StorageItemPreference;->setKey(Ljava/lang/String;)V

    .line 117
    iget-wide v0, p0, Lcom/android/settings/deviceinfo/storage/b;->e:J

    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    .line 118
    iget-object v2, p0, Lcom/android/settings/deviceinfo/storage/b;->c:Lcom/android/settings/deviceinfo/StorageItemPreference;

    iget-wide v3, p0, Lcom/android/settings/deviceinfo/storage/b;->a:J

    invoke-virtual {v2, v0, v1, v3, v4}, Lcom/android/settings/deviceinfo/StorageItemPreference;->a(JJ)V

    :cond_0
    const/4 v0, 0x1

    .line 121
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->setVisible(Z)V

    .line 122
    iget-object v0, p0, Lcom/android/settings/deviceinfo/storage/b;->c:Lcom/android/settings/deviceinfo/StorageItemPreference;

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    .line 123
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/storage/b;->a()V

    :cond_1
    return-void
.end method

.method public final getPreferenceKey()Ljava/lang/String;
    .locals 1

    .line 134
    iget-object v0, p0, Lcom/android/settings/deviceinfo/storage/b;->c:Lcom/android/settings/deviceinfo/StorageItemPreference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/settings/deviceinfo/StorageItemPreference;->getKey()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final isAvailable()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
