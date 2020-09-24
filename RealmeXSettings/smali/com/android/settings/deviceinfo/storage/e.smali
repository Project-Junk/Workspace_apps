.class public final Lcom/android/settings/deviceinfo/storage/e;
.super Lcom/android/settingslib/core/a;
.source "UserProfileController.java"

# interfaces
.implements Lcom/android/settings/core/d;
.implements Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$b;
.implements Lcom/android/settings/deviceinfo/storage/UserIconLoader$b;


# instance fields
.field private a:Lcom/android/settings/deviceinfo/StorageItemPreference;

.field private b:Landroid/content/pm/UserInfo;

.field private c:J

.field private final d:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/pm/UserInfo;)V
    .locals 0

    .line 52
    invoke-direct {p0, p1}, Lcom/android/settingslib/core/a;-><init>(Landroid/content/Context;)V

    .line 53
    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/pm/UserInfo;

    iput-object p1, p0, Lcom/android/settings/deviceinfo/storage/e;->b:Landroid/content/pm/UserInfo;

    const/4 p1, 0x6

    .line 54
    iput p1, p0, Lcom/android/settings/deviceinfo/storage/e;->d:I

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

    .line 97
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    iget-object v0, p0, Lcom/android/settings/deviceinfo/storage/e;->b:Landroid/content/pm/UserInfo;

    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    .line 100
    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$a;

    if-eqz p1, :cond_0

    .line 102
    iget-object v0, p1, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$a;->g:Lcom/android/settingslib/applications/f$c;

    iget-wide v0, v0, Lcom/android/settingslib/applications/f$c;->a:J

    iget-wide v2, p1, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$a;->e:J

    add-long/2addr v0, v2

    iget-wide v2, p1, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$a;->d:J

    add-long/2addr v0, v2

    iget-wide v2, p1, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$a;->b:J

    add-long/2addr v0, v2

    iget-wide v2, p1, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$a;->a:J

    add-long/2addr v0, v2

    iget-wide v2, p0, Lcom/android/settings/deviceinfo/storage/e;->c:J

    .line 1115
    iget-object p1, p0, Lcom/android/settings/deviceinfo/storage/e;->a:Lcom/android/settings/deviceinfo/StorageItemPreference;

    if-eqz p1, :cond_0

    .line 1116
    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/android/settings/deviceinfo/StorageItemPreference;->a(JJ)V

    :cond_0
    return-void
.end method

.method public final b(Landroid/util/SparseArray;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Landroid/graphics/drawable/Drawable;",
            ">;)V"
        }
    .end annotation

    .line 126
    iget-object v0, p0, Lcom/android/settings/deviceinfo/storage/e;->b:Landroid/content/pm/UserInfo;

    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_0

    .line 128
    iget-object v0, p0, Lcom/android/settings/deviceinfo/storage/e;->a:Lcom/android/settings/deviceinfo/StorageItemPreference;

    iget-object v1, p0, Lcom/android/settings/deviceinfo/storage/e;->mContext:Landroid/content/Context;

    .line 1133
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    const v2, 0x1010429

    .line 1134
    invoke-static {v1, v2}, Lcom/android/settings/m;->j(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    .line 128
    invoke-virtual {v0, p1}, Lcom/android/settings/deviceinfo/StorageItemPreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method public final displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 3

    .line 69
    new-instance v0, Lcom/android/settings/deviceinfo/StorageItemPreference;

    invoke-virtual {p1}, Landroidx/preference/PreferenceScreen;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/settings/deviceinfo/StorageItemPreference;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/deviceinfo/storage/e;->a:Lcom/android/settings/deviceinfo/StorageItemPreference;

    .line 70
    iget-object v0, p0, Lcom/android/settings/deviceinfo/storage/e;->a:Lcom/android/settings/deviceinfo/StorageItemPreference;

    iget v1, p0, Lcom/android/settings/deviceinfo/storage/e;->d:I

    invoke-virtual {v0, v1}, Lcom/android/settings/deviceinfo/StorageItemPreference;->setOrder(I)V

    .line 71
    iget-object v0, p0, Lcom/android/settings/deviceinfo/storage/e;->a:Lcom/android/settings/deviceinfo/StorageItemPreference;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "pref_profile_"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/settings/deviceinfo/storage/e;->b:Landroid/content/pm/UserInfo;

    iget v2, v2, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/deviceinfo/StorageItemPreference;->setKey(Ljava/lang/String;)V

    .line 72
    iget-object v0, p0, Lcom/android/settings/deviceinfo/storage/e;->a:Lcom/android/settings/deviceinfo/StorageItemPreference;

    iget-object v1, p0, Lcom/android/settings/deviceinfo/storage/e;->b:Landroid/content/pm/UserInfo;

    iget-object v1, v1, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/settings/deviceinfo/StorageItemPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 73
    iget-object v0, p0, Lcom/android/settings/deviceinfo/storage/e;->a:Lcom/android/settings/deviceinfo/StorageItemPreference;

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceScreen;->addPreference(Landroidx/preference/Preference;)Z

    return-void
.end method

.method public final getPreferenceKey()Ljava/lang/String;
    .locals 2

    .line 64
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "pref_profile_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/settings/deviceinfo/storage/e;->b:Landroid/content/pm/UserInfo;

    iget v1, v1, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final handlePreferenceTreeClick(Landroidx/preference/Preference;)Z
    .locals 2

    if-eqz p1, :cond_0

    .line 78
    iget-object v0, p0, Lcom/android/settings/deviceinfo/storage/e;->a:Lcom/android/settings/deviceinfo/StorageItemPreference;

    if-ne v0, p1, :cond_0

    .line 79
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 80
    iget-object v0, p0, Lcom/android/settings/deviceinfo/storage/e;->b:Landroid/content/pm/UserInfo;

    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    const-string/jumbo v1, "userId"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "android.os.storage.extra.VOLUME_ID"

    const-string v1, "private"

    .line 81
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    new-instance v0, Lcom/android/settings/core/f;

    iget-object v1, p0, Lcom/android/settings/deviceinfo/storage/e;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/settings/core/f;-><init>(Landroid/content/Context;)V

    const-class v1, Lcom/android/settings/deviceinfo/StorageProfileFragment;

    .line 84
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/core/f;->a(Ljava/lang/String;)Lcom/android/settings/core/f;

    move-result-object v0

    .line 85
    invoke-virtual {v0, p1}, Lcom/android/settings/core/f;->a(Landroid/os/Bundle;)Lcom/android/settings/core/f;

    move-result-object p1

    iget-object v0, p0, Lcom/android/settings/deviceinfo/storage/e;->b:Landroid/content/pm/UserInfo;

    iget-object v0, v0, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    .line 86
    invoke-virtual {p1, v0}, Lcom/android/settings/core/f;->a(Ljava/lang/CharSequence;)Lcom/android/settings/core/f;

    move-result-object p1

    const/16 v0, 0x2a

    .line 87
    invoke-virtual {p1, v0}, Lcom/android/settings/core/f;->a(I)Lcom/android/settings/core/f;

    move-result-object p1

    .line 88
    invoke-virtual {p1}, Lcom/android/settings/core/f;->a()V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final isAvailable()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
