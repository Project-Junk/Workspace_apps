.class public Lcom/android/settingslib/location/RecentLocationAccesses;
.super Ljava/lang/Object;
.source "RecentLocationAccesses.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settingslib/location/RecentLocationAccesses$Access;
    }
.end annotation


# static fields
.field static final ANDROID_SYSTEM_PACKAGE_NAME:Ljava/lang/String; = "android"
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field static final LOCATION_OPS:[I
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field private static final RECENT_TIME_INTERVAL_MILLIS:J = 0x5265c00L

.field private static final TAG:Ljava/lang/String; = "RecentLocationAccesses"

.field public static final TRUSTED_STATE_FLAGS:I = 0xd


# instance fields
.field private final mClock:Ljava/time/Clock;

.field private final mContext:Landroid/content/Context;

.field private final mDrawableFactory:Landroid/util/IconDrawableFactory;

.field private final mPackageManager:Landroid/content/pm/PackageManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x2

    .line 57
    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/settingslib/location/RecentLocationAccesses;->LOCATION_OPS:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x1
        0x0
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 68
    invoke-static {}, Ljava/time/Clock;->systemDefaultZone()Ljava/time/Clock;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/settingslib/location/RecentLocationAccesses;-><init>(Landroid/content/Context;Ljava/time/Clock;)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Ljava/time/Clock;)V
    .locals 1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    iput-object p1, p0, Lcom/android/settingslib/location/RecentLocationAccesses;->mContext:Landroid/content/Context;

    .line 74
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settingslib/location/RecentLocationAccesses;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 75
    invoke-static {p1}, Landroid/util/IconDrawableFactory;->newInstance(Landroid/content/Context;)Landroid/util/IconDrawableFactory;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settingslib/location/RecentLocationAccesses;->mDrawableFactory:Landroid/util/IconDrawableFactory;

    .line 76
    iput-object p2, p0, Lcom/android/settingslib/location/RecentLocationAccesses;->mClock:Ljava/time/Clock;

    return-void
.end method

.method private getAccessFromOps(JLandroid/app/AppOpsManager$PackageOps;)Lcom/android/settingslib/location/RecentLocationAccesses$Access;
    .locals 10

    const-string v0, ", userId "

    .line 160
    invoke-virtual {p3}, Landroid/app/AppOpsManager$PackageOps;->getPackageName()Ljava/lang/String;

    move-result-object v9

    .line 161
    invoke-virtual {p3}, Landroid/app/AppOpsManager$PackageOps;->getOps()Ljava/util/List;

    move-result-object v1

    const-wide/32 v2, 0x5265c00

    sub-long/2addr p1, v2

    .line 165
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const-wide/16 v2, 0x0

    move-wide v7, v2

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/AppOpsManager$OpEntry;

    const/16 v3, 0xd

    .line 166
    invoke-virtual {v2, v3}, Landroid/app/AppOpsManager$OpEntry;->getLastAccessTime(I)J

    move-result-wide v7

    goto :goto_0

    :cond_0
    cmp-long p1, v7, p1

    const/4 p2, 0x0

    if-gez p1, :cond_1

    return-object p2

    .line 174
    :cond_1
    invoke-virtual {p3}, Landroid/app/AppOpsManager$PackageOps;->getUid()I

    move-result p1

    .line 175
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p1

    .line 179
    :try_start_0
    iget-object p3, p0, Lcom/android/settingslib/location/RecentLocationAccesses;->mPackageManager:Landroid/content/pm/PackageManager;

    const/16 v1, 0x80

    invoke-virtual {p3, v9, v1, p1}, Landroid/content/pm/PackageManager;->getApplicationInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object p3

    if-nez p3, :cond_2

    .line 182
    sget-object p0, Lcom/android/settingslib/location/RecentLocationAccesses;->TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Null application info retrieved for package "

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p0, p3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object p2

    .line 187
    :cond_2
    new-instance v3, Landroid/os/UserHandle;

    invoke-direct {v3, p1}, Landroid/os/UserHandle;-><init>(I)V

    .line 188
    iget-object v1, p0, Lcom/android/settingslib/location/RecentLocationAccesses;->mDrawableFactory:Landroid/util/IconDrawableFactory;

    invoke-virtual {v1, p3, p1}, Landroid/util/IconDrawableFactory;->getBadgedIcon(Landroid/content/pm/ApplicationInfo;I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 189
    iget-object v1, p0, Lcom/android/settingslib/location/RecentLocationAccesses;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v1, p3}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v5

    .line 190
    iget-object p0, p0, Lcom/android/settingslib/location/RecentLocationAccesses;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {p0, v5, v3}, Landroid/content/pm/PackageManager;->getUserBadgedLabel(Ljava/lang/CharSequence;Landroid/os/UserHandle;)Ljava/lang/CharSequence;

    move-result-object p0

    .line 191
    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3, p0}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_3

    move-object v6, p2

    goto :goto_1

    :cond_3
    move-object v6, p0

    .line 196
    :goto_1
    new-instance p0, Lcom/android/settingslib/location/RecentLocationAccesses$Access;

    move-object v1, p0

    move-object v2, v9

    invoke-direct/range {v1 .. v8}, Lcom/android/settingslib/location/RecentLocationAccesses$Access;-><init>(Ljava/lang/String;Landroid/os/UserHandle;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;J)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 199
    :catch_0
    sget-object p0, Lcom/android/settingslib/location/RecentLocationAccesses;->TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "package name not found for "

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object p0, p2

    :goto_2
    return-object p0
