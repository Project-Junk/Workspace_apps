.class public Lcom/android/settings/datausage/AppPrefLoader;
.super Lcom/android/settingslib/utils/AsyncLoaderCompat;
.source "AppPrefLoader.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/settingslib/utils/AsyncLoaderCompat<",
        "Landroid/util/ArraySet<",
        "Landroidx/preference/Preference;",
        ">;>;"
    }
.end annotation


# instance fields
.field private a:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private b:Landroid/content/pm/PackageManager;

.field private c:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/ArraySet;Landroid/content/pm/PackageManager;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/content/pm/PackageManager;",
            ")V"
        }
    .end annotation

    .line 34
    invoke-direct {p0, p1}, Lcom/android/settingslib/utils/AsyncLoaderCompat;-><init>(Landroid/content/Context;)V

    .line 35
    iput-object p2, p0, Lcom/android/settings/datausage/AppPrefLoader;->a:Landroid/util/ArraySet;

    .line 36
    iput-object p3, p0, Lcom/android/settings/datausage/AppPrefLoader;->b:Landroid/content/pm/PackageManager;

    .line 37
    iput-object p1, p0, Lcom/android/settings/datausage/AppPrefLoader;->c:Landroid/content/Context;

    return-void
.end method

.method private b()Landroid/util/ArraySet;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArraySet<",
            "Landroidx/preference/Preference;",
            ">;"
        }
    .end annotation

    .line 42
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 43
    iget-object v1, p0, Lcom/android/settings/datausage/AppPrefLoader;->a:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v1

    const/4 v2, 0x1

    :goto_0
    if-ge v2, v1, :cond_0

    .line 45
    :try_start_0
    iget-object v3, p0, Lcom/android/settings/datausage/AppPrefLoader;->b:Landroid/content/pm/PackageManager;

    iget-object v4, p0, Lcom/android/settings/datausage/AppPrefLoader;->a:Landroid/util/ArraySet;

    invoke-virtual {v4, v2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    .line 46
    new-instance v4, Landroidx/preference/Preference;

    iget-object v6, p0, Lcom/android/settings/datausage/AppPrefLoader;->c:Landroid/content/Context;

    invoke-direct {v4, v6}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 47
    iget-object v6, p0, Lcom/android/settings/datausage/AppPrefLoader;->b:Landroid/content/pm/PackageManager;

    invoke-virtual {v3, v6}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroidx/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 48
    iget-object v6, p0, Lcom/android/settings/datausage/AppPrefLoader;->b:Landroid/content/pm/PackageManager;

    invoke-virtual {v3, v6}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 49
    invoke-virtual {v4, v5}, Landroidx/preference/Preference;->setSelectable(Z)V

    .line 50
    invoke-virtual {v0, v4}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    add-int/lit8 v2, v2, 0x1

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

    .line 28
    invoke-direct {p0}, Lcom/android/settings/datausage/AppPrefLoader;->b()Landroid/util/ArraySet;

    move-result-object v0

    return-object v0
.end method
