.class public final Lcom/android/settingslib/p/a;
.super Ljava/lang/Object;
.source "AppRestrictionsHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settingslib/p/a$b;,
        Lcom/android/settingslib/p/a$a;,
        Lcom/android/settingslib/p/a$d;,
        Lcom/android/settingslib/p/a$c;
    }
.end annotation


# instance fields
.field public final a:Landroid/content/pm/PackageManager;

.field public final b:Landroid/content/pm/IPackageManager;

.field public final c:Landroid/os/UserHandle;

.field public final d:Z

.field public e:Z

.field public f:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/settingslib/p/a$d;",
            ">;"
        }
    .end annotation
.end field

.field private final h:Lcom/android/settingslib/p/a$b;

.field private final i:Landroid/content/Context;

.field private final j:Landroid/os/UserManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/UserHandle;)V
    .locals 1

    .line 67
    new-instance v0, Lcom/android/settingslib/p/a$b;

    invoke-direct {v0, p1, p2}, Lcom/android/settingslib/p/a$b;-><init>(Landroid/content/Context;Landroid/os/UserHandle;)V

    invoke-direct {p0, v0}, Lcom/android/settingslib/p/a;-><init>(Lcom/android/settingslib/p/a$b;)V

    return-void
.end method

.method private constructor <init>(Lcom/android/settingslib/p/a$b;)V
    .locals 1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/settingslib/p/a;->f:Ljava/util/HashMap;

    .line 72
    iput-object p1, p0, Lcom/android/settingslib/p/a;->h:Lcom/android/settingslib/p/a$b;

    .line 73
    iget-object p1, p0, Lcom/android/settingslib/p/a;->h:Lcom/android/settingslib/p/a$b;

    .line 1402
    iget-object p1, p1, Lcom/android/settingslib/p/a$b;->a:Landroid/content/Context;

    .line 73
    iput-object p1, p0, Lcom/android/settingslib/p/a;->i:Landroid/content/Context;

    .line 74
    iget-object p1, p0, Lcom/android/settingslib/p/a;->h:Lcom/android/settingslib/p/a$b;

    .line 1410
    iget-object p1, p1, Lcom/android/settingslib/p/a$b;->a:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    .line 74
    iput-object p1, p0, Lcom/android/settingslib/p/a;->a:Landroid/content/pm/PackageManager;

    .line 1414
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object p1

    .line 75
    iput-object p1, p0, Lcom/android/settingslib/p/a;->b:Landroid/content/pm/IPackageManager;

    .line 76
    iget-object p1, p0, Lcom/android/settingslib/p/a;->h:Lcom/android/settingslib/p/a$b;

    .line 2406
    iget-object p1, p1, Lcom/android/settingslib/p/a$b;->b:Landroid/os/UserHandle;

    .line 76
    iput-object p1, p0, Lcom/android/settingslib/p/a;->c:Landroid/os/UserHandle;

    .line 77
    iget-object p1, p0, Lcom/android/settingslib/p/a;->h:Lcom/android/settingslib/p/a$b;

    .line 2418
    iget-object p1, p1, Lcom/android/settingslib/p/a$b;->a:Landroid/content/Context;

    const-class v0, Landroid/os/UserManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/UserManager;

    .line 77
    iput-object p1, p0, Lcom/android/settingslib/p/a;->j:Landroid/os/UserManager;

    .line 78
    iget-object p1, p0, Lcom/android/settingslib/p/a;->j:Landroid/os/UserManager;

    iget-object v0, p0, Lcom/android/settingslib/p/a;->c:Landroid/os/UserHandle;

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/pm/UserInfo;->isRestricted()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/settingslib/p/a;->d:Z

    return-void
.end method

