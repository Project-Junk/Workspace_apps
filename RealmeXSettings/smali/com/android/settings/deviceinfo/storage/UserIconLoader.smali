.class public Lcom/android/settings/deviceinfo/storage/UserIconLoader;
.super Lcom/android/settingslib/utils/AsyncLoaderCompat;
.source "UserIconLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/deviceinfo/storage/UserIconLoader$b;,
        Lcom/android/settings/deviceinfo/storage/UserIconLoader$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/settingslib/utils/AsyncLoaderCompat<",
        "Landroid/util/SparseArray<",
        "Landroid/graphics/drawable/Drawable;",
        ">;>;"
    }
.end annotation


# instance fields
.field private a:Lcom/android/settings/deviceinfo/storage/UserIconLoader$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/deviceinfo/storage/UserIconLoader$a;)V
    .locals 0

    .line 50
    invoke-direct {p0, p1}, Lcom/android/settingslib/utils/AsyncLoaderCompat;-><init>(Landroid/content/Context;)V

    .line 51
    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/settings/deviceinfo/storage/UserIconLoader$a;

    iput-object p1, p0, Lcom/android/settings/deviceinfo/storage/UserIconLoader;->a:Lcom/android/settings/deviceinfo/storage/UserIconLoader$a;

    return-void
.end method

.method public static a(Landroid/content/Context;)Landroid/util/SparseArray;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Landroid/util/SparseArray<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation

    .line 67
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 68
    const-class v1, Landroid/os/UserManager;

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserManager;

    .line 69
    invoke-virtual {v1}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/UserInfo;

    .line 70
    iget v4, v3, Landroid/content/pm/UserInfo;->id:I

    invoke-static {p0, v1, v3}, Lcom/android/settings/m;->a(Landroid/content/Context;Landroid/os/UserManager;Landroid/content/pm/UserInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v0, v4, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-object v0
.end method


# virtual methods
.method public final bridge synthetic a()V
    .locals 0

    return-void
.end method

.method public synthetic loadInBackground()Ljava/lang/Object;
    .locals 1

    .line 1056
    iget-object v0, p0, Lcom/android/settings/deviceinfo/storage/UserIconLoader;->a:Lcom/android/settings/deviceinfo/storage/UserIconLoader$a;

    invoke-interface {v0}, Lcom/android/settings/deviceinfo/storage/UserIconLoader$a;->getUserIcons()Landroid/util/SparseArray;

    move-result-object v0

    return-object v0
.end method
