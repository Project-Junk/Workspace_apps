.class public Lcom/android/settings/wifi/tether/TetherService;
.super Landroid/app/Service;
.source "TetherService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/wifi/tether/TetherService$a;
    }
.end annotation


# static fields
.field private static final a:Z


# instance fields
.field private b:I

.field private c:Z

.field private d:Lcom/android/settings/wifi/tether/TetherService$a;

.field private e:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private f:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Landroid/os/ResultReceiver;",
            ">;>;"
        }
    .end annotation
.end field

.field private g:Lcom/android/settings/wifi/tether/a;

.field private final h:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "TetherService"

    const/4 v1, 0x3

    .line 55
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/settings/wifi/tether/TetherService;->a:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 53
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 362
    new-instance v0, Lcom/android/settings/wifi/tether/TetherService$2;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/tether/TetherService$2;-><init>(Lcom/android/settings/wifi/tether/TetherService;)V

    iput-object v0, p0, Lcom/android/settings/wifi/tether/TetherService;->h:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method private static a(Ljava/util/ArrayList;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 223
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 224
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    if-eqz v2, :cond_0

    const/16 v3, 0x2c

    .line 227
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 229
    :cond_0
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 232
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static a(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 212
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 213
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_0
    const-string v1, ","

    .line 215
    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    .line 216
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_1

    .line 217
    aget-object v2, p0, v1

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private a(I)V
    .locals 3

    .line 264
    iget-object v0, p0, Lcom/android/settings/wifi/tether/TetherService;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_1

    .line 265
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/tether/TetherService;->b(I)Landroid/content/Intent;

    move-result-object v0

    .line 266
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/tether/TetherService;->c(I)V

    .line 268
    sget-boolean v1, Lcom/android/settings/wifi/tether/TetherService;->a:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Sending provisioning broadcast: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/settings/wifi/tether/TetherService;->e:Ljava/util/ArrayList;

    .line 269
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "TetherService"

    .line 268
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/tether/TetherService;->sendBroadcast(Landroid/content/Intent;)V

    const/4 p1, 0x1

    .line 272
    iput-boolean p1, p0, Lcom/android/settings/wifi/tether/TetherService;->c:Z

    :cond_1
    return-void
.end method

.method public static a(Landroid/content/Context;)V
    .locals 3

    .line 329
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/settings/wifi/tether/TetherService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "extraRemTetherType"

    const/4 v2, 0x0

    .line 330
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 331
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method

.method static synthetic a(Lcom/android/settings/wifi/tether/TetherService;I)V
    .locals 0

    .line 53
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/tether/TetherService;->a(I)V

    return-void
.end method

.method static synthetic a(Lcom/android/settings/wifi/tether/TetherService;II)V
    .locals 3

    .line 6349
    iget-object p0, p0, Lcom/android/settings/wifi/tether/TetherService;->f:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    if-eqz p0, :cond_3

    const/4 p1, -0x1

    if-ne p2, p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0xb

    .line 6355
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/ResultReceiver;

    .line 6356
    sget-boolean v1, Lcom/android/settings/wifi/tether/TetherService;->a:Z

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Firing result: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " to callback"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TetherService"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/4 v1, 0x0

    .line 6357
    invoke-virtual {v0, p1, v1}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    goto :goto_1

    .line 6359
    :cond_2
    invoke-interface {p0}, Ljava/util/List;->clear()V

    :cond_3
    return-void
.end method

.method static synthetic a(Lcom/android/settings/wifi/tether/TetherService;)Z
    .locals 0

    .line 53
    iget-boolean p0, p0, Lcom/android/settings/wifi/tether/TetherService;->c:Z

    return p0
.end method

.method static synthetic b(Lcom/android/settings/wifi/tether/TetherService;)I
    .locals 0

    .line 53
    iget p0, p0, Lcom/android/settings/wifi/tether/TetherService;->b:I

    return p0
.end method

.method private b(I)Landroid/content/Intent;
    .locals 2

    .line 277
    invoke-virtual {p0}, Lcom/android/settings/wifi/tether/TetherService;->a()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "com.android.internal.R.string.config_mobile_hotspot_provision_app_no_ui"

    .line 278
    invoke-static {v1}, Lcom/coloros/settings/d/a;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 277
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 279
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 280
    iget-object v0, p0, Lcom/android/settings/wifi/tether/TetherService;->e:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const-string v0, "TETHER_TYPE"

    .line 281
    invoke-virtual {v1, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/high16 p1, 0x11000000

    .line 282
    invoke-virtual {v1, p1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    return-object v1
.end method

.method static synthetic b()Z
    .locals 1

    .line 53
    sget-boolean v0, Lcom/android/settings/wifi/tether/TetherService;->a:Z

    return v0
.end method

.method private c()Lcom/android/settings/wifi/tether/TetherService$a;
    .locals 1

    .line 409
    iget-object v0, p0, Lcom/android/settings/wifi/tether/TetherService;->d:Lcom/android/settings/wifi/tether/TetherService$a;

    if-nez v0, :cond_0

    .line 410
    new-instance v0, Lcom/android/settings/wifi/tether/TetherService$a;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/tether/TetherService$a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/wifi/tether/TetherService;->d:Lcom/android/settings/wifi/tether/TetherService$a;

    .line 412
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/tether/TetherService;->d:Lcom/android/settings/wifi/tether/TetherService$a;

    return-object v0
.end method

.method static synthetic c(Lcom/android/settings/wifi/tether/TetherService;)Ljava/util/ArrayList;
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/android/settings/wifi/tether/TetherService;->e:Ljava/util/ArrayList;

    return-object p0
.end method

.method private c(I)V
    .locals 2

    .line 289
    invoke-virtual {p0}, Lcom/android/settings/wifi/tether/TetherService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 290
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/tether/TetherService;->b(I)Landroid/content/Intent;

    move-result-object p1

    const/high16 v1, 0x20000

    .line 292
    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p1

    .line 293
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "TetherService"

    const-string v0, "No found BroadcastReceivers for provision intent."

    .line 294
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 298
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 299
    iget-object v1, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v1}, Landroid/content/pm/ApplicationInfo;->isSystemApp()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 300
    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 301
    invoke-direct {p0}, Lcom/android/settings/wifi/tether/TetherService;->c()Lcom/android/settings/wifi/tether/TetherService$a;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/settings/wifi/tether/TetherService$a;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method static synthetic d(Lcom/android/settings/wifi/tether/TetherService;)Z
    .locals 1

    const/4 v0, 0x0

    .line 53
    iput-boolean v0, p0, Lcom/android/settings/wifi/tether/TetherService;->c:Z

    return v0
.end method

.method static synthetic e(Lcom/android/settings/wifi/tether/TetherService;)V
    .locals 1

    const-string v0, "connectivity"

    .line 5237
    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/tether/TetherService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/ConnectivityManager;

    const/4 v0, 0x0

    .line 5238
    invoke-virtual {p0, v0}, Landroid/net/ConnectivityManager;->stopTethering(I)V

    return-void
.end method

.method static synthetic f(Lcom/android/settings/wifi/tether/TetherService;)V
    .locals 3

    .line 5248
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 5250
    new-instance v1, Lcom/android/settings/wifi/tether/TetherService$1;

    invoke-direct {v1, p0, v0}, Lcom/android/settings/wifi/tether/TetherService$1;-><init>(Lcom/android/settings/wifi/tether/TetherService;Landroid/bluetooth/BluetoothAdapter;)V

    const/4 v2, 0x5

    invoke-virtual {v0, p0, v1, v2}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    :cond_0
    return-void
.end method

.method static synthetic g(Lcom/android/settings/wifi/tether/TetherService;)V
    .locals 1

    const-string v0, "connectivity"

    .line 6243
    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/tether/TetherService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/ConnectivityManager;

    const/4 v0, 0x0

    .line 6244
    invoke-virtual {p0, v0}, Landroid/net/ConnectivityManager;->setUsbTethering(Z)I

    return-void
.end method

.method static synthetic h(Lcom/android/settings/wifi/tether/TetherService;)I
    .locals 1

    .line 53
    iget v0, p0, Lcom/android/settings/wifi/tether/TetherService;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/settings/wifi/tether/TetherService;->b:I

    return v0
.end method


# virtual methods
.method final a()Landroid/content/res/Resources;
    .locals 1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 440
    invoke-direct {p0}, Lcom/android/settings/wifi/tether/TetherService;->c()Lcom/android/settings/wifi/tether/TetherService$a;

    .line 4434
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result v0

    .line 441
    invoke-static {p0, v0}, Lcom/android/settings/m;->f(Landroid/content/Context;I)Landroid/content/res/Resources;

    move-result-object v0

    return-object v0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public onCreate()V
    .locals 4

    .line 87
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 88
    sget-boolean v0, Lcom/android/settings/wifi/tether/TetherService;->a:Z

    if-eqz v0, :cond_0

    const-string v0, "TetherService"

    const-string v1, "Creating TetherService"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/wifi/tether/TetherService;->a()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "com.android.internal.R.string.config_mobile_hotspot_provision_response"

    .line 90
    invoke-static {v1}, Lcom/coloros/settings/d/a;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 89
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 91
    iget-object v1, p0, Lcom/android/settings/wifi/tether/TetherService;->h:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    const-string v3, "android.permission.CONNECTIVITY_INTERNAL"

    invoke-virtual {p0, v1, v2, v3, v0}, Lcom/android/settings/wifi/tether/TetherService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    const/4 v0, 0x0

    const-string v1, "tetherPrefs"

    .line 93
    invoke-virtual {p0, v1, v0}, Lcom/android/settings/wifi/tether/TetherService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "currentTethers"

    const-string v3, ""

    .line 94
    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/wifi/tether/TetherService;->a(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/wifi/tether/TetherService;->e:Ljava/util/ArrayList;

    .line 95
    iput v0, p0, Lcom/android/settings/wifi/tether/TetherService;->b:I

    .line 96
    new-instance v1, Landroid/util/ArrayMap;

    const/4 v2, 0x3

    invoke-direct {v1, v2}, Landroid/util/ArrayMap;-><init>(I)V

    iput-object v1, p0, Lcom/android/settings/wifi/tether/TetherService;->f:Landroid/util/ArrayMap;

    .line 97
    iget-object v1, p0, Lcom/android/settings/wifi/tether/TetherService;->f:Landroid/util/ArrayMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1, v0, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    iget-object v0, p0, Lcom/android/settings/wifi/tether/TetherService;->f:Landroid/util/ArrayMap;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    iget-object v0, p0, Lcom/android/settings/wifi/tether/TetherService;->f:Landroid/util/ArrayMap;

    const/4 v1, 0x2

    .line 100
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 99
    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    new-instance v0, Lcom/android/settings/wifi/tether/a;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/tether/a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/wifi/tether/TetherService;->g:Lcom/android/settings/wifi/tether/a;

    return-void
.end method

.method public onDestroy()V
    .locals 4

    .line 179
    iget-boolean v0, p0, Lcom/android/settings/wifi/tether/TetherService;->c:Z

    const-string v1, "TetherService"

    if-eqz v0, :cond_0

    .line 180
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "TetherService getting destroyed while mid-provisioning"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/settings/wifi/tether/TetherService;->e:Ljava/util/ArrayList;

    iget v3, p0, Lcom/android/settings/wifi/tether/TetherService;->b:I

    .line 181
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 180
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x0

    const-string v2, "tetherPrefs"

    .line 183
    invoke-virtual {p0, v2, v0}, Lcom/android/settings/wifi/tether/TetherService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 184
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-object v2, p0, Lcom/android/settings/wifi/tether/TetherService;->e:Ljava/util/ArrayList;

    invoke-static {v2}, Lcom/android/settings/wifi/tether/TetherService;->a(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "currentTethers"

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 4192
    iget-object v0, p0, Lcom/android/settings/wifi/tether/TetherService;->h:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/tether/TetherService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 4193
    iget-object v0, p0, Lcom/android/settings/wifi/tether/TetherService;->g:Lcom/android/settings/wifi/tether/a;

    invoke-virtual {v0}, Lcom/android/settings/wifi/tether/a;->a()V

    .line 187
    sget-boolean v0, Lcom/android/settings/wifi/tether/TetherService;->a:Z

    if-eqz v0, :cond_1

    const-string v0, "Destroying TetherService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    :cond_1
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "subId"

    .line 106
    invoke-virtual {v1, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v3

    const/4 v4, 0x2

    const/4 v5, -0x1

    const-string v6, "TetherService"

    if-eqz v3, :cond_1

    .line 107
    invoke-virtual {v1, v2, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 109
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/wifi/tether/TetherService;->c()Lcom/android/settings/wifi/tether/TetherService$a;

    .line 1434
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result v3

    if-eq v2, v3, :cond_1

    .line 111
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "This Provisioning request is outdated, current subId: "

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    iget-boolean v1, v0, Lcom/android/settings/wifi/tether/TetherService;->c:Z

    if-nez v1, :cond_0

    .line 113
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wifi/tether/TetherService;->stopSelf()V

    :cond_0
    return v4

    :cond_1
    const-string v2, "extraAddTetherType"

    .line 118
    invoke-virtual {v1, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v3

    const/4 v7, 0x1

    if-eqz v3, :cond_5

    .line 119
    invoke-virtual {v1, v2, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    const-string v3, "extraProvisionCallback"

    .line 122
    invoke-virtual {v1, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/os/ResultReceiver;

    if-eqz v3, :cond_3

    .line 124
    iget-object v8, v0, Lcom/android/settings/wifi/tether/TetherService;->f:Landroid/util/ArrayMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    if-eqz v8, :cond_2

    .line 126
    invoke-interface {v8, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    .line 129
    invoke-virtual {v3, v7, v1}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    .line 130
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wifi/tether/TetherService;->stopSelf()V

    return v4

    .line 135
    :cond_3
    :goto_0
    iget-object v3, v0, Lcom/android/settings/wifi/tether/TetherService;->e:Ljava/util/ArrayList;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 136
    sget-boolean v3, Lcom/android/settings/wifi/tether/TetherService;->a:Z

    if-eqz v3, :cond_4

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    const-string v8, "Adding tether "

    invoke-virtual {v8, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    :cond_4
    iget-object v3, v0, Lcom/android/settings/wifi/tether/TetherService;->e:Ljava/util/ArrayList;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    const-string v2, "extraRemTetherType"

    .line 141
    invoke-virtual {v1, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v3

    const-string v8, "alarm"

    const/4 v9, 0x0

    if-eqz v3, :cond_c

    .line 142
    iget-boolean v3, v0, Lcom/android/settings/wifi/tether/TetherService;->c:Z

    if-nez v3, :cond_b

    .line 143
    invoke-virtual {v1, v2, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 145
    iget-object v3, v0, Lcom/android/settings/wifi/tether/TetherService;->e:Ljava/util/ArrayList;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v3

    .line 146
    sget-boolean v5, Lcom/android/settings/wifi/tether/TetherService;->a:Z

    if-eqz v5, :cond_6

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v10, "Removing tether "

    invoke-direct {v5, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", index "

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    if-ltz v3, :cond_8

    .line 2197
    iget-object v2, v0, Lcom/android/settings/wifi/tether/TetherService;->e:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 2200
    sget-boolean v2, Lcom/android/settings/wifi/tether/TetherService;->a:Z

    if-eqz v2, :cond_7

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v5, "mCurrentTypeIndex: "

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v5, v0, Lcom/android/settings/wifi/tether/TetherService;->b:I

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2201
    :cond_7
    iget v2, v0, Lcom/android/settings/wifi/tether/TetherService;->b:I

    if-gt v3, v2, :cond_8

    if-lez v2, :cond_8

    sub-int/2addr v2, v7

    .line 2202
    iput v2, v0, Lcom/android/settings/wifi/tether/TetherService;->b:I

    .line 2336
    :cond_8
    iget-object v2, v0, Lcom/android/settings/wifi/tether/TetherService;->e:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-eqz v2, :cond_9

    .line 2337
    sget-boolean v2, Lcom/android/settings/wifi/tether/TetherService;->a:Z

    if-eqz v2, :cond_c

    const-string v2, "Tethering still active, not cancelling alarm"

    invoke-static {v6, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 2340
    :cond_9
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/android/settings/wifi/tether/TetherService;

    invoke-direct {v2, v0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2341
    invoke-static {v0, v9, v2, v9}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 2342
    invoke-virtual {v0, v8}, Lcom/android/settings/wifi/tether/TetherService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/AlarmManager;

    .line 2343
    invoke-virtual {v3, v2}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 2344
    sget-boolean v2, Lcom/android/settings/wifi/tether/TetherService;->a:Z

    if-eqz v2, :cond_a

    const-string v2, "Tethering no longer active, canceling recheck"

    invoke-static {v6, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2345
    :cond_a
    iget-object v2, v0, Lcom/android/settings/wifi/tether/TetherService;->g:Lcom/android/settings/wifi/tether/a;

    invoke-virtual {v2}, Lcom/android/settings/wifi/tether/a;->a()V

    goto :goto_1

    .line 152
    :cond_b
    sget-boolean v2, Lcom/android/settings/wifi/tether/TetherService;->a:Z

    if-eqz v2, :cond_c

    const-string v2, "Don\'t cancel alarm during provisioning"

    invoke-static {v6, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c
    :goto_1
    const-string v2, "extraSetAlarm"

    .line 159
    invoke-virtual {v1, v2, v9}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    const-string v3, "extraRunProvision"

    if-eqz v2, :cond_e

    iget-object v2, v0, Lcom/android/settings/wifi/tether/TetherService;->e:Ljava/util/ArrayList;

    .line 160
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ne v2, v7, :cond_e

    .line 3308
    new-instance v2, Landroid/content/Intent;

    const-class v5, Lcom/android/settings/wifi/tether/TetherService;

    invoke-direct {v2, v0, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 3309
    invoke-virtual {v2, v3, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 3311
    invoke-static {v0, v9, v2, v9}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v16

    .line 3312
    invoke-virtual {v0, v8}, Lcom/android/settings/wifi/tether/TetherService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    move-object v10, v2

    check-cast v10, Landroid/app/AlarmManager;

    .line 3313
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wifi/tether/TetherService;->a()Landroid/content/res/Resources;

    move-result-object v2

    const-string v5, "com.android.internal.R.integer.config_mobile_hotspot_provision_check_period"

    .line 3314
    invoke-static {v5}, Lcom/coloros/settings/d/a;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 3313
    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    const v5, 0x36ee80

    mul-int/2addr v2, v5

    int-to-long v14, v2

    .line 3316
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v11

    add-long v12, v11, v14

    .line 3317
    sget-boolean v2, Lcom/android/settings/wifi/tether/TetherService;->a:Z

    if-eqz v2, :cond_d

    invoke-static {v14, v15}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    const-string v5, "Scheduling alarm at interval "

    invoke-virtual {v5, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d
    const/4 v11, 0x3

    .line 3318
    invoke-virtual/range {v10 .. v16}, Landroid/app/AlarmManager;->setRepeating(IJJLandroid/app/PendingIntent;)V

    .line 3320
    iget-object v2, v0, Lcom/android/settings/wifi/tether/TetherService;->g:Lcom/android/settings/wifi/tether/a;

    .line 4042
    iget-boolean v5, v2, Lcom/android/settings/wifi/tether/a;->b:Z

    if-nez v5, :cond_e

    .line 4043
    iget-object v5, v2, Lcom/android/settings/wifi/tether/a;->a:Landroid/content/Context;

    new-instance v8, Landroid/content/IntentFilter;

    const-string v10, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    invoke-direct {v8, v10}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2, v8}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 4045
    iput-boolean v7, v2, Lcom/android/settings/wifi/tether/a;->b:Z

    .line 164
    :cond_e
    invoke-virtual {v1, v3, v9}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 165
    iget v1, v0, Lcom/android/settings/wifi/tether/TetherService;->b:I

    invoke-direct {v0, v1}, Lcom/android/settings/wifi/tether/TetherService;->a(I)V

    goto :goto_2

    .line 166
    :cond_f
    iget-boolean v1, v0, Lcom/android/settings/wifi/tether/TetherService;->c:Z

    if-nez v1, :cond_11

    .line 168
    sget-boolean v1, Lcom/android/settings/wifi/tether/TetherService;->a:Z

    if-eqz v1, :cond_10

    invoke-static/range {p3 .. p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Stopping self.  startid: "

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    :cond_10
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wifi/tether/TetherService;->stopSelf()V

    return v4

    :cond_11
    :goto_2
    const/4 v1, 0x3

    return v1
.end method
