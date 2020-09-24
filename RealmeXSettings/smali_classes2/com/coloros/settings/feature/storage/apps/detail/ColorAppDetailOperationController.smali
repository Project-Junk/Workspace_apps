.class public Lcom/coloros/settings/feature/storage/apps/detail/ColorAppDetailOperationController;
.super Lcom/android/settingslib/core/a;
.source "ColorAppDetailOperationController.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coloros/settings/feature/storage/apps/detail/ColorAppDetailOperationController$b;,
        Lcom/coloros/settings/feature/storage/apps/detail/ColorAppDetailOperationController$a;
    }
.end annotation


# static fields
.field private static final c:Ljava/lang/String; = "ColorAppDetailOperationController"


# instance fields
.field a:I

.field b:Lcom/coloros/settings/feature/storage/apps/usage/a;

.field private d:Landroidx/preference/PreferenceCategory;

.field private e:Landroidx/preference/Preference;

.field private f:Landroidx/preference/Preference;

.field private g:Landroid/app/Activity;

.field private h:Lcom/coloros/settings/feature/storage/apps/usage/b;

.field private i:J

.field private j:Z

.field private k:Z

.field private l:Lcolor/support/v7/app/AlertDialog;

.field private m:Landroid/app/admin/DevicePolicyManager;

.field private n:Landroid/content/pm/PackageManager;

.field private o:Lcom/coloros/settings/feature/storage/apps/detail/ColorAppDetailOperationController$b;

.field private p:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private q:Lcom/coloros/settings/feature/storage/apps/detail/ColorAppDetailOperationController$a;

