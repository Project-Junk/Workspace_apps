.class public final Lcom/coloros/settings/feature/display/screenoffreminder/notification/c;
.super Ljava/lang/Object;
.source "Util.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coloros/settings/feature/display/screenoffreminder/notification/c$a;
    }
.end annotation


# static fields
.field public static final a:[Ljava/lang/String;


# instance fields
.field private b:Landroid/app/INotificationManager;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const-string v0, "com.android.providers.downloads"

    const-string v1, "com.coloros.oppoguardelf"

    const-string v2, "com.android.server.telecom"

    const-string v3, "com.android.systemui"

    const-string v4, "com.google.android.setupwizard"

    .line 52
    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/coloros/settings/feature/display/screenoffreminder/notification/c;->a:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "notification"

    .line 54
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/INotificationManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/INotificationManager;

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/settings/feature/display/screenoffreminder/notification/c;->b:Landroid/app/INotificationManager;

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    .line 45
    invoke-direct {p0}, Lcom/coloros/settings/feature/display/screenoffreminder/notification/c;-><init>()V

    return-void
.end method

.method public static a(FLandroid/content/Context;)F
    .locals 1

    .line 265
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    const/4 v0, 0x1

    invoke-static {v0, p0, p1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p0

    return p0
.end method

.method private static a(Ljava/lang/String;Landroid/content/Context;)I
    .locals 2

    .line 237
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    const/4 v0, 0x0

    .line 240
    :try_start_0
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-virtual {p1, p0, v0, v1}, Landroid/content/pm/PackageManager;->getApplicationInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 244
    iget p0, p0, Landroid/content/pm/ApplicationInfo;->uid:I

    return p0

    :catch_0
    const/16 p0, -0x2710

    return p0
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 250
    :try_start_0
    new-instance v0, Landroid/content/pm/OppoPackageManager;

    invoke-direct {v0, p0}, Landroid/content/pm/OppoPackageManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Landroid/content/pm/OppoPackageManager;->getApplicationIconCache(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 252
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "getAppIcon-e:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Util"

    invoke-static {v0, p1}, Lcom/coloros/settings/utils/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_0

    const p1, 0x1080093

    .line 11261
    invoke-virtual {p0, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    :cond_0
    return-object p1
.end method

.method public static a()Lcom/coloros/settings/feature/display/screenoffreminder/notification/c;
    .locals 1

    .line 64
    invoke-static {}, Lcom/coloros/settings/feature/display/screenoffreminder/notification/c$a;->a()Lcom/coloros/settings/feature/display/screenoffreminder/notification/c;

    move-result-object v0

    return-object v0
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 223
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p2

    .line 226
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, p2}, Landroid/content/pm/PackageManager;->getPackageInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p1, :cond_0

    .line 231
    iget-object p1, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, ""

    return-object p0

    .line 228
    :catch_0
    new-instance p0, Ljava/lang/Exception;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "APP "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " not exist"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static a(Landroid/content/Context;)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Lcom/coloros/settings/feature/display/screenoffreminder/notification/a;",
            ">;"
        }
    .end annotation

    const-string v0, "Util"

    .line 98
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    .line 101
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "content://com.nearme.instant.setting/notification"

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v3, :cond_4

    .line 103
    :try_start_1
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1168
    :cond_0
    new-instance v4, Lcom/coloros/settings/feature/display/screenoffreminder/notification/a;

    invoke-direct {v4}, Lcom/coloros/settings/feature/display/screenoffreminder/notification/a;-><init>()V

    const-string v5, "pkg"

    .line 1169
    invoke-interface {v3, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v3, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 2060
    iput-object v5, v4, Lcom/coloros/settings/feature/display/screenoffreminder/notification/a;->b:Ljava/lang/String;

    const-string v5, "name"

    .line 1170
    invoke-interface {v3, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v3, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 2064
    iput-object v5, v4, Lcom/coloros/settings/feature/display/screenoffreminder/notification/a;->a:Ljava/lang/String;

    const-string v5, "icon"

    .line 1171
    invoke-interface {v3, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v3, v5}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v5

    const/4 v6, 0x0

    if-eqz v5, :cond_1

    .line 2184
    array-length v7, v5

    invoke-static {v5, v6, v7}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 2185
    new-instance v7, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v7, v5}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    goto :goto_0

    :cond_1
    move-object v7, v2

    :goto_0
    const-string v5, "notify"

    .line 1172
    invoke-interface {v3, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v3, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    const/4 v8, 0x1

    if-ne v5, v8, :cond_2

    move v6, v8

    .line 3044
    :cond_2
    iput-boolean v6, v4, Lcom/coloros/settings/feature/display/screenoffreminder/notification/a;->e:Z

    if-eqz v7, :cond_3

    .line 3068
    iput-object v7, v4, Lcom/coloros/settings/feature/display/screenoffreminder/notification/a;->c:Landroid/graphics/drawable/Drawable;

    goto :goto_1

    :cond_3
    const v5, 0x1080093

    .line 3261
    invoke-virtual {p0, v5}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 4068
    iput-object v5, v4, Lcom/coloros/settings/feature/display/screenoffreminder/notification/a;->c:Landroid/graphics/drawable/Drawable;

    :goto_1
    const-string v5, "getSmallAppList-smallApp:"

    .line 106
    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/coloros/settings/utils/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 110
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v4, :cond_0

    goto :goto_2

    :catchall_0
    move-exception p0

    goto :goto_5

    :catch_0
    move-exception p0

    move-object v2, v3

    goto :goto_3

    :cond_4
    :goto_2
    if-eqz v3, :cond_5

    .line 116
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    goto :goto_4

    :catchall_1
    move-exception p0

    move-object v3, v2

    goto :goto_5

    :catch_1
    move-exception p0

    .line 113
    :goto_3
    :try_start_2
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "getSmallAppList-e:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/coloros/settings/utils/aa;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v2, :cond_5

    .line 116
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_5
    :goto_4
    return-object v1

    :goto_5
    if-eqz v3, :cond_6

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 118
    :cond_6
    throw p0
.end method

.method public static a(Landroid/content/Context;Ljava/util/List;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/coloros/settings/feature/display/screenoffreminder/notification/a;",
            ">;"
        }
    .end annotation

    .line 123
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 124
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 126
    :try_start_0
    new-instance v2, Lcom/coloros/settings/feature/display/screenoffreminder/notification/a;

    invoke-direct {v2}, Lcom/coloros/settings/feature/display/screenoffreminder/notification/a;-><init>()V

    .line 127
    invoke-static {v1, p0}, Lcom/coloros/settings/feature/display/screenoffreminder/notification/c;->a(Ljava/lang/String;Landroid/content/Context;)I

    move-result v3

    invoke-static {p0, v1, v3}, Lcom/coloros/settings/feature/display/screenoffreminder/notification/c;->a(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    .line 128
    invoke-static {p0, v1}, Lcom/coloros/settings/feature/display/screenoffreminder/notification/c;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 5060
    iput-object v1, v2, Lcom/coloros/settings/feature/display/screenoffreminder/notification/a;->b:Ljava/lang/String;

    .line 5064
    iput-object v3, v2, Lcom/coloros/settings/feature/display/screenoffreminder/notification/a;->a:Ljava/lang/String;

    .line 5068
    iput-object v4, v2, Lcom/coloros/settings/feature/display/screenoffreminder/notification/a;->c:Landroid/graphics/drawable/Drawable;

    .line 132
    invoke-static {v1, p0}, Lcom/coloros/settings/feature/display/screenoffreminder/notification/c;->a(Ljava/lang/String;Landroid/content/Context;)I

    move-result v1

    .line 6040
    iput v1, v2, Lcom/coloros/settings/feature/display/screenoffreminder/notification/a;->d:I

    .line 6064
    invoke-static {}, Lcom/coloros/settings/feature/display/screenoffreminder/notification/c$a;->a()Lcom/coloros/settings/feature/display/screenoffreminder/notification/c;

    move-result-object v1

    .line 7048
    iget-object v3, v2, Lcom/coloros/settings/feature/display/screenoffreminder/notification/a;->b:Ljava/lang/String;

    .line 8036
    iget v4, v2, Lcom/coloros/settings/feature/display/screenoffreminder/notification/a;->d:I

    .line 134
    invoke-direct {v1, v3, v4}, Lcom/coloros/settings/feature/display/screenoffreminder/notification/c;->a(Ljava/lang/String;I)Z

    move-result v1

    .line 8044
    iput-boolean v1, v2, Lcom/coloros/settings/feature/display/screenoffreminder/notification/a;->e:Z

    .line 135
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 137
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "convertSpecialApp-e:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Util"

    invoke-static {v2, v1}, Lcom/coloros/settings/utils/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static a(Landroid/content/pm/PackageManager;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/PackageManager;",
            ")",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .line 193
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v1, "android.intent.category.LAUNCHER"

    .line 194
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const/4 v1, 0x0

    .line 195
    invoke-virtual {p0, v0, v1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 197
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "findLauncherApps-e:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "Util"

    invoke-static {v0, p0}, Lcom/coloros/settings/utils/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0
.end method

.method public static a(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;)V"
        }
    .end annotation

    if-eqz p0, :cond_4

    .line 203
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_0

    goto :goto_1

    .line 206
    :cond_0
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 207
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 208
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    .line 209
    iget-object v4, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v4, :cond_1

    .line 211
    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 212
    invoke-virtual {v0, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 213
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 215
    :cond_2
    invoke-virtual {v0, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 219
    :cond_3
    invoke-interface {p0, v1}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    :cond_4
    :goto_1
    return-void
.end method

.method private a(Ljava/lang/String;I)Z
    .locals 1

    .line 271
    :try_start_0
    iget-object v0, p0, Lcom/coloros/settings/feature/display/screenoffreminder/notification/c;->b:Landroid/app/INotificationManager;

    invoke-interface {v0, p1, p2}, Landroid/app/INotificationManager;->areNotificationsEnabledForPackage(Ljava/lang/String;I)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    const/4 p1, 0x0

    return p1
.end method

.method public static b(Landroid/content/Context;Ljava/util/List;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Landroid/content/pm/ApplicationInfo;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/coloros/settings/feature/display/screenoffreminder/notification/a;",
            ">;"
        }
    .end annotation

    .line 144
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 146
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ApplicationInfo;

    .line 148
    :try_start_0
    new-instance v2, Lcom/coloros/settings/feature/display/screenoffreminder/notification/a;

    invoke-direct {v2}, Lcom/coloros/settings/feature/display/screenoffreminder/notification/a;-><init>()V

    .line 149
    iget-object v3, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 150
    iget v4, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 152
    invoke-static {p0, v3, v4}, Lcom/coloros/settings/feature/display/screenoffreminder/notification/c;->a(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    .line 153
    invoke-static {p0, v3}, Lcom/coloros/settings/feature/display/screenoffreminder/notification/c;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 8060
    iput-object v3, v2, Lcom/coloros/settings/feature/display/screenoffreminder/notification/a;->b:Ljava/lang/String;

    .line 8064
    iput-object v4, v2, Lcom/coloros/settings/feature/display/screenoffreminder/notification/a;->a:Ljava/lang/String;

    .line 8068
    iput-object v5, v2, Lcom/coloros/settings/feature/display/screenoffreminder/notification/a;->c:Landroid/graphics/drawable/Drawable;

    .line 157
    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 9040
    iput v1, v2, Lcom/coloros/settings/feature/display/screenoffreminder/notification/a;->d:I

    .line 9064
    invoke-static {}, Lcom/coloros/settings/feature/display/screenoffreminder/notification/c$a;->a()Lcom/coloros/settings/feature/display/screenoffreminder/notification/c;

    move-result-object v1

    .line 10048
    iget-object v3, v2, Lcom/coloros/settings/feature/display/screenoffreminder/notification/a;->b:Ljava/lang/String;

    .line 11036
    iget v4, v2, Lcom/coloros/settings/feature/display/screenoffreminder/notification/a;->d:I

    .line 158
    invoke-direct {v1, v3, v4}, Lcom/coloros/settings/feature/display/screenoffreminder/notification/c;->a(Ljava/lang/String;I)Z

    move-result v1

    .line 11044
    iput-boolean v1, v2, Lcom/coloros/settings/feature/display/screenoffreminder/notification/a;->e:Z

    .line 159
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 161
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "convertAodNotificationInfo-e:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Util"

    invoke-static {v2, v1}, Lcom/coloros/settings/utils/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static b(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/coloros/settings/feature/display/screenoffreminder/notification/a;",
            ">;)V"
        }
    .end annotation

    if-eqz p0, :cond_2

    .line 278
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_0

    goto :goto_1

    .line 281
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    .line 282
    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 283
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coloros/settings/feature/display/screenoffreminder/notification/a;

    .line 12032
    iget-boolean v0, v0, Lcom/coloros/settings/feature/display/screenoffreminder/notification/a;->e:Z

    if-nez v0, :cond_1

    .line 285
    invoke-interface {p0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method
