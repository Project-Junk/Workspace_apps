.class public Lcom/coloros/settings/feature/language/localepicker/RegionPickerFragment;
.super Lcom/coloros/settings/feature/language/localepicker/ColorLocalePicker;
.source "RegionPickerFragment.java"

# interfaces
.implements Lcom/coloros/settings/feature/language/localepicker/c$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coloros/settings/feature/language/localepicker/RegionPickerFragment$b;,
        Lcom/coloros/settings/feature/language/localepicker/RegionPickerFragment$a;
    }
.end annotation


# static fields
.field private static f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/coloros/settings/feature/language/region/d;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private g:Z

.field private h:Z

.field private i:Z

.field private j:Landroid/app/Activity;

.field private k:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/coloros/settings/feature/language/region/d;",
            ">;"
        }
    .end annotation
.end field

.field private l:Lcom/coloros/settings/feature/language/localepicker/RegionPickerFragment$a;

.field private m:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 64
    invoke-direct {p0}, Lcom/coloros/settings/feature/language/localepicker/ColorLocalePicker;-><init>()V

    const/4 v0, 0x1

    .line 89
    iput-boolean v0, p0, Lcom/coloros/settings/feature/language/localepicker/RegionPickerFragment;->h:Z

    .line 93
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/coloros/settings/feature/language/localepicker/RegionPickerFragment;->k:Ljava/util/List;

    return-void
.end method