.field private r:Ljava/util/concurrent/ExecutorService;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Lcom/coloros/settings/feature/storage/apps/usage/b;)V
    .locals 2

    .line 141
    invoke-direct {p0, p1}, Lcom/android/settingslib/core/a;-><init>(Landroid/content/Context;)V

    const-wide/16 v0, 0x0

    .line 81
    iput-wide v0, p0, Lcom/coloros/settings/feature/storage/apps/detail/ColorAppDetailOperationController;->i:J

    const/4 v0, -0x1

    .line 82
    iput v0, p0, Lcom/coloros/settings/feature/storage/apps/detail/ColorAppDetailOperationController;->a:I

    .line 92
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/coloros/settings/feature/storage/apps/detail/ColorAppDetailOperationController;->p:Ljava/util/ArrayList;

    .line 94
    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/settings/feature/storage/apps/detail/ColorAppDetailOperationController;->r:Ljava/util/concurrent/ExecutorService;

    .line 142
    iput-object p1, p0, Lcom/coloros/settings/feature/storage/apps/detail/ColorAppDetailOperationController;->g:Landroid/app/Activity;

    .line 143
    iput-object p2, p0, Lcom/coloros/settings/feature/storage/apps/detail/ColorAppDetailOperationController;->h:Lcom/coloros/settings/feature/storage/apps/usage/b;

    .line 145
    new-instance p1, Lcom/coloros/settings/feature/storage/apps/detail/ColorAppDetailOperationController$a;

    invoke-direct {p1, p0}, Lcom/coloros/settings/feature/storage/apps/detail/ColorAppDetailOperationController$a;-><init>(Lcom/coloros/settings/feature/storage/apps/detail/ColorAppDetailOperationController;)V

    iput-object p1, p0, Lcom/coloros/settings/feature/storage/apps/detail/ColorAppDetailOperationController;->q:Lcom/coloros/settings/feature/storage/apps/detail/ColorAppDetailOperationController$a;

    .line 146
    iget-object p1, p0, Lcom/coloros/settings/feature/storage/apps/detail/ColorAppDetailOperationController;->mContext:Landroid/content/Context;

    const-string p2, "device_policy"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/admin/DevicePolicyManager;

    iput-object p1, p0, Lcom/coloros/settings/feature/storage/apps/detail/ColorAppDetailOperationController;->m:Landroid/app/admin/DevicePolicyManager;

    .line 147
    iget-object p1, p0, Lcom/coloros/settings/feature/storage/apps/detail/ColorAppDetailOperationController;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/settings/feature/storage/apps/detail/ColorAppDetailOperationController;->n:Landroid/content/pm/PackageManager;

    .line 148
    new-instance p1, Lcom/coloros/settings/feature/storage/apps/usage/a;

    iget-object p2, p0, Lcom/coloros/settings/feature/storage/apps/detail/ColorAppDetailOperationController;->mContext:Landroid/content/Context;

    invoke-direct {p1, p2}, Lcom/coloros/settings/feature/storage/apps/usage/a;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/coloros/settings/feature/storage/apps/detail/ColorAppDetailOperationController;->b:Lcom/coloros/settings/feature/storage/apps/usage/a;

    .line 1153
    new-instance p1, Landroid/os/HandlerThread;

    const-string p2, "AsyncHandler"

    invoke-direct {p1, p2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 1154
    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    .line 1155
    new-instance p2, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {p2, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 1156
    new-instance p1, Lcom/coloros/settings/feature/storage/apps/detail/-$$Lambda$ColorAppDetailOperationController$1K5yeSw0pWRS6-u7BHrUJ-Xr-uI;

    invoke-direct {p1, p0}, Lcom/coloros/settings/feature/storage/apps/detail/-$$Lambda$ColorAppDetailOperationController$1K5yeSw0pWRS6-u7BHrUJ-Xr-uI;-><init>(Lcom/coloros/settings/feature/storage/apps/detail/ColorAppDetailOperationController;)V

    invoke-virtual {p2, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method static synthetic a(Lcom/coloros/settings/feature/storage/apps/detail/ColorAppDetailOperationController;J)J
    .locals 0

    .line 58
    iput-wide p1, p0, Lcom/coloros/settings/feature/storage/apps/detail/ColorAppDetailOperationController;->i:J

    return-wide p1
.end method

.method static synthetic a()Ljava/lang/String;
    .locals 1

    .line 58
    sget-object v0, Lcom/coloros/settings/feature/storage/apps/detail/ColorAppDetailOperationController;->c:Ljava/lang/String;

    return-object v0
.end method

.method private static synthetic a(Landroid/content/DialogInterface;I)V
    .locals 0

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 3

    .line 275
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 276
    iget-object v1, p0, Lcom/coloros/settings/feature/storage/apps/detail/ColorAppDetailOperationController;->h:Lcom/coloros/settings/feature/storage/apps/usage/b;

    iget-object v1, v1, Lcom/coloros/settings/feature/storage/apps/usage/b;->d:Ljava/lang/String;

    const-string v2, "packagename"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 277
    iget-object v1, p0, Lcom/coloros/settings/feature/storage/apps/detail/ColorAppDetailOperationController;->h:Lcom/coloros/settings/feature/storage/apps/usage/b;

    iget-object v1, v1, Lcom/coloros/settings/feature/storage/apps/usage/b;->f:Ljava/lang/String;

    const-string v2, "size"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 278
    iget-object v1, p0, Lcom/coloros/settings/feature/storage/apps/detail/ColorAppDetailOperationController;->mContext:Landroid/content/Context;

    invoke-static {v1, p1, v0}, Lcom/coloros/settings/feature/storage/b/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method static synthetic a(Lcom/coloros/settings/feature/storage/apps/detail/ColorAppDetailOperationController;)Z
    .locals 1

    const/4 v0, 0x1

    .line 58
    iput-boolean v0, p0, Lcom/coloros/settings/feature/storage/apps/detail/ColorAppDetailOperationController;->j:Z

    return v0
.end method

.method private a(Ljava/lang/String;Landroid/content/pm/IPackageDataObserver;)Z
    .locals 2

    .line 332
    iget-object v0, p0, Lcom/coloros/settings/feature/storage/apps/detail/ColorAppDetailOperationController;->mContext:Landroid/content/Context;

    const-string v1, "activity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 334
    :try_start_0
    invoke-virtual {v0, p1, p2}, Landroid/app/ActivityManager;->clearApplicationUserData(Ljava/lang/String;Landroid/content/pm/IPackageDataObserver;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 336
    sget-object p2, Lcom/coloros/settings/feature/storage/apps/detail/ColorAppDetailOperationController;->c:Ljava/lang/String;

    const-string v0, "clearApplicationUserData RemoteException="

    invoke-static {p2, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method static synthetic b(Lcom/coloros/settings/feature/storage/apps/detail/ColorAppDetailOperationController;)J
    .locals 2

    .line 58
    iget-wide v0, p0, Lcom/coloros/settings/feature/storage/apps/detail/ColorAppDetailOperationController;->i:J

    return-wide v0
.end method

.method private b()V
    .locals 2

    .line 342
    iget-object v0, p0, Lcom/coloros/settings/feature/storage/apps/detail/ColorAppDetailOperationController;->r:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/coloros/settings/feature/storage/apps/detail/ColorAppDetailOperationController$1;

    invoke-direct {v1, p0}, Lcom/coloros/settings/feature/storage/apps/detail/ColorAppDetailOperationController$1;-><init>(Lcom/coloros/settings/feature/storage/apps/detail/ColorAppDetailOperationController;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic b(Landroid/content/DialogInterface;I)V
    .locals 1

    const-string p1, "click_uninstall_id"

    .line 266
    invoke-direct {p0, p1}, Lcom/coloros/settings/feature/storage/apps/detail/ColorAppDetailOperationController;->a(Ljava/lang/String;)V

    .line 2401
    iget-object p1, p0, Lcom/coloros/settings/feature/storage/apps/detail/ColorAppDetailOperationController;->h:Lcom/coloros/settings/feature/storage/apps/usage/b;

    iget-object p1, p1, Lcom/coloros/settings/feature/storage/apps/usage/b;->b:Ljava/lang/String;

    .line 2406
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "package:"

    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 2407
    new-instance p2, Landroid/content/Intent;

    const-string v0, "android.intent.action.UNINSTALL_PACKAGE"

    invoke-direct {p2, v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string p1, "uninstall_multi_app"

    const/4 v0, 0x0

    .line 2410
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2411
    iget-object p1, p0, Lcom/coloros/settings/feature/storage/apps/detail/ColorAppDetailOperationController;->g:Landroid/app/Activity;

    const/16 v0, 0x35

    invoke-virtual {p1, p2, v0}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 2397
    invoke-direct {p0}, Lcom/coloros/settings/feature/storage/apps/detail/ColorAppDetailOperationController;->b()V

    return-void
.end method

.method static synthetic c(Lcom/coloros/settings/feature/storage/apps/detail/ColorAppDetailOperationController;)Lcom/coloros/settings/feature/storage/apps/usage/b;
    .locals 0

    .line 58
    iget-object p0, p0, Lcom/coloros/settings/feature/storage/apps/detail/ColorAppDetailOperationController;->h:Lcom/coloros/settings/feature/storage/apps/usage/b;

    return-object p0
.end method

.method private synthetic c()V
    .locals 1

    .line 156
    iget-object v0, p0, Lcom/coloros/settings/feature/storage/apps/detail/ColorAppDetailOperationController;->b:Lcom/coloros/settings/feature/storage/apps/usage/a;

    .line 3575
    iget-object v0, v0, Lcom/coloros/settings/feature/storage/apps/usage/a;->c:Lcom/coloros/settings/feature/storage/apps/usage/a/a;

    invoke-virtual {v0}, Lcom/coloros/settings/feature/storage/apps/usage/a/a;->e()Ljava/util/ArrayList;

    move-result-object v0

    .line 156
    iput-object v0, p0, Lcom/coloros/settings/feature/storage/apps/detail/ColorAppDetailOperationController;->p:Ljava/util/ArrayList;

    return-void
.end method

.method private static synthetic c(Landroid/content/DialogInterface;I)V
    .locals 0

    return-void
.end method

.method private synthetic d(Landroid/content/DialogInterface;I)V
    .locals 2

    const-string p1, "click_delete_id"

    .line 250
    invoke-direct {p0, p1}, Lcom/coloros/settings/feature/storage/apps/detail/ColorAppDetailOperationController;->a(Ljava/lang/String;)V

    const/16 p1, 0x6e

    .line 3164
    iput p1, p0, Lcom/coloros/settings/feature/storage/apps/detail/ColorAppDetailOperationController;->a:I

    .line 3282
    iget-object p1, p0, Lcom/coloros/settings/feature/storage/apps/detail/ColorAppDetailOperationController;->mContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const p2, 0x7f0d0143

    const/4 v0, 0x0

    .line 3283
    invoke-virtual {p1, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 3284
    new-instance p2, Lcolor/support/v7/app/AlertDialog$Builder;

    iget-object v0, p0, Lcom/coloros/settings/feature/storage/apps/detail/ColorAppDetailOperationController;->mContext:Landroid/content/Context;

    invoke-direct {p2, v0}, Lcolor/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/coloros/settings/feature/storage/apps/detail/ColorAppDetailOperationController;->mContext:Landroid/content/Context;

    const v1, 0x7f12156a

    .line 3285
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcolor/support/v7/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcolor/support/v7/app/AlertDialog$Builder;->setView(Landroid/view/View;)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object p1

    .line 3286
    invoke-virtual {p1}, Lcolor/support/v7/app/AlertDialog$Builder;->create()Lcolor/support/v7/app/AlertDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/settings/feature/storage/apps/detail/ColorAppDetailOperationController;->l:Lcolor/support/v7/app/AlertDialog;

    .line 3287
    iget-object p1, p0, Lcom/coloros/settings/feature/storage/apps/detail/ColorAppDetailOperationController;->l:Lcolor/support/v7/app/AlertDialog;

    invoke-virtual {p1}, Lcolor/support/v7/app/AlertDialog;->show()V

    .line 3295
    iget-object p1, p0, Lcom/coloros/settings/feature/storage/apps/detail/ColorAppDetailOperationController;->h:Lcom/coloros/settings/feature/storage/apps/usage/b;

    iget-object p1, p1, Lcom/coloros/settings/feature/storage/apps/usage/b;->b:Ljava/lang/String;

    .line 3296
    sget-object p2, Lcom/coloros/settings/feature/storage/apps/detail/ColorAppDetailOperationController;->c:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Clearing user data for package : "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/coloros/settings/utils/aa;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 3297
    iget-object p2, p0, Lcom/coloros/settings/feature/storage/apps/detail/ColorAppDetailOperationController;->o:Lcom/coloros/settings/feature/storage/apps/detail/ColorAppDetailOperationController$b;

    if-nez p2, :cond_0

    .line 3298
    new-instance p2, Lcom/coloros/settings/feature/storage/apps/detail/ColorAppDetailOperationController$b;

    invoke-direct {p2, p0}, Lcom/coloros/settings/feature/storage/apps/detail/ColorAppDetailOperationController$b;-><init>(Lcom/coloros/settings/feature/storage/apps/detail/ColorAppDetailOperationController;)V

    iput-object p2, p0, Lcom/coloros/settings/feature/storage/apps/detail/ColorAppDetailOperationController;->o:Lcom/coloros/settings/feature/storage/apps/detail/ColorAppDetailOperationController$b;

    .line 3300
    :cond_0
    iget-object p2, p0, Lcom/coloros/settings/feature/storage/apps/detail/ColorAppDetailOperationController;->o:Lcom/coloros/settings/feature/storage/apps/detail/ColorAppDetailOperationController$b;

    invoke-direct {p0, p1, p2}, Lcom/coloros/settings/feature/storage/apps/detail/ColorAppDetailOperationController;->a(Ljava/lang/String;Landroid/content/pm/IPackageDataObserver;)Z

    move-result p1

    .line 3301
    sget-object p2, Lcom/coloros/settings/feature/storage/apps/detail/ColorAppDetailOperationController;->c:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p1

    const-string v0, "Clearing user data res : "

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/coloros/settings/utils/aa;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 254
    invoke-direct {p0}, Lcom/coloros/settings/feature/storage/apps/detail/ColorAppDetailOperationController;->b()V

    return-void
.end method

.method static synthetic d(Lcom/coloros/settings/feature/storage/apps/detail/ColorAppDetailOperationController;)Z
    .locals 0

    .line 58
    iget-boolean p0, p0, Lcom/coloros/settings/feature/storage/apps/detail/ColorAppDetailOperationController;->k:Z

    return p0
.end method

.method static synthetic e(Lcom/coloros/settings/feature/storage/apps/detail/ColorAppDetailOperationController;)V
    .locals 1

    .line 4325
    iget-object v0, p0, Lcom/coloros/settings/feature/storage/apps/detail/ColorAppDetailOperationController;->l:Lcolor/support/v7/app/AlertDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcolor/support/v7/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4326
    iget-object p0, p0, Lcom/coloros/settings/feature/storage/apps/detail/ColorAppDetailOperationController;->l:Lcolor/support/v7/app/AlertDialog;

    invoke-virtual {p0}, Lcolor/support/v7/app/AlertDialog;->dismiss()V

    :cond_0
    return-void
.end method

.method static synthetic f(Lcom/coloros/settings/feature/storage/apps/detail/ColorAppDetailOperationController;)V
    .locals 5

    .line 5314
    sget-object v0, Lcom/coloros/settings/feature/storage/apps/detail/ColorAppDetailOperationController;->c:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "mRemainStorage = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/coloros/settings/feature/storage/apps/detail/ColorAppDetailOperationController;->i:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/coloros/settings/utils/aa;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 5315
    iget-object v0, p0, Lcom/coloros/settings/feature/storage/apps/detail/ColorAppDetailOperationController;->h:Lcom/coloros/settings/feature/storage/apps/usage/b;

    iget-wide v1, v0, Lcom/coloros/settings/feature/storage/apps/usage/b;->i:J

    iget-object v3, p0, Lcom/coloros/settings/feature/storage/apps/detail/ColorAppDetailOperationController;->h:Lcom/coloros/settings/feature/storage/apps/usage/b;

    iget-wide v3, v3, Lcom/coloros/settings/feature/storage/apps/usage/b;->j:J

    add-long/2addr v1, v3

    iget-object v3, p0, Lcom/coloros/settings/feature/storage/apps/detail/ColorAppDetailOperationController;->h:Lcom/coloros/settings/feature/storage/apps/usage/b;

    iget-wide v3, v3, Lcom/coloros/settings/feature/storage/apps/usage/b;->k:J

    add-long/2addr v1, v3

    iput-wide v1, v0, Lcom/coloros/settings/feature/storage/apps/usage/b;->m:J

    .line 5316
    iget-object v0, p0, Lcom/coloros/settings/feature/storage/apps/detail/ColorAppDetailOperationController;->h:Lcom/coloros/settings/feature/storage/apps/usage/b;

    iget-object v1, p0, Lcom/coloros/settings/feature/storage/apps/detail/ColorAppDetailOperationController;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/coloros/settings/feature/storage/apps/detail/ColorAppDetailOperationController;->h:Lcom/coloros/settings/feature/storage/apps/usage/b;

    iget-wide v2, v2, Lcom/coloros/settings/feature/storage/apps/usage/b;->m:J

    invoke-static {v1, v2, v3}, Lcom/coloros/settings/utils/al;->b(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/coloros/settings/feature/storage/apps/usage/b;->f:Ljava/lang/String;

    .line 5320
    iget-object v0, p0, Lcom/coloros/settings/feature/storage/apps/detail/ColorAppDetailOperationController;->e:Landroidx/preference/Preference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 5321
    iget-object p0, p0, Lcom/coloros/settings/feature/storage/apps/detail/ColorAppDetailOperationController;->e:Landroidx/preference/Preference;

    invoke-virtual {p0, v1}, Landroidx/preference/Preference;->setSelectable(Z)V

    return-void
.end method

.method static synthetic g(Lcom/coloros/settings/feature/storage/apps/detail/ColorAppDetailOperationController;)Z
    .locals 1

    const/4 v0, 0x1

    .line 58
    iput-boolean v0, p0, Lcom/coloros/settings/feature/storage/apps/detail/ColorAppDetailOperationController;->k:Z

    return v0
.end method

.method static synthetic h(Lcom/coloros/settings/feature/storage/apps/detail/ColorAppDetailOperationController;)Z
    .locals 0

    .line 58
    iget-boolean p0, p0, Lcom/coloros/settings/feature/storage/apps/detail/ColorAppDetailOperationController;->j:Z

    return p0
.end method

.method static synthetic i(Lcom/coloros/settings/feature/storage/apps/detail/ColorAppDetailOperationController;)Ljava/util/ArrayList;
    .locals 0

    .line 58
    iget-object p0, p0, Lcom/coloros/settings/feature/storage/apps/detail/ColorAppDetailOperationController;->p:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic j(Lcom/coloros/settings/feature/storage/apps/detail/ColorAppDetailOperationController;)Lcom/coloros/settings/feature/storage/apps/detail/ColorAppDetailOperationController$a;
    .locals 0

    .line 58
    iget-object p0, p0, Lcom/coloros/settings/feature/storage/apps/detail/ColorAppDetailOperationController;->q:Lcom/coloros/settings/feature/storage/apps/detail/ColorAppDetailOperationController$a;

    return-object p0
.end method

.method static synthetic k(Lcom/coloros/settings/feature/storage/apps/detail/ColorAppDetailOperationController;)Lcom/coloros/settings/feature/storage/apps/usage/a;
    .locals 0

    .line 58
    iget-object p0, p0, Lcom/coloros/settings/feature/storage/apps/detail/ColorAppDetailOperationController;->b:Lcom/coloros/settings/feature/storage/apps/usage/a;

    return-object p0
.end method

.method public static synthetic lambda$-7139yPkjxtBSjDjixkH1E7FJ9A(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/coloros/settings/feature/storage/apps/detail/ColorAppDetailOperationController;->c(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic lambda$1K5yeSw0pWRS6-u7BHrUJ-Xr-uI(Lcom/coloros/settings/feature/storage/apps/detail/ColorAppDetailOperationController;)V
    .locals 0

    invoke-direct {p0}, Lcom/coloros/settings/feature/storage/apps/detail/ColorAppDetailOperationController;->c()V

    return-void
.end method

.method public static synthetic lambda$4_TnodVf2UCGp0yfdH9wIGOnz0s(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/coloros/settings/feature/storage/apps/detail/ColorAppDetailOperationController;->a(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic lambda$FjM_SEwcFtCM1ZwEa8kqYtIL90g(Lcom/coloros/settings/feature/storage/apps/detail/ColorAppDetailOperationController;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/coloros/settings/feature/storage/apps/detail/ColorAppDetailOperationController;->b(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic lambda$hvZ4iC9sPG1cFystEwVaV7WMeaI(Lcom/coloros/settings/feature/storage/apps/detail/ColorAppDetailOperationController;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/coloros/settings/feature/storage/apps/detail/ColorAppDetailOperationController;->d(Landroid/content/DialogInterface;I)V

    return-void
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 10

    .line 191
    invoke-super {p0, p1}, Lcom/android/settingslib/core/a;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 192
    iget-object v0, p0, Lcom/coloros/settings/feature/storage/apps/detail/ColorAppDetailOperationController;->d:Landroidx/preference/PreferenceCategory;

    const v1, 0x7f0d00b1

    if-nez v0, :cond_0

    const-string v0, "app_date_opreation"

    .line 193
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/coloros/settings/feature/storage/apps/detail/ColorAppDetailOperationController;->d:Landroidx/preference/PreferenceCategory;

    const-string v0, "key_opreation_delete_storage"

    .line 194
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/settings/feature/storage/apps/detail/ColorAppDetailOperationController;->e:Landroidx/preference/Preference;

    const-string v0, "key_opreation_uninstall"

    .line 195
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/settings/feature/storage/apps/detail/ColorAppDetailOperationController;->f:Landroidx/preference/Preference;

    .line 196
    iget-object p1, p0, Lcom/coloros/settings/feature/storage/apps/detail/ColorAppDetailOperationController;->e:Landroidx/preference/Preference;

    invoke-virtual {p1, v1}, Landroidx/preference/Preference;->setLayoutResource(I)V

    .line 197
    iget-object p1, p0, Lcom/coloros/settings/feature/storage/apps/detail/ColorAppDetailOperationController;->f:Landroidx/preference/Preference;

    invoke-virtual {p1, v1}, Landroidx/preference/Preference;->setLayoutResource(I)V

    .line 200
    :cond_0
    iget-object p1, p0, Lcom/coloros/settings/feature/storage/apps/detail/ColorAppDetailOperationController;->h:Lcom/coloros/settings/feature/storage/apps/usage/b;

    iget-wide v2, p1, Lcom/coloros/settings/feature/storage/apps/usage/b;->k:J

    iget-object p1, p0, Lcom/coloros/settings/feature/storage/apps/detail/ColorAppDetailOperationController;->h:Lcom/coloros/settings/feature/storage/apps/usage/b;

    iget-wide v4, p1, Lcom/coloros/settings/feature/storage/apps/usage/b;->j:J

    add-long/2addr v2, v4

    const/4 p1, 0x0

    .line 2221
    :try_start_0
    iget-object v0, p0, Lcom/coloros/settings/feature/storage/apps/detail/ColorAppDetailOperationController;->n:Landroid/content/pm/PackageManager;

    iget-object v4, p0, Lcom/coloros/settings/feature/storage/apps/detail/ColorAppDetailOperationController;->h:Lcom/coloros/settings/feature/storage/apps/usage/b;

    iget-object v4, v4, Lcom/coloros/settings/feature/storage/apps/usage/b;->b:Ljava/lang/String;

    invoke-virtual {v0, v4, p1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 2222
    iget-object v4, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 2223
    iget-object v5, p0, Lcom/coloros/settings/feature/storage/apps/detail/ColorAppDetailOperationController;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/coloros/settings/feature/storage/apps/detail/ColorAppDetailOperationController;->h:Lcom/coloros/settings/feature/storage/apps/usage/b;

    iget-object v6, v6, Lcom/coloros/settings/feature/storage/apps/usage/b;->b:Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/coloros/settings/utils/al;->m(Landroid/content/Context;Ljava/lang/String;)I

    move-result v5

    const/4 v6, 0x1

    if-lez v5, :cond_1

    and-int/lit8 v7, v5, 0x1

    if-eq v7, v6, :cond_2

    .line 2224
    :cond_1
    iget-object v7, p0, Lcom/coloros/settings/feature/storage/apps/detail/ColorAppDetailOperationController;->mContext:Landroid/content/Context;

    iget-object v8, p0, Lcom/coloros/settings/feature/storage/apps/detail/ColorAppDetailOperationController;->h:Lcom/coloros/settings/feature/storage/apps/usage/b;

    iget-object v8, v8, Lcom/coloros/settings/feature/storage/apps/usage/b;->b:Ljava/lang/String;

    const-string v9, "gray-clear"

    .line 2225
    invoke-static {v7, v8, v9}, Lcom/coloros/settings/custom/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    :cond_2
    move v7, v6

    goto :goto_0

    :cond_3
    move v7, p1

    .line 2226
    :goto_0
    iget-object v8, v4, Landroid/content/pm/ApplicationInfo;->manageSpaceActivityName:Ljava/lang/String;

    if-nez v8, :cond_4

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v4, v4, 0x41

    if-eq v4, v6, :cond_5

    iget-object v4, p0, Lcom/coloros/settings/feature/storage/apps/detail/ColorAppDetailOperationController;->m:Landroid/app/admin/DevicePolicyManager;

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 2228
    invoke-virtual {v4, v0}, Landroid/app/admin/DevicePolicyManager;->packageHasActiveAdmins(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    :cond_4
    iget-object v0, p0, Lcom/coloros/settings/feature/storage/apps/detail/ColorAppDetailOperationController;->h:Lcom/coloros/settings/feature/storage/apps/usage/b;

    iget-object v0, v0, Lcom/coloros/settings/feature/storage/apps/usage/b;->b:Ljava/lang/String;

    iget-object v4, p0, Lcom/coloros/settings/feature/storage/apps/detail/ColorAppDetailOperationController;->mContext:Landroid/content/Context;

    .line 2229
    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    if-eqz v7, :cond_6

    .line 2231
    :cond_5
    iget-object v0, p0, Lcom/coloros/settings/feature/storage/apps/detail/ColorAppDetailOperationController;->e:Landroidx/preference/Preference;

    invoke-virtual {v0, p1}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 2232
    iget-object v0, p0, Lcom/coloros/settings/feature/storage/apps/detail/ColorAppDetailOperationController;->e:Landroidx/preference/Preference;

    invoke-virtual {v0, p1}, Landroidx/preference/Preference;->setSelectable(Z)V

    :cond_6
    if-lez v5, :cond_7

    const/4 v0, 0x2

    and-int/lit8 v4, v5, 0x2

    if-eq v4, v0, :cond_9

    .line 2234
    :cond_7
    iget-object v0, p0, Lcom/coloros/settings/feature/storage/apps/detail/ColorAppDetailOperationController;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/coloros/settings/feature/storage/apps/detail/ColorAppDetailOperationController;->h:Lcom/coloros/settings/feature/storage/apps/usage/b;

    iget-object v4, v4, Lcom/coloros/settings/feature/storage/apps/usage/b;->b:Ljava/lang/String;

    const-string v5, "gray-uninstall"

    .line 2235
    invoke-static {v0, v4, v5}, Lcom/coloros/settings/custom/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    goto :goto_1

    :cond_8
    move v6, p1

    :cond_9
    :goto_1
    if-eqz v6, :cond_a

    .line 2237
    iget-object v0, p0, Lcom/coloros/settings/feature/storage/apps/detail/ColorAppDetailOperationController;->f:Landroidx/preference/Preference;

    invoke-virtual {v0, p1}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 2238
    iget-object v0, p0, Lcom/coloros/settings/feature/storage/apps/detail/ColorAppDetailOperationController;->f:Landroidx/preference/Preference;

    invoke-virtual {v0, p1}, Landroidx/preference/Preference;->setSelectable(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 2241
    :catch_0
    sget-object v0, Lcom/coloros/settings/feature/storage/apps/detail/ColorAppDetailOperationController;->c:Ljava/lang/String;

    const-string v4, "check if AppData Removable error!"

    invoke-static {v0, v4}, Lcom/coloros/settings/utils/aa;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_a
    :goto_2
    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-nez v0, :cond_b

    .line 203
    iget-object v0, p0, Lcom/coloros/settings/feature/storage/apps/detail/ColorAppDetailOperationController;->e:Landroidx/preference/Preference;

    invoke-virtual {v0, p1}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 204
    iget-object v0, p0, Lcom/coloros/settings/feature/storage/apps/detail/ColorAppDetailOperationController;->e:Landroidx/preference/Preference;

    invoke-virtual {v0, p1}, Landroidx/preference/Preference;->setSelectable(Z)V

    goto :goto_3

    .line 206
    :cond_b
    iget-object p1, p0, Lcom/coloros/settings/feature/storage/apps/detail/ColorAppDetailOperationController;->e:Landroidx/preference/Preference;

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 208
    :goto_3
    iget-object p1, p0, Lcom/coloros/settings/feature/storage/apps/detail/ColorAppDetailOperationController;->h:Lcom/coloros/settings/feature/storage/apps/usage/b;

    iget-boolean p1, p1, Lcom/coloros/settings/feature/storage/apps/usage/b;->n:Z

    if-eqz p1, :cond_c

    .line 209
    iget-object p1, p0, Lcom/coloros/settings/feature/storage/apps/detail/ColorAppDetailOperationController;->d:Landroidx/preference/PreferenceCategory;

    iget-object v0, p0, Lcom/coloros/settings/feature/storage/apps/detail/ColorAppDetailOperationController;->f:Landroidx/preference/Preference;

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceCategory;->removePreference(Landroidx/preference/Preference;)Z

    .line 210
    iget-object p1, p0, Lcom/coloros/settings/feature/storage/apps/detail/ColorAppDetailOperationController;->e:Landroidx/preference/Preference;

    invoke-virtual {p1, v1}, Landroidx/preference/Preference;->setLayoutResource(I)V

    goto :goto_4

    .line 212
    :cond_c
    iget-object p1, p0, Lcom/coloros/settings/feature/storage/apps/detail/ColorAppDetailOperationController;->f:Landroidx/preference/Preference;

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 214
    :goto_4
    iget-object p1, p0, Lcom/coloros/settings/feature/storage/apps/detail/ColorAppDetailOperationController;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/coloros/settings/feature/storage/apps/detail/ColorAppDetailOperationController;->h:Lcom/coloros/settings/feature/storage/apps/usage/b;

    iget-object v0, v0, Lcom/coloros/settings/feature/storage/apps/usage/b;->b:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/coloros/settings/utils/al;->l(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_d

    .line 215
    iget-object p1, p0, Lcom/coloros/settings/feature/storage/apps/detail/ColorAppDetailOperationController;->d:Landroidx/preference/PreferenceCategory;

    iget-object v0, p0, Lcom/coloros/settings/feature/storage/apps/detail/ColorAppDetailOperationController;->e:Landroidx/preference/Preference;

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceCategory;->removePreference(Landroidx/preference/Preference;)Z

    :cond_d
    return-void
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public isAvailable()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onPreferenceClick(Landroidx/preference/Preference;)Z
    .locals 3

    .line 179
    iget-object v0, p0, Lcom/coloros/settings/feature/storage/apps/detail/ColorAppDetailOperationController;->e:Landroidx/preference/Preference;

    const v1, 0x7f120491

    if-ne p1, v0, :cond_0

    .line 1246
    new-instance p1, Lcolor/support/v7/app/AlertDialog$Builder;

    iget-object v0, p0, Lcom/coloros/settings/feature/storage/apps/detail/ColorAppDetailOperationController;->mContext:Landroid/content/Context;

    invoke-direct {p1, v0}, Lcolor/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v0, 0x7f121592

    .line 1247
    invoke-virtual {p1, v0}, Lcolor/support/v7/app/AlertDialog$Builder;->setMessage(I)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object p1

    const v0, 0x7f121591

    new-instance v2, Lcom/coloros/settings/feature/storage/apps/detail/-$$Lambda$ColorAppDetailOperationController$hvZ4iC9sPG1cFystEwVaV7WMeaI;

    invoke-direct {v2, p0}, Lcom/coloros/settings/feature/storage/apps/detail/-$$Lambda$ColorAppDetailOperationController$hvZ4iC9sPG1cFystEwVaV7WMeaI;-><init>(Lcom/coloros/settings/feature/storage/apps/detail/ColorAppDetailOperationController;)V

    .line 1248
    invoke-virtual {p1, v0, v2}, Lcolor/support/v7/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object p1

    sget-object v0, Lcom/coloros/settings/feature/storage/apps/detail/-$$Lambda$ColorAppDetailOperationController$-7139yPkjxtBSjDjixkH1E7FJ9A;->INSTANCE:Lcom/coloros/settings/feature/storage/apps/detail/-$$Lambda$ColorAppDetailOperationController$-7139yPkjxtBSjDjixkH1E7FJ9A;

    .line 1256
    invoke-virtual {p1, v1, v0}, Lcolor/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object p1

    .line 1257
    invoke-virtual {p1}, Lcolor/support/v7/app/AlertDialog$Builder;->create()Lcolor/support/v7/app/AlertDialog;

    move-result-object p1

    .line 181
    invoke-virtual {p1}, Lcolor/support/v7/app/AlertDialog;->show()V

    goto :goto_0

    .line 182
    :cond_0
    iget-object v0, p0, Lcom/coloros/settings/feature/storage/apps/detail/ColorAppDetailOperationController;->f:Landroidx/preference/Preference;

    if-ne p1, v0, :cond_1

    .line 1262
    new-instance p1, Lcolor/support/v7/app/AlertDialog$Builder;

    iget-object v0, p0, Lcom/coloros/settings/feature/storage/apps/detail/ColorAppDetailOperationController;->mContext:Landroid/content/Context;

    invoke-direct {p1, v0}, Lcolor/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v0, 0x7f121594

    .line 1263
    invoke-virtual {p1, v0}, Lcolor/support/v7/app/AlertDialog$Builder;->setMessage(I)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object p1

    const v0, 0x7f121593

    new-instance v2, Lcom/coloros/settings/feature/storage/apps/detail/-$$Lambda$ColorAppDetailOperationController$FjM_SEwcFtCM1ZwEa8kqYtIL90g;

    invoke-direct {v2, p0}, Lcom/coloros/settings/feature/storage/apps/detail/-$$Lambda$ColorAppDetailOperationController$FjM_SEwcFtCM1ZwEa8kqYtIL90g;-><init>(Lcom/coloros/settings/feature/storage/apps/detail/ColorAppDetailOperationController;)V

    .line 1264
    invoke-virtual {p1, v0, v2}, Lcolor/support/v7/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object p1

    sget-object v0, Lcom/coloros/settings/feature/storage/apps/detail/-$$Lambda$ColorAppDetailOperationController$4_TnodVf2UCGp0yfdH9wIGOnz0s;->INSTANCE:Lcom/coloros/settings/feature/storage/apps/detail/-$$Lambda$ColorAppDetailOperationController$4_TnodVf2UCGp0yfdH9wIGOnz0s;

    .line 1269
    invoke-virtual {p1, v1, v0}, Lcolor/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object p1

    .line 1270
    invoke-virtual {p1}, Lcolor/support/v7/app/AlertDialog$Builder;->create()Lcolor/support/v7/app/AlertDialog;

    move-result-object p1

    .line 184
    invoke-virtual {p1}, Lcolor/support/v7/app/AlertDialog;->show()V

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method
