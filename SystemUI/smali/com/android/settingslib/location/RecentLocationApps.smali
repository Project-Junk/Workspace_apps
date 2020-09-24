.class public Lcom/android/settingslib/location/RecentLocationApps;
.super Ljava/lang/Object;
.source "RecentLocationApps.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settingslib/location/RecentLocationApps$Request;
    }
.end annotation


# static fields
.field static final ANDROID_SYSTEM_PACKAGE_NAME:Ljava/lang/String; = "android"
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field static final LOCATION_PERMISSION_OPS:[I
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field static final LOCATION_REQUEST_OPS:[I
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field private static final RECENT_TIME_INTERVAL_MILLIS:J = 0x5265c00L

.field private static final TAG:Ljava/lang/String; = "RecentLocationApps"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mDrawableFactory:Landroid/util/IconDrawableFactory;

.field private final mPackageManager:Landroid/content/pm/PackageManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x2

    .line 53
    new-array v1, v0, [I

    fill-array-data v1, :array_0

    sput-object v1, Lcom/android/settingslib/location/RecentLocationApps;->LOCATION_REQUEST_OPS:[I

    .line 58
    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/settingslib/location/RecentLocationApps;->LOCATION_PERMISSION_OPS:[I

    return-void

    :array_0
    .array-data 4
        0x29
        0x2a
    .end array-data

    :array_1
    .array-data 4
        0x1
        0x0
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    iput-object p1, p0, Lcom/android/settingslib/location/RecentLocationApps;->mContext:Landroid/content/Context;

    .line 69
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settingslib/location/RecentLocationApps;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 70
    invoke-static {p1}, Landroid/util/IconDrawableFactory;->newInstance(Landroid/content/Context;)Landroid/util/IconDrawableFactory;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settingslib/location/RecentLocationApps;->mDrawableFactory:Landroid/util/IconDrawableFactory;

    return-void
.end method

.method private getRequestFromOps(JLandroid/app/AppOpsManager$PackageOps;)Lcom/android/settingslib/location/RecentLocationApps$Request;
    .locals 15

    move-object v0, p0

    const-string v1, ", userId "

    .line 185
    invoke-virtual/range {p3 .. p3}, Landroid/app/AppOpsManager$PackageOps;->getPackageName()Ljava/lang/String;

    move-result-object v12

    .line 186
    invoke-virtual/range {p3 .. p3}, Landroid/app/AppOpsManager$PackageOps;->getOps()Ljava/util/List;

    move-result-object v2

    const-wide/32 v3, 0x5265c00

    sub-long v3, p1, v3

    .line 192
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    move-wide v9, v6

    move v7, v5

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/AppOpsManager$OpEntry;

    .line 193
    invoke-virtual {v6}, Landroid/app/AppOpsManager$OpEntry;->isRunning()Z

    move-result v8

    const/4 v11, 0x1

    if-nez v8, :cond_1

    invoke-virtual {v6}, Landroid/app/AppOpsManager$OpEntry;->getTime()J

    move-result-wide v13

    cmp-long v8, v13, v3

    if-ltz v8, :cond_0

    .line 194
    :cond_1
    invoke-virtual {v6}, Landroid/app/AppOpsManager$OpEntry;->getTime()J

    move-result-wide v8

    invoke-virtual {v6}, Landroid/app/AppOpsManager$OpEntry;->getDuration()J

    move-result-wide v13

    add-long v9, v8, v13

    .line 195
    invoke-virtual {v6}, Landroid/app/AppOpsManager$OpEntry;->getOp()I

    move-result v6

    const/16 v8, 0x29

    if-eq v6, v8, :cond_3

    const/16 v8, 0x2a

    if-eq v6, v8, :cond_2

    goto :goto_0

    :cond_2
    move v7, v11

    goto :goto_0

    :cond_3
    move v5, v11

    goto :goto_0

    :cond_4
    const/4 v13, 0x0

    if-nez v7, :cond_6

    if-nez v5, :cond_6

    .line 209
    sget-object v0, Lcom/android/settingslib/location/RecentLocationApps;->TAG:Ljava/lang/String;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 210
    sget-object v0, Lcom/android/settingslib/location/RecentLocationApps;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " hadn\'t used location within the time interval."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    return-object v13

    .line 216
    :cond_6
    invoke-virtual/range {p3 .. p3}, Landroid/app/AppOpsManager$PackageOps;->getUid()I

    move-result v2

    .line 217
    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v14

    .line 221
    :try_start_0
    iget-object v2, v0, Lcom/android/settingslib/location/RecentLocationApps;->mPackageManager:Landroid/content/pm/PackageManager;

    const/16 v3, 0x80

    invoke-virtual {v2, v12, v3, v14}, Landroid/content/pm/PackageManager;->getApplicationInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    if-nez v2, :cond_7

    .line 224
    sget-object v0, Lcom/android/settingslib/location/RecentLocationApps;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Null application info retrieved for package "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v13

    .line 229
    :cond_7
    new-instance v4, Landroid/os/UserHandle;

    invoke-direct {v4, v14}, Landroid/os/UserHandle;-><init>(I)V

    .line 230
    iget-object v3, v0, Lcom/android/settingslib/location/RecentLocationApps;->mDrawableFactory:Landroid/util/IconDrawableFactory;

    invoke-virtual {v3, v2, v14}, Landroid/util/IconDrawableFactory;->getBadgedIcon(Landroid/content/pm/ApplicationInfo;I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 231
    iget-object v3, v0, Lcom/android/settingslib/location/RecentLocationApps;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v3, v2}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v6

    .line 232
    iget-object v0, v0, Lcom/android/settingslib/location/RecentLocationApps;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, v6, v4}, Landroid/content/pm/PackageManager;->getUserBadgedLabel(Ljava/lang/CharSequence;Landroid/os/UserHandle;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 233
    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_8

    move-object v8, v13

    goto :goto_1

    :cond_8
    move-object v8, v0

    .line 238
    :goto_1
    new-instance v0, Lcom/android/settingslib/location/RecentLocationApps$Request;

    const/4 v11, 0x0

    move-object v2, v0

    move-object v3, v12

    invoke-direct/range {v2 .. v11}, Lcom/android/settingslib/location/RecentLocationApps$Request;-><init>(Ljava/lang/String;Landroid/os/UserHandle;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;ZLjava/lang/CharSequence;JLcom/android/settingslib/location/RecentLocationApps$1;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v13, v0

    goto :goto_2

    .line 241
    :catch_0
    sget-object v0, Lcom/android/settingslib/location/RecentLocationApps;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "package name not found for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    return-object v13
.end method


# virtual methods
.method public getAppList(Z)Ljava/util/List;
    .locals 28
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List<",
            "Lcom/android/settingslib/location/RecentLocationApps$Request;",
            ">;"
        }
    .end annotation

    move-object/from16 v1, p0

    .line 79
    iget-object v0, v1, Lcom/android/settingslib/location/RecentLocationApps;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 81
    iget-object v0, v1, Lcom/android/settingslib/location/RecentLocationApps;->mContext:Landroid/content/Context;

    const-string v3, "appops"

    .line 82
    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    .line 83
    sget-object v3, Lcom/android/settingslib/location/RecentLocationApps;->LOCATION_REQUEST_OPS:[I

    invoke-virtual {v0, v3}, Landroid/app/AppOpsManager;->getPackagesForOps([I)Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 85
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    move v5, v0

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    .line 88
    :goto_0
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 89
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    .line 90
    iget-object v0, v1, Lcom/android/settingslib/location/RecentLocationApps;->mContext:Landroid/content/Context;

    const-string v9, "user"

    invoke-virtual {v0, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    .line 91
    invoke-virtual {v0}, Landroid/os/UserManager;->getUserProfiles()Ljava/util/List;

    move-result-object v9

    const/4 v10, 0x0

    :goto_1
    if-ge v10, v5, :cond_9

    .line 94
    invoke-interface {v3, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Landroid/app/AppOpsManager$PackageOps;

    .line 95
    invoke-virtual {v11}, Landroid/app/AppOpsManager$PackageOps;->getPackageName()Ljava/lang/String;

    move-result-object v12

    .line 96
    invoke-virtual {v11}, Landroid/app/AppOpsManager$PackageOps;->getUid()I

    move-result v13

    .line 97
    invoke-static {v13}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    move-result-object v14

    .line 100
    invoke-interface {v9, v14}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    move-object/from16 v21, v2

    move-object/from16 v18, v3

    move/from16 v20, v5

    move-object/from16 v22, v9

    const/16 v17, 0x0

    goto/16 :goto_d

    :cond_1
    if-nez p1, :cond_7

    .line 108
    sget-object v15, Lcom/android/settingslib/location/RecentLocationApps;->LOCATION_PERMISSION_OPS:[I

    array-length v4, v15

    move-object/from16 v18, v3

    const/4 v3, 0x0

    :goto_2
    if-ge v3, v4, :cond_6

    aget v0, v15, v3

    move/from16 v19, v4

    .line 109
    invoke-static {v0}, Landroid/app/AppOpsManager;->opToPermission(I)Ljava/lang/String;

    move-result-object v4

    move/from16 v20, v5

    .line 110
    invoke-virtual {v2, v4, v12, v14}, Landroid/content/pm/PackageManager;->getPermissionFlags(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)I

    move-result v5

    move-object/from16 v21, v2

    const/4 v2, -0x1

    .line 113
    :try_start_0
    iget-object v0, v1, Lcom/android/settingslib/location/RecentLocationApps;->mContext:Landroid/content/Context;

    invoke-static {v0, v4, v2, v13, v12}, Landroid/content/PermissionChecker;->checkPermission(Landroid/content/Context;Ljava/lang/String;IILjava/lang/String;)I

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    goto :goto_3

    :cond_2
    const/4 v0, 0x0

    .line 115
    :goto_3
    sget-object v2, Lcom/android/settingslib/location/RecentLocationApps;->TAG:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_2

    move-object/from16 v22, v9

    :try_start_1
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_1
    .catch Ljava/lang/Error; {:try_start_1 .. :try_end_1} :catch_1

    move-object/from16 v23, v14

    :try_start_2
    const-string v14, "use checkPermission:"

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v2, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Error; {:try_start_2 .. :try_end_2} :catch_0

    const/4 v14, 0x1

    const/16 v17, 0x0

    goto/16 :goto_9

    :catch_0
    move-exception v0

    goto :goto_5

    :catch_1
    move-exception v0

    goto :goto_4

    :catch_2
    move-exception v0

    move-object/from16 v22, v9

    :goto_4
    move-object/from16 v23, v14

    .line 117
    :goto_5
    sget-object v2, Lcom/android/settingslib/location/RecentLocationApps;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "no such method error:"

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Error;->getMessage()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v2, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    invoke-virtual {v0}, Ljava/lang/Error;->printStackTrace()V

    .line 119
    const-class v0, Landroid/content/PermissionChecker;

    :try_start_3
    const-string v2, "checkPermissionForDataDelivery"

    const/4 v9, 0x5

    .line 121
    new-array v14, v9, [Ljava/lang/Class;

    const-class v24, Landroid/content/Context;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_6

    const/16 v17, 0x0

    :try_start_4
    aput-object v24, v14, v17
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_5

    :try_start_5
    const-class v24, Ljava/lang/String;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_6

    const/16 v16, 0x1

    :try_start_6
    aput-object v24, v14, v16
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    :try_start_7
    sget-object v24, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/16 v25, 0x2

    aput-object v24, v14, v25

    sget-object v24, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/16 v26, 0x3

    aput-object v24, v14, v26

    const-class v24, Ljava/lang/String;

    const/16 v27, 0x4

    aput-object v24, v14, v27

    invoke-virtual {v0, v2, v14}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v2, 0x0

    .line 123
    new-array v9, v9, [Ljava/lang/Object;

    iget-object v14, v1, Lcom/android/settingslib/location/RecentLocationApps;->mContext:Landroid/content/Context;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_6

    const/16 v17, 0x0

    :try_start_8
    aput-object v14, v9, v17
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_5

    const/4 v14, 0x1

    :try_start_9
    aput-object v4, v9, v14

    const/4 v4, -0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v9, v25

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v9, v26

    aput-object v12, v9, v27

    invoke-virtual {v0, v2, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 124
    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_3

    move v0, v14

    goto :goto_6

    :cond_3
    move/from16 v0, v17

    .line 125
    :goto_6
    sget-object v2, Lcom/android/settingslib/location/RecentLocationApps;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "use checkPermissionForDataDelivery:"

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_3

    goto :goto_9

    :catch_3
    move-exception v0

    goto :goto_8

    :catch_4
    move-exception v0

    move/from16 v14, v16

    goto :goto_7

    :catch_5
    move-exception v0

    const/4 v14, 0x1

    goto :goto_8

    :catch_6
    move-exception v0

    const/4 v14, 0x1

    :goto_7
    const/16 v17, 0x0

    .line 127
    :goto_8
    sget-object v2, Lcom/android/settingslib/location/RecentLocationApps;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "exception:"

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move v0, v14

    :goto_9
    if-eqz v0, :cond_4

    and-int/lit16 v0, v5, 0x100

    if-nez v0, :cond_5

    goto :goto_a

    :cond_4
    and-int/lit16 v0, v5, 0x200

    if-nez v0, :cond_5

    :goto_a
    move/from16 v14, v17

    goto :goto_c

    :cond_5
    add-int/lit8 v3, v3, 0x1

    move/from16 v4, v19

    move/from16 v5, v20

    move-object/from16 v2, v21

    move-object/from16 v9, v22

    move-object/from16 v14, v23

    goto/16 :goto_2

    :cond_6
    move-object/from16 v21, v2

    goto :goto_b

    :cond_7
    move-object/from16 v21, v2

    move-object/from16 v18, v3

    :goto_b
    move/from16 v20, v5

    move-object/from16 v22, v9

    const/4 v14, 0x1

    const/16 v17, 0x0

    :goto_c
    if-eqz v14, :cond_8

    .line 149
    invoke-direct {v1, v7, v8, v11}, Lcom/android/settingslib/location/RecentLocationApps;->getRequestFromOps(JLandroid/app/AppOpsManager$PackageOps;)Lcom/android/settingslib/location/RecentLocationApps$Request;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 151
    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_8
    :goto_d
    add-int/lit8 v10, v10, 0x1

    move-object/from16 v3, v18

    move/from16 v5, v20

    move-object/from16 v2, v21

    move-object/from16 v9, v22

    goto/16 :goto_1

    :cond_9
    return-object v6
.end method

.method public getAppListSorted(Z)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List<",
            "Lcom/android/settingslib/location/RecentLocationApps$Request;",
            ">;"
        }
    .end annotation

    .line 165
    invoke-virtual {p0, p1}, Lcom/android/settingslib/location/RecentLocationApps;->getAppList(Z)Ljava/util/List;

    move-result-object p1

    .line 167
    new-instance v0, Lcom/android/settingslib/location/RecentLocationApps$1;

    invoke-direct {v0, p0}, Lcom/android/settingslib/location/RecentLocationApps$1;-><init>(Lcom/android/settingslib/location/RecentLocationApps;)V

    invoke-static {v0}, Ljava/util/Collections;->reverseOrder(Ljava/util/Comparator;)Ljava/util/Comparator;

    move-result-object p0

    invoke-static {p1, p0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-object p1
.end method