.end method


# virtual methods
.method public getAppList()Ljava/util/List;
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/settingslib/location/RecentLocationAccesses$Access;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 85
    iget-object v1, v0, Lcom/android/settingslib/location/RecentLocationAccesses;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 86
    iget-object v2, v0, Lcom/android/settingslib/location/RecentLocationAccesses;->mContext:Landroid/content/Context;

    const-string v3, "appops"

    .line 87
    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/AppOpsManager;

    .line 88
    sget-object v3, Lcom/android/settingslib/location/RecentLocationAccesses;->LOCATION_OPS:[I

    invoke-virtual {v2, v3}, Landroid/app/AppOpsManager;->getPackagesForOps([I)Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 90
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    .line 93
    :goto_0
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 94
    iget-object v6, v0, Lcom/android/settingslib/location/RecentLocationAccesses;->mClock:Ljava/time/Clock;

    invoke-virtual {v6}, Ljava/time/Clock;->millis()J

    move-result-wide v6

    .line 95
    iget-object v8, v0, Lcom/android/settingslib/location/RecentLocationAccesses;->mContext:Landroid/content/Context;

    const-string v9, "user"

    invoke-virtual {v8, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/os/UserManager;

    .line 96
    invoke-virtual {v8}, Landroid/os/UserManager;->getUserProfiles()Ljava/util/List;

    move-result-object v8

    const/4 v9, 0x0

    :goto_1
    if-ge v9, v4, :cond_6

    .line 99
    invoke-interface {v2, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/app/AppOpsManager$PackageOps;

    .line 100
    invoke-virtual {v10}, Landroid/app/AppOpsManager$PackageOps;->getPackageName()Ljava/lang/String;

    move-result-object v11

    .line 101
    invoke-virtual {v10}, Landroid/app/AppOpsManager$PackageOps;->getUid()I

    move-result v12

    .line 102
    invoke-static {v12}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    move-result-object v13

    .line 105
    invoke-interface {v8, v13}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_1

    move-object/from16 v18, v1

    move-object/from16 v17, v2

    move/from16 v16, v4

    move-object/from16 v19, v8

    goto :goto_5

    .line 111
    :cond_1
    sget-object v14, Lcom/android/settingslib/location/RecentLocationAccesses;->LOCATION_OPS:[I

    array-length v15, v14

    const/4 v3, 0x0

    :goto_2
    if-ge v3, v15, :cond_4

    aget v16, v14, v3

    move-object/from16 v17, v2

    .line 112
    invoke-static/range {v16 .. v16}, Landroid/app/AppOpsManager;->opToPermission(I)Ljava/lang/String;

    move-result-object v2

    move/from16 v16, v4

    .line 113
    invoke-virtual {v1, v2, v11, v13}, Landroid/content/pm/PackageManager;->getPermissionFlags(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)I

    move-result v4

    move-object/from16 v18, v1

    .line 114
    iget-object v1, v0, Lcom/android/settingslib/location/RecentLocationAccesses;->mContext:Landroid/content/Context;

    move-object/from16 v19, v8

    const/4 v8, -0x1

    invoke-static {v1, v2, v8, v12, v11}, Landroid/content/PermissionChecker;->checkPermission(Landroid/content/Context;Ljava/lang/String;IILjava/lang/String;)I

    move-result v1

    if-nez v1, :cond_2

    and-int/lit16 v1, v4, 0x100

    if-nez v1, :cond_3

    goto :goto_3

    :cond_2
    and-int/lit16 v1, v4, 0x200

    if-nez v1, :cond_3

    :goto_3
    const/4 v3, 0x0

    goto :goto_4

    :cond_3
    add-int/lit8 v3, v3, 0x1

    move/from16 v4, v16

    move-object/from16 v2, v17

    move-object/from16 v1, v18

    move-object/from16 v8, v19

    goto :goto_2

    :cond_4
    move-object/from16 v18, v1

    move-object/from16 v17, v2

    move/from16 v16, v4

    move-object/from16 v19, v8

    const/4 v3, 0x1

    :goto_4
    if-eqz v3, :cond_5

    .line 130
    invoke-direct {v0, v6, v7, v10}, Lcom/android/settingslib/location/RecentLocationAccesses;->getAccessFromOps(JLandroid/app/AppOpsManager$PackageOps;)Lcom/android/settingslib/location/RecentLocationAccesses$Access;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 132
    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    :goto_5
    add-int/lit8 v9, v9, 0x1

    move/from16 v4, v16

    move-object/from16 v2, v17

    move-object/from16 v1, v18

    move-object/from16 v8, v19

    goto :goto_1

    :cond_6
    return-object v5
.end method

.method public getAppListSorted()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/settingslib/location/RecentLocationAccesses$Access;",
            ">;"
        }
    .end annotation

    .line 140
    invoke-virtual {p0}, Lcom/android/settingslib/location/RecentLocationAccesses;->getAppList()Ljava/util/List;

    move-result-object v0

    .line 142
    new-instance v1, Lcom/android/settingslib/location/RecentLocationAccesses$1;

    invoke-direct {v1, p0}, Lcom/android/settingslib/location/RecentLocationAccesses$1;-><init>(Lcom/android/settingslib/location/RecentLocationAccesses;)V

    invoke-static {v1}, Ljava/util/Collections;->reverseOrder(Ljava/util/Comparator;)Ljava/util/Comparator;

    move-result-object p0

    invoke-static {v0, p0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-object v0
.end method
