.class public final Lcom/android/settings/location/a;
.super Lcom/android/settings/location/e;
.source "AppLocationPermissionPreferenceController.java"

# interfaces
.implements Lcom/android/settings/core/d;


# instance fields
.field a:I
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field b:I
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field final c:Ljava/util/concurrent/atomic/AtomicInteger;

.field private f:I

.field private g:I

.field private final h:Landroid/location/LocationManager;

.field private i:Landroidx/preference/Preference;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V
    .locals 1

    .line 44
    invoke-direct {p0, p1, p2}, Lcom/android/settings/location/e;-><init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    const/4 p2, -0x1

    .line 30
    iput p2, p0, Lcom/android/settings/location/a;->a:I

    .line 33
    iput p2, p0, Lcom/android/settings/location/a;->b:I

    .line 36
    new-instance p2, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v0, 0x0

    invoke-direct {p2, v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object p2, p0, Lcom/android/settings/location/a;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 37
    iput v0, p0, Lcom/android/settings/location/a;->f:I

    .line 38
    iput v0, p0, Lcom/android/settings/location/a;->g:I

    const-string p2, "location"

    .line 45
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/location/LocationManager;

    iput-object p1, p0, Lcom/android/settings/location/a;->h:Landroid/location/LocationManager;

    return-void
.end method

.method private synthetic a(I)V
    .locals 1

    .line 120
    iget v0, p0, Lcom/android/settings/location/a;->g:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/android/settings/location/a;->g:I

    .line 121
    iget-object p1, p0, Lcom/android/settings/location/a;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result p1

    if-nez p1, :cond_0

    .line 122
    iget p1, p0, Lcom/android/settings/location/a;->f:I

    iget v0, p0, Lcom/android/settings/location/a;->g:I

    invoke-direct {p0, p1, v0}, Lcom/android/settings/location/a;->a(II)V

    :cond_0
    return-void
.end method

.method private a(II)V
    .locals 0

    .line 74
    iput p1, p0, Lcom/android/settings/location/a;->a:I

    .line 75
    iput p2, p0, Lcom/android/settings/location/a;->b:I

    .line 76
    iget-object p1, p0, Lcom/android/settings/location/a;->i:Landroidx/preference/Preference;

    invoke-virtual {p0, p1}, Lcom/android/settings/location/a;->refreshSummary(Landroidx/preference/Preference;)V

    return-void
.end method

.method private synthetic b(I)V
    .locals 1

    .line 111
    iget v0, p0, Lcom/android/settings/location/a;->f:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/android/settings/location/a;->f:I

    .line 112
    iget-object p1, p0, Lcom/android/settings/location/a;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result p1

    if-nez p1, :cond_0

    .line 113
    iget p1, p0, Lcom/android/settings/location/a;->f:I

    iget v0, p0, Lcom/android/settings/location/a;->g:I

    invoke-direct {p0, p1, v0}, Lcom/android/settings/location/a;->a(II)V

    :cond_0
    return-void
.end method

.method public static synthetic lambda$UiDkCznlfbq21K01b4lmjtDla3I(Lcom/android/settings/location/a;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/location/a;->b(I)V

    return-void
.end method

.method public static synthetic lambda$h1vf1FwPBJp_lyNFabh5ohcbTVY(Lcom/android/settings/location/a;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/location/a;->a(I)V

    return-void
.end method


# virtual methods
.method public final a(IZ)V
    .locals 0

    .line 130
    iget-object p1, p0, Lcom/android/settings/location/a;->i:Landroidx/preference/Preference;

    if-eqz p1, :cond_0

    .line 131
    invoke-virtual {p0, p1}, Lcom/android/settings/location/a;->updateState(Landroidx/preference/Preference;)V

    :cond_0
    return-void
.end method

.method public final getPreferenceKey()Ljava/lang/String;
    .locals 1

    const-string v0, "app_level_permissions"

    return-object v0
.end method

.method public final getSummary()Ljava/lang/CharSequence;
    .locals 6

    .line 61
    iget-object v0, p0, Lcom/android/settings/location/a;->h:Landroid/location/LocationManager;

    invoke-virtual {v0}, Landroid/location/LocationManager;->isLocationEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 62
    iget v0, p0, Lcom/android/settings/location/a;->a:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/android/settings/location/a;->b:I

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 65
    :cond_0
    iget-object v0, p0, Lcom/android/settings/location/a;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f10001f

    iget v2, p0, Lcom/android/settings/location/a;->b:I

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 67
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget v5, p0, Lcom/android/settings/location/a;->a:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    .line 65
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 63
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/settings/location/a;->mContext:Landroid/content/Context;

    const v1, 0x7f120c30

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 69
    :cond_2
    iget-object v0, p0, Lcom/android/settings/location/a;->mContext:Landroid/content/Context;

    const v1, 0x7f120c0c

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final isAvailable()Z
    .locals 3

    .line 55
    iget-object v0, p0, Lcom/android/settings/location/a;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x1

    const-string v2, "location_settings_link_to_permissions_enabled"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final updateState(Landroidx/preference/Preference;)V
    .locals 8

    .line 81
    invoke-super {p0, p1}, Lcom/android/settings/location/e;->updateState(Landroidx/preference/Preference;)V

    .line 82
    iput-object p1, p0, Lcom/android/settings/location/a;->i:Landroidx/preference/Preference;

    .line 83
    invoke-virtual {p0, p1}, Lcom/android/settings/location/a;->refreshSummary(Landroidx/preference/Preference;)V

    .line 85
    iget-object p1, p0, Lcom/android/settings/location/a;->h:Landroid/location/LocationManager;

    invoke-virtual {p1}, Landroid/location/LocationManager;->isLocationEnabled()Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/android/settings/location/a;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 86
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p1

    if-eqz p1, :cond_0

    goto/16 :goto_2

    :cond_0
    const/4 p1, 0x0

    .line 89
    iput p1, p0, Lcom/android/settings/location/a;->f:I

    .line 90
    iput p1, p0, Lcom/android/settings/location/a;->g:I

    .line 92
    iget-object v0, p0, Lcom/android/settings/location/a;->mContext:Landroid/content/Context;

    const-class v1, Landroid/os/UserManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    .line 93
    invoke-virtual {v0}, Landroid/os/UserManager;->getUserProfiles()Ljava/util/List;

    move-result-object v0

    .line 94
    iget-object v1, p0, Lcom/android/settings/location/a;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x2

    mul-int/2addr v2, v3

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 95
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserHandle;

    .line 96
    iget-object v2, p0, Lcom/android/settings/location/a;->mContext:Landroid/content/Context;

    .line 97
    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    .line 96
    invoke-static {v2, v1}, Lcom/android/settings/m;->e(Landroid/content/Context;I)Landroid/content/Context;

    move-result-object v1

    if-nez v1, :cond_3

    move v1, p1

    :goto_1
    if-ge v1, v3, :cond_1

    .line 100
    iget-object v2, p0, Lcom/android/settings/location/a;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v2

    if-nez v2, :cond_2

    .line 101
    iget v2, p0, Lcom/android/settings/location/a;->f:I

    iget v4, p0, Lcom/android/settings/location/a;->g:I

    invoke-direct {p0, v2, v4}, Lcom/android/settings/location/a;->a(II)V

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 106
    :cond_3
    const-class v2, Landroid/permission/PermissionControllerManager;

    .line 107
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/permission/PermissionControllerManager;

    const-string v2, "android.permission.ACCESS_COARSE_LOCATION"

    const-string v4, "android.permission.ACCESS_FINE_LOCATION"

    .line 108
    filled-new-array {v4, v2}, [Ljava/lang/String;

    move-result-object v5

    .line 109
    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    new-instance v6, Lcom/android/settings/location/-$$Lambda$a$UiDkCznlfbq21K01b4lmjtDla3I;

    invoke-direct {v6, p0}, Lcom/android/settings/location/-$$Lambda$a$UiDkCznlfbq21K01b4lmjtDla3I;-><init>(Lcom/android/settings/location/a;)V

    const/4 v7, 0x0

    .line 108
    invoke-virtual {v1, v5, p1, v6, v7}, Landroid/permission/PermissionControllerManager;->countPermissionApps(Ljava/util/List;ILandroid/permission/PermissionControllerManager$OnCountPermissionAppsResultCallback;Landroid/os/Handler;)V

    .line 116
    filled-new-array {v4, v2}, [Ljava/lang/String;

    move-result-object v2

    .line 117
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    new-instance v4, Lcom/android/settings/location/-$$Lambda$a$h1vf1FwPBJp_lyNFabh5ohcbTVY;

    invoke-direct {v4, p0}, Lcom/android/settings/location/-$$Lambda$a$h1vf1FwPBJp_lyNFabh5ohcbTVY;-><init>(Lcom/android/settings/location/a;)V

    const/4 v5, 0x1

    .line 116
    invoke-virtual {v1, v2, v5, v4, v7}, Landroid/permission/PermissionControllerManager;->countPermissionApps(Ljava/util/List;ILandroid/permission/PermissionControllerManager$OnCountPermissionAppsResultCallback;Landroid/os/Handler;)V

    goto :goto_0

    :cond_4
    :goto_2
    return-void
.end method