.method static synthetic a(Lcom/coloros/settings/feature/language/localepicker/RegionPickerFragment;Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    .line 18560
    invoke-static {p1}, Lcom/coloros/settings/utils/x;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 18561
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    const-string v2, "other"

    if-eqz v1, :cond_1

    .line 18570
    invoke-virtual {p0, p1}, Lcom/coloros/settings/feature/language/localepicker/RegionPickerFragment;->b(Landroid/content/Context;)V

    .line 18571
    invoke-static {p1}, Lcom/coloros/settings/utils/x;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    .line 18572
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    move-object v0, v2

    goto :goto_0

    :cond_0
    move-object v0, p0

    :cond_1
    :goto_0
    const-string p0, "persist.sys.oppo.region"

    const-string p1, "CN"

    .line 19057
    invoke-static {p0, p1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 18565
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, "US"

    .line 18566
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    return-object p0

    :cond_3
    :goto_1
    return-object v0
.end method

.method static synthetic a(Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 64
    sput-object p0, Lcom/coloros/settings/feature/language/localepicker/RegionPickerFragment;->f:Ljava/util/List;

    return-object p0
.end method

.method public static a(Landroid/content/Context;)V
    .locals 3

    .line 497
    invoke-static {p0}, Lcom/coloros/settings/feature/language/region/e;->a(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    .line 498
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    const-string v1, "persist.sys.oppo.region"

    const-string v2, "CN"

    .line 501
    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 502
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/coloros/settings/feature/language/region/d;

    if-eqz v2, :cond_1

    .line 12051
    iget-object v2, v2, Lcom/coloros/settings/feature/language/region/d;->b:Ljava/lang/String;

    .line 505
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 506
    invoke-static {p0}, Lcom/coloros/settings/feature/language/localepicker/RegionPickerFragment;->c(Landroid/content/Context;)V

    :cond_2
    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    if-eqz p0, :cond_1

    .line 515
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 518
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "region"

    .line 519
    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "20012"

    const-string v1, "region_select"

    .line 520
    invoke-static {p0, p1, v1, v0}, Lcom/coloros/settings/utils/aj;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private static a(Lcom/coloros/settings/feature/language/region/d;Landroid/content/Context;)V
    .locals 1

    const-string v0, "alarm"

    .line 286
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/AlarmManager;

    if-eqz p1, :cond_0

    .line 7083
    iget-object p0, p0, Lcom/coloros/settings/feature/language/region/d;->f:Ljava/lang/String;

    .line 288
    invoke-virtual {p1, p0}, Landroid/app/AlarmManager;->setTimeZone(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private static a(Lcom/coloros/settings/feature/language/region/d;Landroid/content/Context;Z)V
    .locals 5

    .line 259
    sget-boolean v0, Lcom/coloros/settings/a;->a:Z

    const-string v1, "RegionPickerFragment"

    if-nez v0, :cond_0

    const-string p0, "regionChanged in CN, return"

    .line 260
    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 263
    :cond_0
    invoke-static {p1}, Lcom/coloros/settings/utils/s;->b(Landroid/content/Context;)V

    .line 264
    invoke-static {p0, p1}, Lcom/coloros/settings/feature/language/localepicker/RegionPickerFragment;->a(Lcom/coloros/settings/feature/language/region/d;Landroid/content/Context;)V

    .line 265
    invoke-static {p0, p1, p2}, Lcom/coloros/settings/feature/language/localepicker/RegionPickerFragment;->b(Lcom/coloros/settings/feature/language/region/d;Landroid/content/Context;Z)V

    .line 266
    invoke-static {p0, p1}, Lcom/coloros/settings/feature/language/localepicker/RegionPickerFragment;->b(Lcom/coloros/settings/feature/language/region/d;Landroid/content/Context;)V

    .line 5051
    iget-object v0, p0, Lcom/coloros/settings/feature/language/region/d;->b:Ljava/lang/String;

    const-string v2, "persist.sys.oppo.region"

    .line 267
    invoke-static {v2, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 268
    invoke-static {p1}, Lcom/coloros/settings/feature/language/localepicker/RegionPickerFragment;->c(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 271
    :try_start_0
    invoke-static {}, Lcom/coloros/b/b;->a()Landroid/content/pm/OppoPackageManager;

    move-result-object v2

    .line 6051
    iget-object v3, p0, Lcom/coloros/settings/feature/language/region/d;->b:Ljava/lang/String;

    .line 271
    invoke-virtual {v2, v3}, Landroid/content/pm/OppoPackageManager;->loadRegionFeature(Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 273
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Error occur, e = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    if-nez v0, :cond_1

    const-string v0, "loadRegionFeature fail !"

    .line 276
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/4 v0, 0x1

    const-string v2, "android.settings.OPPO_REGION_CHANGED"

    .line 278
    invoke-static {v2, p1, v0, p2}, Lcom/coloros/settings/feature/language/localepicker/RegionPickerFragment;->a(Ljava/lang/String;Landroid/content/Context;ZZ)V

    .line 279
    invoke-static {p0}, Lcom/coloros/settings/utils/x;->b(Lcom/coloros/settings/feature/language/region/d;)V

    .line 281
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "region:"

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 7051
    iget-object p0, p0, Lcom/coloros/settings/feature/language/region/d;->b:Ljava/lang/String;

    .line 281
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static a(Ljava/lang/String;Landroid/content/Context;)V
    .locals 4

    .line 240
    sget-object v0, Lcom/coloros/settings/feature/language/localepicker/RegionPickerFragment;->f:Ljava/util/List;

    if-nez v0, :cond_0

    .line 241
    invoke-static {p1}, Lcom/coloros/settings/feature/language/localepicker/RegionPickerFragment;->e(Landroid/content/Context;)V

    .line 243
    :cond_0
    sget-object v0, Lcom/coloros/settings/feature/language/localepicker/RegionPickerFragment;->f:Ljava/util/List;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x0

    .line 244
    :goto_0
    sget-object v1, Lcom/coloros/settings/feature/language/localepicker/RegionPickerFragment;->f:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 245
    sget-object v1, Lcom/coloros/settings/feature/language/localepicker/RegionPickerFragment;->f:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/coloros/settings/feature/language/region/d;

    if-eqz v1, :cond_1

    .line 4051
    iget-object v2, v1, Lcom/coloros/settings/feature/language/region/d;->b:Ljava/lang/String;

    .line 248
    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 p0, 0x1

    .line 249
    invoke-static {v1, p1, p0}, Lcom/coloros/settings/feature/language/localepicker/RegionPickerFragment;->a(Lcom/coloros/settings/feature/language/region/d;Landroid/content/Context;Z)V

    .line 250
    invoke-static {p1, v2}, Lcom/coloros/settings/feature/language/localepicker/RegionPickerFragment;->a(Landroid/content/Context;Ljava/lang/String;)V

    return-void

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private static a(Ljava/lang/String;Landroid/content/Context;ZZ)V
    .locals 1

    .line 299
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    if-eqz p2, :cond_0

    const/high16 p2, 0x1000000

    .line 301
    invoke-virtual {v0, p2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :cond_0
    if-eqz p3, :cond_1

    const/4 p2, 0x1

    const-string p3, "setup_wizard_setting"

    .line 304
    invoke-virtual {v0, p3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 307
    :cond_1
    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 308
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "region changed:"

    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "RegionPickerFragment"

    invoke-static {p1, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method static synthetic a(Lcom/coloros/settings/feature/language/localepicker/RegionPickerFragment;)Z
    .locals 0

    .line 64
    iget-boolean p0, p0, Lcom/coloros/settings/feature/language/localepicker/RegionPickerFragment;->i:Z

    return p0
.end method

.method private static b(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    .line 353
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 359
    :try_start_0
    invoke-virtual {v0, p1, v1, v2}, Landroid/content/pm/PackageManager;->setApplicationEnabledSetting(Ljava/lang/String;II)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 365
    :catch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "is not exist!"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RegionPickerFragment"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    :goto_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "device_provisioned"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "com.heytap.market"

    .line 368
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 369
    invoke-static {p0}, Lcom/coloros/settings/feature/language/localepicker/RegionPickerFragment;->d(Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method private static b(Lcom/coloros/settings/feature/language/region/d;Landroid/content/Context;)V
    .locals 2

    .line 8181
    iget-object v0, p0, Lcom/coloros/settings/feature/language/region/d;->j:Ljava/lang/String;

    const-string v1, "MX"

    .line 312
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 313
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 p1, 0x0

    const-string v0, "sound_effects_enabled"

    invoke-static {p0, v0, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void

    .line 9181
    :cond_0
    iget-object v0, p0, Lcom/coloros/settings/feature/language/region/d;->j:Ljava/lang/String;

    const-string v1, "RO"

    .line 314
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 10181
    iget-object p0, p0, Lcom/coloros/settings/feature/language/region/d;->j:Ljava/lang/String;

    const-string v0, "MO"

    .line 315
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    .line 316
    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 v0, 0x1

    const-string v1, "auto_time"

    invoke-static {p0, v1, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 317
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string p1, "auto_time_zone"

    invoke-static {p0, p1, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_2
    return-void
.end method

.method private static b(Lcom/coloros/settings/feature/language/region/d;Landroid/content/Context;Z)V
    .locals 2

    .line 293
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 8075
    iget-object p0, p0, Lcom/coloros/settings/feature/language/region/d;->e:Ljava/lang/String;

    const-string v1, "time_12_24"

    .line 293
    invoke-static {v0, v1, p0}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    const-string p0, "android.settings.DATE_FORMAT_CHANGED"

    const/4 v0, 0x0

    .line 295
    invoke-static {p0, p1, v0, p2}, Lcom/coloros/settings/feature/language/localepicker/RegionPickerFragment;->a(Ljava/lang/String;Landroid/content/Context;ZZ)V

    return-void
.end method

.method static synthetic b(Lcom/coloros/settings/feature/language/localepicker/RegionPickerFragment;)Z
    .locals 1

    const/4 v0, 0x0

    .line 64
    iput-boolean v0, p0, Lcom/coloros/settings/feature/language/localepicker/RegionPickerFragment;->h:Z

    return v0
.end method

.method static synthetic c(Lcom/coloros/settings/feature/language/localepicker/RegionPickerFragment;)Ljava/util/List;
    .locals 0

    .line 64
    iget-object p0, p0, Lcom/coloros/settings/feature/language/localepicker/RegionPickerFragment;->k:Ljava/util/List;

    return-object p0
.end method

.method private static c(Landroid/content/Context;)V
    .locals 1

    .line 322
    sget-boolean v0, Lcom/coloros/settings/a;->a:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "com.coloros.screenrecorder"

    .line 327
    invoke-static {p0, v0}, Lcom/coloros/settings/feature/language/localepicker/RegionPickerFragment;->b(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic d(Lcom/coloros/settings/feature/language/localepicker/RegionPickerFragment;)Landroid/widget/TextView;
    .locals 0

    .line 64
    iget-object p0, p0, Lcom/coloros/settings/feature/language/localepicker/RegionPickerFragment;->m:Landroid/widget/TextView;

    return-object p0
.end method

.method private static d(Landroid/content/Context;)V
    .locals 2

    const-string v0, "activity"

    .line 374
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/ActivityManager;

    :try_start_0
    const-string v0, "com.oppo.launcher"

    const/4 v1, 0x0

    .line 377
    invoke-virtual {p0, v0, v1}, Landroid/app/ActivityManager;->clearApplicationUserData(Ljava/lang/String;Landroid/content/pm/IPackageDataObserver;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    const-string v0, "RegionPickerFragment"

    const-string v1, "clearApplicationUserData RemoteException="

    .line 379
    invoke-static {v0, v1, p0}, Lcom/coloros/settings/utils/aa;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method private static e(Landroid/content/Context;)V
    .locals 1

    .line 525
    sget-object v0, Lcom/coloros/settings/feature/language/localepicker/RegionPickerFragment;->f:Ljava/util/List;

    if-nez v0, :cond_0

    .line 526
    invoke-static {p0}, Lcom/coloros/settings/feature/language/region/e;->a(Landroid/content/Context;)Ljava/util/List;

    move-result-object p0

    sput-object p0, Lcom/coloros/settings/feature/language/localepicker/RegionPickerFragment;->f:Ljava/util/List;

    :cond_0
    return-void
.end method

.method static synthetic f()Ljava/util/List;
    .locals 1

    .line 64
    sget-object v0, Lcom/coloros/settings/feature/language/localepicker/RegionPickerFragment;->f:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 0

    return-void
.end method

.method public final a(Landroid/view/View;)V
    .locals 4

    .line 157
    invoke-virtual {p0}, Lcom/coloros/settings/feature/language/localepicker/RegionPickerFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    .line 158
    instance-of v1, v0, Lcom/coloros/settings/wizard/ColorWizardRegionPicker;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 159
    invoke-static {v0, p1, v2}, Lcom/coloros/settings/utils/al;->a(Landroid/app/Activity;Landroid/view/View;Z)V

    return-void

    .line 162
    :cond_0
    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    .line 164
    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    :cond_1
    const v0, 0x102000a

    .line 167
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    .line 169
    invoke-virtual {p0}, Lcom/coloros/settings/feature/language/localepicker/RegionPickerFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/coloros/settings/utils/al;->X(Landroid/content/Context;)Landroid/view/View;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;Ljava/lang/Object;Z)V

    const v0, 0x7f0a070a

    .line 171
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcolor/support/v7/widget/Toolbar;

    .line 172
    iget-object v1, p0, Lcom/coloros/settings/feature/language/localepicker/RegionPickerFragment;->e:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f121021

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 173
    invoke-virtual {v0, v1}, Lcolor/support/v7/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    const v0, 0x1020004

    .line 174
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/coloros/settings/feature/language/localepicker/RegionPickerFragment;->m:Landroid/widget/TextView;

    .line 175
    iget-object p1, p0, Lcom/coloros/settings/feature/language/localepicker/RegionPickerFragment;->m:Landroid/widget/TextView;

    const v0, 0x7f121447

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    return-void
.end method

.method public final a(Landroid/widget/ListView;I)V
    .locals 1

    .line 194
    iget-boolean p1, p0, Lcom/coloros/settings/feature/language/localepicker/RegionPickerFragment;->g:Z

    if-eqz p1, :cond_0

    if-lez p2, :cond_0

    add-int/lit8 p2, p2, -0x1

    .line 197
    :cond_0
    iget-object p1, p0, Lcom/coloros/settings/feature/language/localepicker/RegionPickerFragment;->k:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lt p2, p1, :cond_1

    return-void

    .line 200
    :cond_1
    iget-boolean p1, p0, Lcom/coloros/settings/feature/language/localepicker/RegionPickerFragment;->i:Z

    if-eqz p1, :cond_2

    const/4 p1, 0x1

    .line 201
    iput-boolean p1, p0, Lcom/coloros/settings/feature/language/localepicker/RegionPickerFragment;->h:Z

    .line 203
    invoke-virtual {p0}, Lcom/coloros/settings/feature/language/localepicker/RegionPickerFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/coloros/settings/wizard/ColorWizardRegionPicker;

    invoke-virtual {v0, p1}, Lcom/coloros/settings/wizard/ColorWizardRegionPicker;->a(Z)V

    .line 205
    :cond_2
    iget-object p1, p0, Lcom/coloros/settings/feature/language/localepicker/RegionPickerFragment;->b:Lcom/coloros/settings/feature/language/localepicker/a;

    invoke-virtual {p1}, Lcom/coloros/settings/feature/language/localepicker/a;->notifyDataSetChanged()V

    .line 207
    iget-object p1, p0, Lcom/coloros/settings/feature/language/localepicker/RegionPickerFragment;->k:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/coloros/settings/feature/language/region/d;

    const-string p2, "persist.sys.oppo.region"

    const-string v0, "CN"

    .line 208
    invoke-static {p2, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-eqz p1, :cond_4

    .line 2051
    iget-object v0, p1, Lcom/coloros/settings/feature/language/region/d;->b:Ljava/lang/String;

    .line 211
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_3

    .line 212
    iget-object p2, p0, Lcom/coloros/settings/feature/language/localepicker/RegionPickerFragment;->e:Landroid/content/Context;

    iget-boolean v0, p0, Lcom/coloros/settings/feature/language/localepicker/RegionPickerFragment;->i:Z

    invoke-static {p1, p2, v0}, Lcom/coloros/settings/feature/language/localepicker/RegionPickerFragment;->a(Lcom/coloros/settings/feature/language/region/d;Landroid/content/Context;Z)V

    .line 3051
    :cond_3
    iget-object p2, p1, Lcom/coloros/settings/feature/language/region/d;->b:Ljava/lang/String;

    const-string v0, "TH"

    .line 215
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_4

    .line 216
    invoke-static {}, Lcom/coloros/settings/utils/x;->b()V

    .line 219
    :cond_4
    iget-boolean p2, p0, Lcom/coloros/settings/feature/language/localepicker/RegionPickerFragment;->i:Z

    if-nez p2, :cond_5

    .line 220
    invoke-virtual {p0}, Lcom/coloros/settings/feature/language/localepicker/RegionPickerFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/fragment/app/FragmentActivity;->onBackPressed()V

    .line 222
    invoke-virtual {p0}, Lcom/coloros/settings/feature/language/localepicker/RegionPickerFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    const/4 v0, 0x0

    invoke-virtual {p2, v0, v0}, Landroidx/fragment/app/FragmentActivity;->overridePendingTransition(II)V

    .line 226
    :cond_5
    invoke-static {p1}, Lcom/coloros/settings/utils/x;->a(Lcom/coloros/settings/feature/language/region/d;)V

    .line 228
    invoke-static {p1}, Lcom/coloros/settings/utils/x;->b(Lcom/coloros/settings/feature/language/region/d;)V

    if-eqz p1, :cond_6

    .line 230
    invoke-virtual {p0}, Lcom/coloros/settings/feature/language/localepicker/RegionPickerFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    .line 233
    instance-of p1, p1, Lcom/coloros/settings/wizard/ColorWizardRegionPicker;

    if-nez p1, :cond_6

    .line 234
    invoke-static {}, Lcom/coloros/settings/utils/e;->a()V

    :cond_6
    return-void
.end method

.method public final b(Landroid/content/Context;)V
    .locals 12

    .line 12535
    invoke-static {}, Lcom/coloros/settings/utils/x;->a()Ljava/util/Locale;

    move-result-object v0

    .line 12588
    invoke-static {p1}, Lcom/coloros/settings/feature/language/localepicker/RegionPickerFragment;->e(Landroid/content/Context;)V

    .line 12592
    invoke-static {p1}, Lcom/coloros/settings/utils/al;->O(Landroid/content/Context;)Z

    move-result v1

    const-string v2, ""

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-eqz v1, :cond_5

    const-string v1, "phone"

    .line 13264
    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 13265
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 13269
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x3

    if-lt v5, v6, :cond_0

    .line 13270
    invoke-virtual {v1, v3, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    :cond_0
    move-object v5, v2

    .line 13272
    :goto_0
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v6, "Operator = "

    invoke-virtual {v6, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v6, "LocaleUtils"

    invoke-static {v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 12594
    sget-object v1, Lcom/coloros/settings/feature/language/localepicker/RegionPickerFragment;->f:Ljava/util/List;

    if-eqz v1, :cond_5

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_5

    .line 12595
    sget-object v1, Lcom/coloros/settings/feature/language/localepicker/RegionPickerFragment;->f:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/coloros/settings/feature/language/region/d;

    .line 14189
    iget-object v7, v6, Lcom/coloros/settings/feature/language/region/d;->k:Ljava/lang/String;

    .line 12596
    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    move-object v4, v6

    goto :goto_1

    .line 15189
    :cond_2
    iget-object v7, v6, Lcom/coloros/settings/feature/language/region/d;->k:Ljava/lang/String;

    const-string v8, "_"

    .line 12604
    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 12605
    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 12607
    array-length v8, v7

    move-object v9, v4

    move v4, v3

    :goto_2
    if-ge v4, v8, :cond_4

    aget-object v10, v7, v4

    .line 12608
    invoke-virtual {v10, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    move-object v9, v6

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_4
    move-object v4, v9

    goto :goto_1

    .line 12620
    :cond_5
    invoke-virtual {v0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v5, "other"

    if-nez v4, :cond_d

    .line 12622
    sget-object v6, Lcom/coloros/settings/feature/language/localepicker/RegionPickerFragment;->f:Ljava/util/List;

    if-eqz v6, :cond_d

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_d

    .line 12623
    sget-object v6, Lcom/coloros/settings/feature/language/localepicker/RegionPickerFragment;->f:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_6
    :goto_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_d

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/coloros/settings/feature/language/region/d;

    .line 16138
    iget-object v8, v7, Lcom/coloros/settings/feature/language/region/d;->i:Ljava/lang/String;

    .line 12625
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_7

    const-string v9, "-"

    invoke-virtual {v8, v9}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_7

    .line 12626
    invoke-virtual {v8, v9, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v8

    :cond_7
    const-string v9, ":"

    .line 12628
    invoke-virtual {v8, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_b

    .line 12629
    invoke-virtual {v8, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 12631
    array-length v9, v8

    move v10, v3

    :goto_4
    if-ge v10, v9, :cond_9

    aget-object v11, v8, v10

    .line 12632
    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_8

    const/4 v4, 0x1

    move-object v8, v7

    goto :goto_5

    :cond_8
    add-int/lit8 v10, v10, 0x1

    goto :goto_4

    :cond_9
    move-object v8, v4

    move v4, v3

    :goto_5
    if-nez v4, :cond_a

    move-object v4, v8

    goto :goto_6

    :cond_a
    move-object v4, v8

    goto :goto_7

    .line 12642
    :cond_b
    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_c

    move-object v4, v7

    goto :goto_7

    .line 16181
    :cond_c
    :goto_6
    iget-object v8, v7, Lcom/coloros/settings/feature/language/region/d;->j:Ljava/lang/String;

    .line 12648
    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    move-object v4, v7

    goto :goto_3

    :cond_d
    :goto_7
    if-eqz v4, :cond_f

    .line 12544
    iget-boolean v0, p0, Lcom/coloros/settings/feature/language/localepicker/RegionPickerFragment;->i:Z

    invoke-static {v4, p1, v0}, Lcom/coloros/settings/feature/language/localepicker/RegionPickerFragment;->a(Lcom/coloros/settings/feature/language/region/d;Landroid/content/Context;Z)V

    .line 12545
    invoke-static {v4}, Lcom/coloros/settings/utils/x;->a(Lcom/coloros/settings/feature/language/region/d;)V

    if-eqz v4, :cond_e

    .line 17101
    iget-object p1, v4, Lcom/coloros/settings/feature/language/region/b;->a:Landroid/content/Context;

    const-string v0, "oppo_region_select"

    .line 16580
    invoke-virtual {p1, v0, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    .line 16581
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 17181
    iget-object v0, v4, Lcom/coloros/settings/feature/language/region/d;->j:Ljava/lang/String;

    const-string v1, "region_select"

    .line 16582
    invoke-interface {p1, v1, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 16583
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 18051
    :cond_e
    iget-object p1, v4, Lcom/coloros/settings/feature/language/region/d;->b:Ljava/lang/String;

    const-string v0, "TH"

    .line 12550
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_10

    .line 12551
    invoke-static {}, Lcom/coloros/settings/utils/x;->b()V

    return-void

    .line 12554
    :cond_f
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "not find locale, cur locale = "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", default locale = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "RegionPickerFragment"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_10
    return-void
.end method

.method public final b()Z
    .locals 1

    .line 660
    iget-boolean v0, p0, Lcom/coloros/settings/feature/language/localepicker/RegionPickerFragment;->i:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final c()Z
    .locals 1

    .line 385
    iget-boolean v0, p0, Lcom/coloros/settings/feature/language/localepicker/RegionPickerFragment;->h:Z

    return v0
.end method

.method public final d()Z
    .locals 1

    .line 390
    iget-boolean v0, p0, Lcom/coloros/settings/feature/language/localepicker/RegionPickerFragment;->i:Z

    return v0
.end method

.method public final e()Lcom/coloros/settings/feature/language/localepicker/a;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/coloros/settings/feature/language/localepicker/a<",
            "Lcom/coloros/settings/feature/language/region/d;",
            ">;"
        }
    .end annotation

    .line 465
    iget-object v0, p0, Lcom/coloros/settings/feature/language/localepicker/RegionPickerFragment;->b:Lcom/coloros/settings/feature/language/localepicker/a;

    if-nez v0, :cond_2

    const v0, 0x7f0d029a

    .line 467
    iget-boolean v1, p0, Lcom/coloros/settings/feature/language/localepicker/RegionPickerFragment;->i:Z

    if-eqz v1, :cond_0

    const v0, 0x7f0d03b2

    .line 470
    :cond_0
    iget-boolean v1, p0, Lcom/coloros/settings/feature/language/localepicker/RegionPickerFragment;->i:Z

    if-eqz v1, :cond_1

    .line 471
    new-instance v1, Lcom/coloros/settings/feature/language/localepicker/RegionPickerFragment$b;

    invoke-virtual {p0}, Lcom/coloros/settings/feature/language/localepicker/RegionPickerFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    iget-object v3, p0, Lcom/coloros/settings/feature/language/localepicker/RegionPickerFragment;->k:Ljava/util/List;

    invoke-direct {v1, p0, v2, v0, v3}, Lcom/coloros/settings/feature/language/localepicker/RegionPickerFragment$b;-><init>(Lcom/coloros/settings/feature/language/localepicker/RegionPickerFragment;Landroid/content/Context;ILjava/util/List;)V

    iput-object v1, p0, Lcom/coloros/settings/feature/language/localepicker/RegionPickerFragment;->b:Lcom/coloros/settings/feature/language/localepicker/a;

    goto :goto_0

    .line 474
    :cond_1
    new-instance v1, Lcom/coloros/settings/feature/language/localepicker/c;

    invoke-virtual {p0}, Lcom/coloros/settings/feature/language/localepicker/RegionPickerFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    iget-object v3, p0, Lcom/coloros/settings/feature/language/localepicker/RegionPickerFragment;->k:Ljava/util/List;

    invoke-direct {v1, v2, v0, v3}, Lcom/coloros/settings/feature/language/localepicker/c;-><init>(Landroid/content/Context;ILjava/util/List;)V

    iput-object v1, p0, Lcom/coloros/settings/feature/language/localepicker/RegionPickerFragment;->b:Lcom/coloros/settings/feature/language/localepicker/a;

    .line 476
    :goto_0
    iget-object v0, p0, Lcom/coloros/settings/feature/language/localepicker/RegionPickerFragment;->b:Lcom/coloros/settings/feature/language/localepicker/a;

    check-cast v0, Lcom/coloros/settings/feature/language/localepicker/c;

    .line 11054
    iput-object p0, v0, Lcom/coloros/settings/feature/language/localepicker/c;->a:Lcom/coloros/settings/feature/language/localepicker/c$a;

    .line 478
    :cond_2
    iget-object v0, p0, Lcom/coloros/settings/feature/language/localepicker/RegionPickerFragment;->b:Lcom/coloros/settings/feature/language/localepicker/a;

    return-object v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 4

    .line 106
    invoke-super {p0, p1}, Lcom/coloros/settings/feature/language/localepicker/ColorLocalePicker;->onActivityCreated(Landroid/os/Bundle;)V

    .line 107
    invoke-virtual {p0}, Lcom/coloros/settings/feature/language/localepicker/RegionPickerFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/settings/feature/language/localepicker/RegionPickerFragment;->j:Landroid/app/Activity;

    .line 109
    iget-object p1, p0, Lcom/coloros/settings/feature/language/localepicker/RegionPickerFragment;->j:Landroid/app/Activity;

    invoke-static {p1}, Lcom/coloros/settings/utils/al;->a(Landroid/app/Activity;)V

    .line 1121
    iget-object p1, p0, Lcom/coloros/settings/feature/language/localepicker/RegionPickerFragment;->j:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const/4 v0, 0x0

    const-string v1, "oppoWizardRun"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/coloros/settings/feature/language/localepicker/RegionPickerFragment;->i:Z

    .line 1122
    iget-boolean p1, p0, Lcom/coloros/settings/feature/language/localepicker/RegionPickerFragment;->i:Z

    if-eqz p1, :cond_0

    .line 1123
    iget-object p1, p0, Lcom/coloros/settings/feature/language/localepicker/RegionPickerFragment;->j:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    iget-object v1, p0, Lcom/coloros/settings/feature/language/localepicker/RegionPickerFragment;->j:Landroid/app/Activity;

    const v2, 0x7f06001b

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getColor(I)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/Window;->setNavigationBarColor(I)V

    .line 1124
    invoke-virtual {p0}, Lcom/coloros/settings/feature/language/localepicker/RegionPickerFragment;->getListView()Landroid/widget/ListView;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1126
    iget-object v1, p0, Lcom/coloros/settings/feature/language/localepicker/RegionPickerFragment;->j:Landroid/app/Activity;

    const v2, 0x7f0d016b

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 1127
    invoke-virtual {p1, v1}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    const/4 v1, 0x1

    .line 1128
    invoke-virtual {p1, v1}, Landroid/widget/ListView;->setHeaderDividersEnabled(Z)V

    .line 1129
    iput-boolean v1, p0, Lcom/coloros/settings/feature/language/localepicker/RegionPickerFragment;->g:Z

    .line 112
    :cond_0
    new-instance p1, Lcom/coloros/settings/feature/language/localepicker/RegionPickerFragment$a;

    invoke-direct {p1, p0, v0}, Lcom/coloros/settings/feature/language/localepicker/RegionPickerFragment$a;-><init>(Lcom/coloros/settings/feature/language/localepicker/RegionPickerFragment;B)V

    iput-object p1, p0, Lcom/coloros/settings/feature/language/localepicker/RegionPickerFragment;->l:Lcom/coloros/settings/feature/language/localepicker/RegionPickerFragment$a;

    .line 113
    iget-object p1, p0, Lcom/coloros/settings/feature/language/localepicker/RegionPickerFragment;->l:Lcom/coloros/settings/feature/language/localepicker/RegionPickerFragment$a;

    const-string v0, ""

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/coloros/settings/feature/language/localepicker/RegionPickerFragment$a;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 100
    invoke-super {p0, p1}, Lcom/coloros/settings/feature/language/localepicker/ColorLocalePicker;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x0

    .line 101
    invoke-virtual {p0, p1}, Lcom/coloros/settings/feature/language/localepicker/RegionPickerFragment;->setHasOptionsMenu(Z)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    .line 136
    invoke-virtual {p0}, Lcom/coloros/settings/feature/language/localepicker/RegionPickerFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 138
    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v2, "oppoWizardRun"

    .line 140
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/coloros/settings/feature/language/localepicker/RegionPickerFragment;->i:Z

    .line 141
    iget-boolean v0, p0, Lcom/coloros/settings/feature/language/localepicker/RegionPickerFragment;->i:Z

    if-eqz v0, :cond_0

    .line 142
    invoke-super {p0, p1, p2, p3}, Lcom/coloros/settings/feature/language/localepicker/ColorLocalePicker;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    return-object p1

    .line 147
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/coloros/settings/feature/language/localepicker/ColorLocalePicker;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    .line 148
    invoke-virtual {p0}, Lcom/coloros/settings/feature/language/localepicker/RegionPickerFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    const/4 p3, 0x1

    invoke-static {p2, v1, p3}, Lcom/coloros/settings/utils/al;->a(Landroid/app/Activity;ZZ)V

    .line 149
    invoke-virtual {p0}, Lcom/coloros/settings/feature/language/localepicker/RegionPickerFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    invoke-static {p2, p1, p3}, Lcom/coloros/settings/utils/al;->a(Landroid/app/Activity;Landroid/view/View;Z)V

    return-object p1
.end method

.method public onDetach()V
    .locals 2

    .line 395
    iget-object v0, p0, Lcom/coloros/settings/feature/language/localepicker/RegionPickerFragment;->l:Lcom/coloros/settings/feature/language/localepicker/RegionPickerFragment$a;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 396
    invoke-virtual {v0, v1}, Lcom/coloros/settings/feature/language/localepicker/RegionPickerFragment$a;->cancel(Z)Z

    .line 398
    :cond_0
    invoke-super {p0}, Lcom/coloros/settings/feature/language/localepicker/ColorLocalePicker;->onDetach()V

    return-void
.end method

.method public onResume()V
    .locals 3

    .line 180
    invoke-super {p0}, Lcom/coloros/settings/feature/language/localepicker/ColorLocalePicker;->onResume()V

    .line 181
    invoke-virtual {p0}, Lcom/coloros/settings/feature/language/localepicker/RegionPickerFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 183
    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setDividerHeight(I)V

    .line 184
    invoke-virtual {v0}, Landroid/widget/ListView;->requestFocus()Z

    .line 185
    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setBackgroundColor(I)V

    .line 186
    iget-boolean v2, p0, Lcom/coloros/settings/feature/language/localepicker/RegionPickerFragment;->i:Z

    if-eqz v2, :cond_0

    .line 187
    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVerticalScrollBarEnabled(Z)V

    :cond_0
    return-void
.end method