.method private a(Ljava/lang/String;Landroid/os/UserHandle;)Landroid/content/pm/ApplicationInfo;
    .locals 2

    .line 354
    :try_start_0
    iget-object v0, p0, Lcom/android/settingslib/p/a;->b:Landroid/content/pm/IPackageManager;

    const/4 v1, 0x0

    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p2

    invoke-interface {v0, p1, v1, p2}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private a(Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x0

    .line 339
    :try_start_0
    iget-object v1, p0, Lcom/android/settingslib/p/a;->a:Landroid/content/pm/PackageManager;

    invoke-virtual {v1, p1, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p1

    .line 340
    iget-object v1, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-nez v1, :cond_0

    return v0

    .line 341
    :cond_0
    iget-object p1, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget p1, p1, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    and-int/lit8 v1, p1, 0x1

    if-nez v1, :cond_1

    and-int/lit16 p1, p1, 0x80

    if-eqz p1, :cond_2

    :cond_1
    const/4 p1, 0x1

    return p1

    :catch_0
    :cond_2
    return v0
.end method


# virtual methods
.method public final a(Lcom/android/settingslib/p/a$c;)V
    .locals 3

    .line 98
    iget-boolean v0, p0, Lcom/android/settingslib/p/a;->d:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settingslib/p/a;->c:Landroid/os/UserHandle;

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    if-eq v0, v1, :cond_0

    const-string p1, "AppRestrictionsHelper"

    const-string v0, "Cannot apply application restrictions on another user!"

    .line 99
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 102
    :cond_0
    iget-object v0, p0, Lcom/android/settingslib/p/a;->f:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 103
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 104
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 105
    invoke-virtual {p0, v2, v1, p1}, Lcom/android/settingslib/p/a;->a(Ljava/lang/String;ZLcom/android/settingslib/p/a$c;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final a(Ljava/lang/String;Z)V
    .locals 1

    .line 82
    iget-object v0, p0, Lcom/android/settingslib/p/a;->f:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final a(Ljava/lang/String;ZLcom/android/settingslib/p/a$c;)V
    .locals 11

    .line 111
    iget-object v0, p0, Lcom/android/settingslib/p/a;->c:Landroid/os/UserHandle;

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p2, :cond_3

    .line 115
    :try_start_0
    iget-object p2, p0, Lcom/android/settingslib/p/a;->b:Landroid/content/pm/IPackageManager;

    const/high16 v3, 0x400000

    invoke-interface {p2, p1, v3, v0}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object p2

    const/high16 v3, 0x800000

    if-eqz p2, :cond_0

    .line 117
    iget-boolean v4, p2, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-eqz v4, :cond_0

    iget v4, p2, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/2addr v4, v3

    if-nez v4, :cond_1

    .line 119
    :cond_0
    iget-object v5, p0, Lcom/android/settingslib/p/a;->b:Landroid/content/pm/IPackageManager;

    iget-object v4, p0, Lcom/android/settingslib/p/a;->c:Landroid/os/UserHandle;

    invoke-virtual {v4}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v7

    const/high16 v8, 0x400000

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v6, p1

    invoke-interface/range {v5 .. v10}, Landroid/content/pm/IPackageManager;->installExistingPackageAsUser(Ljava/lang/String;IIILjava/util/List;)I

    :cond_1
    if-eqz p2, :cond_2

    .line 126
    iget v4, p2, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    and-int/2addr v1, v4

    if-eqz v1, :cond_2

    iget p2, p2, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/2addr p2, v3

    if-eqz p2, :cond_2

    .line 128
    invoke-interface {p3, p1}, Lcom/android/settingslib/p/a$c;->a(Ljava/lang/String;)V

    .line 129
    iget-object p2, p0, Lcom/android/settingslib/p/a;->b:Landroid/content/pm/IPackageManager;

    invoke-interface {p2, p1, v2, v0}, Landroid/content/pm/IPackageManager;->setApplicationHiddenSettingAsUser(Ljava/lang/String;ZI)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_2
    return-void

    .line 140
    :cond_3
    :try_start_1
    iget-object p2, p0, Lcom/android/settingslib/p/a;->b:Landroid/content/pm/IPackageManager;

    invoke-interface {p2, p1, v2, v0}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object p2

    if-eqz p2, :cond_5

    .line 142
    iget-boolean p2, p0, Lcom/android/settingslib/p/a;->d:Z

    if-eqz p2, :cond_4

    .line 143
    iget-object p2, p0, Lcom/android/settingslib/p/a;->a:Landroid/content/pm/PackageManager;

    const/4 p3, 0x0

    const/4 v0, 0x4

    iget-object v1, p0, Lcom/android/settingslib/p/a;->c:Landroid/os/UserHandle;

    .line 144
    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    .line 143
    invoke-virtual {p2, p1, p3, v0, v1}, Landroid/content/pm/PackageManager;->deletePackageAsUser(Ljava/lang/String;Landroid/content/pm/IPackageDeleteObserver;II)V

    return-void

    .line 149
    :cond_4
    invoke-interface {p3, p1}, Lcom/android/settingslib/p/a$c;->a(Ljava/lang/String;)V

    .line 150
    iget-object p2, p0, Lcom/android/settingslib/p/a;->b:Landroid/content/pm/IPackageManager;

    invoke-interface {p2, p1, v1, v0}, Landroid/content/pm/IPackageManager;->setApplicationHiddenSettingAsUser(Ljava/lang/String;ZI)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :cond_5
    return-void
.end method

.method public final a(Ljava/util/List;Landroid/content/Intent;Ljava/util/Set;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/settingslib/p/a$d;",
            ">;",
            "Landroid/content/Intent;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 301
    iget-object v0, p0, Lcom/android/settingslib/p/a;->a:Landroid/content/pm/PackageManager;

    const/16 v1, 0x2200

    .line 302
    invoke-virtual {v0, p2, v1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p2

    .line 304
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    .line 305
    iget-object v2, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v2, :cond_0

    iget-object v2, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v2, :cond_0

    .line 306
    iget-object v2, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 307
    iget-object v3, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v4, v3, 0x1

    if-nez v4, :cond_1

    and-int/lit16 v3, v3, 0x80

    if-eqz v3, :cond_0

    .line 312
    :cond_1
    invoke-interface {p3, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 313
    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->getApplicationEnabledSetting(Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x4

    if-eq v3, v4, :cond_2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_3

    .line 317
    :cond_2
    iget-object v3, p0, Lcom/android/settingslib/p/a;->c:Landroid/os/UserHandle;

    invoke-direct {p0, v2, v3}, Lcom/android/settingslib/p/a;->a(Ljava/lang/String;Landroid/os/UserHandle;)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 319
    iget v2, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v3, 0x800000

    and-int/2addr v2, v3

    if-eqz v2, :cond_0

    .line 324
    :cond_3
    new-instance v2, Lcom/android/settingslib/p/a$d;

    invoke-direct {v2}, Lcom/android/settingslib/p/a$d;-><init>()V

    .line 325
    iget-object v3, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iput-object v3, v2, Lcom/android/settingslib/p/a$d;->a:Ljava/lang/String;

    .line 326
    iget-object v3, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v3, v0}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v3

    iput-object v3, v2, Lcom/android/settingslib/p/a$d;->b:Ljava/lang/CharSequence;

    .line 327
    iget-object v3, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v3, v0}, Landroid/content/pm/ActivityInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, v2, Lcom/android/settingslib/p/a$d;->d:Landroid/graphics/drawable/Drawable;

    .line 328
    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v1, v0}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v2, Lcom/android/settingslib/p/a$d;->c:Ljava/lang/CharSequence;

    .line 329
    iget-object v1, v2, Lcom/android/settingslib/p/a$d;->c:Ljava/lang/CharSequence;

    if-nez v1, :cond_4

    iget-object v1, v2, Lcom/android/settingslib/p/a$d;->b:Ljava/lang/CharSequence;

    iput-object v1, v2, Lcom/android/settingslib/p/a$d;->c:Ljava/lang/CharSequence;

    .line 331
    :cond_4
    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_5
    return-void
.end method

.method public final a(Ljava/util/Set;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 281
    iget-object v0, p0, Lcom/android/settingslib/p/a;->h:Lcom/android/settingslib/p/a$b;

    .line 3402
    iget-object v1, v0, Lcom/android/settingslib/p/a$b;->a:Landroid/content/Context;

    const-string v2, "input_method"

    .line 2422
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    .line 2424
    iget-object v0, v0, Lcom/android/settingslib/p/a$b;->b:Landroid/os/UserHandle;

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/inputmethod/InputMethodManager;->getInputMethodListAsUser(I)Ljava/util/List;

    move-result-object v0

    .line 282
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :catch_0
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodInfo;

    .line 284
    :try_start_0
    iget-object v2, p0, Lcom/android/settingslib/p/a;->i:Landroid/content/Context;

    invoke-virtual {v1, v2}, Landroid/view/inputmethod/InputMethodInfo;->isDefault(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Landroid/view/inputmethod/InputMethodInfo;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/settingslib/p/a;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 285
    invoke-virtual {v1}, Landroid/view/inputmethod/InputMethodInfo;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_1
    return-void
.end method
