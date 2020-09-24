.class public Lcom/color/eyeprotect/c/b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/color/eyeprotect/c/b$a;
    }
.end annotation


# static fields
.field private static volatile a:Lcom/color/eyeprotect/c/b; = null

.field private static r:I = 0x1edc


# instance fields
.field private final b:Landroid/content/Context;

.field private c:Lcom/color/eyeprotect/util/d;

.field private d:Z

.field private e:Lcom/color/eyeprotect/c/b$a;

.field private f:Z

.field private g:Ljava/util/Calendar;

.field private h:Ljava/util/Calendar;

.field private i:Ljava/util/Calendar;

.field private j:Landroid/content/Intent;

.field private k:Landroid/content/Intent;

.field private l:Ljava/lang/Object;

.field private m:Z

.field private n:I

.field private o:I

.field private p:J

.field private q:Z

.field private s:I

.field private t:F

.field private u:Landroid/app/AlarmManager;

.field private v:Landroid/content/BroadcastReceiver;

.field private w:Landroid/content/BroadcastReceiver;

.field private x:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/color/eyeprotect/c/b;->c:Lcom/color/eyeprotect/util/d;

    new-instance v0, Lcom/color/eyeprotect/c/b$a;

    invoke-direct {v0}, Lcom/color/eyeprotect/c/b$a;-><init>()V

    iput-object v0, p0, Lcom/color/eyeprotect/c/b;->e:Lcom/color/eyeprotect/c/b$a;

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/color/eyeprotect/c/b;->g:Ljava/util/Calendar;

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/color/eyeprotect/c/b;->h:Ljava/util/Calendar;

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/color/eyeprotect/c/b;->i:Ljava/util/Calendar;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/color/eyeprotect/c/b;->l:Ljava/lang/Object;

    const/4 v0, 0x0

    iput v0, p0, Lcom/color/eyeprotect/c/b;->o:I

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/color/eyeprotect/c/b;->p:J

    iput-boolean v0, p0, Lcom/color/eyeprotect/c/b;->q:Z

    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/color/eyeprotect/c/b;->t:F

    new-instance v0, Lcom/color/eyeprotect/c/b$1;

    invoke-direct {v0, p0}, Lcom/color/eyeprotect/c/b$1;-><init>(Lcom/color/eyeprotect/c/b;)V

    iput-object v0, p0, Lcom/color/eyeprotect/c/b;->v:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/color/eyeprotect/c/b$2;

    invoke-direct {v0, p0}, Lcom/color/eyeprotect/c/b$2;-><init>(Lcom/color/eyeprotect/c/b;)V

    iput-object v0, p0, Lcom/color/eyeprotect/c/b;->w:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/color/eyeprotect/c/b$3;

    invoke-direct {v0, p0}, Lcom/color/eyeprotect/c/b$3;-><init>(Lcom/color/eyeprotect/c/b;)V

    iput-object v0, p0, Lcom/color/eyeprotect/c/b;->x:Landroid/content/BroadcastReceiver;

    iput-object p1, p0, Lcom/color/eyeprotect/c/b;->b:Landroid/content/Context;

    new-instance v0, Lcom/color/eyeprotect/util/d;

    invoke-direct {v0, p1}, Lcom/color/eyeprotect/util/d;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/color/eyeprotect/c/b;->c:Lcom/color/eyeprotect/util/d;

    iget-object p1, p0, Lcom/color/eyeprotect/c/b;->b:Landroid/content/Context;

    iget-object v0, p0, Lcom/color/eyeprotect/c/b;->b:Landroid/content/Context;

    const-string v0, "alarm"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/AlarmManager;

    iput-object p1, p0, Lcom/color/eyeprotect/c/b;->u:Landroid/app/AlarmManager;

    new-instance p1, Landroid/content/Intent;

    const-string v0, "intent_open_alarm"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/color/eyeprotect/c/b;->j:Landroid/content/Intent;

    new-instance p1, Landroid/content/Intent;

    const-string v0, "intent_close_alarm"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/color/eyeprotect/c/b;->k:Landroid/content/Intent;

    invoke-direct {p0}, Lcom/color/eyeprotect/c/b;->h()V

    invoke-direct {p0}, Lcom/color/eyeprotect/c/b;->i()V

    invoke-direct {p0}, Lcom/color/eyeprotect/c/b;->k()V

    invoke-direct {p0}, Lcom/color/eyeprotect/c/b;->o()V

    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/color/eyeprotect/c/b;
    .locals 2

    sget-object v0, Lcom/color/eyeprotect/c/b;->a:Lcom/color/eyeprotect/c/b;

    if-nez v0, :cond_1

    const-class v0, Lcom/color/eyeprotect/c/b;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/color/eyeprotect/c/b;->a:Lcom/color/eyeprotect/c/b;

    if-nez v1, :cond_0

    new-instance v1, Lcom/color/eyeprotect/c/b;

    invoke-direct {v1, p0}, Lcom/color/eyeprotect/c/b;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/color/eyeprotect/c/b;->a:Lcom/color/eyeprotect/c/b;

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    :goto_0
    sget-object p0, Lcom/color/eyeprotect/c/b;->a:Lcom/color/eyeprotect/c/b;

    return-object p0
.end method

.method static synthetic a(Lcom/color/eyeprotect/c/b;)V
    .locals 0

    invoke-direct {p0}, Lcom/color/eyeprotect/c/b;->n()V

    return-void
.end method

.method static synthetic a(Lcom/color/eyeprotect/c/b;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/color/eyeprotect/c/b;->q:Z

    return p1
.end method

.method public static b()I
    .locals 1

    sget v0, Lcom/color/eyeprotect/c/b;->r:I

    return v0
.end method

.method static synthetic b(Lcom/color/eyeprotect/c/b;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/color/eyeprotect/c/b;->b:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic c(Lcom/color/eyeprotect/c/b;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/color/eyeprotect/c/b;->q:Z

    return p0
.end method

.method private d(D)Z
    .locals 2

    const-wide/16 v0, 0x0

    cmpl-double p0, p1, v0

    if-ltz p0, :cond_0

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    cmpg-double p0, p1, v0

    if-gtz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method static synthetic d(Lcom/color/eyeprotect/c/b;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/color/eyeprotect/c/b;->f:Z

    return p0
.end method

.method static synthetic e(Lcom/color/eyeprotect/c/b;)Lcom/color/eyeprotect/c/b$a;
    .locals 0

    iget-object p0, p0, Lcom/color/eyeprotect/c/b;->e:Lcom/color/eyeprotect/c/b$a;

    return-object p0
.end method

.method private f()V
    .locals 5

    iget-object v0, p0, Lcom/color/eyeprotect/c/b;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/color/eyeprotect/util/e;->b(Landroid/content/ContentResolver;F)F

    move-result v0

    iget-object v1, p0, Lcom/color/eyeprotect/c/b;->b:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1}, Lcom/color/eyeprotect/util/e;->f(Landroid/content/ContentResolver;)F

    move-result v1

    cmpg-float v2, v0, v1

    if-gez v2, :cond_0

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    iget-object p0, p0, Lcom/color/eyeprotect/c/b;->b:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, v1}, Lcom/color/eyeprotect/util/e;->c(Landroid/content/ContentResolver;F)V

    sget-object p0, Lcom/color/common/a/a;->a:Lcom/color/common/a/a;

    const-string v2, "ColorEyeProtect"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "adjust eye saved value,old "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, ",new "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v2, v0}, Lcom/color/common/a/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic f(Lcom/color/eyeprotect/c/b;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/color/eyeprotect/c/b;->d:Z

    return p0
.end method

.method private g()V
    .locals 4

    iget-boolean v0, p0, Lcom/color/eyeprotect/c/b;->d:Z

    iget v1, p0, Lcom/color/eyeprotect/c/b;->n:I

    const-wide v2, 0x3f847ae147ae147bL    # 0.01

    invoke-virtual {p0, v2, v3, v0, v1}, Lcom/color/eyeprotect/c/b;->a(DZI)V

    iget-boolean v0, p0, Lcom/color/eyeprotect/c/b;->d:Z

    const-wide v1, 0x40bd4c0000000000L    # 7500.0

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v2, v0, v3}, Lcom/color/eyeprotect/c/b;->a(DZI)V

    return-void
.end method

.method static synthetic g(Lcom/color/eyeprotect/c/b;)V
    .locals 0

    invoke-direct {p0}, Lcom/color/eyeprotect/c/b;->j()V

    return-void
.end method

.method private h()V
    .locals 6

    iget-object v0, p0, Lcom/color/eyeprotect/c/b;->l:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/color/common/a/a;->a:Lcom/color/common/a/a;

    const-string v2, "ColorEyeProtect"

    const-string v3, "regiestTimerReceiver"

    invoke-virtual {v1, v2, v3}, Lcom/color/common/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    const-string v2, "intent_close_alarm"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "intent_open_alarm"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/color/eyeprotect/c/b;->b:Landroid/content/Context;

    iget-object v3, p0, Lcom/color/eyeprotect/c/b;->x:Landroid/content/BroadcastReceiver;

    const-string v4, "oppo.permission.OPPO_COMPONENT_SAFE"

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v1, v4, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    const-string v2, "android.intent.action.TIME_SET"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.intent.action.DATE_CHANGED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/color/eyeprotect/c/b;->b:Landroid/content/Context;

    iget-object p0, p0, Lcom/color/eyeprotect/c/b;->v:Landroid/content/BroadcastReceiver;

    const-string v3, "oppo.permission.OPPO_COMPONENT_SAFE"

    invoke-virtual {v2, p0, v1, v3, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :catch_0
    :goto_0
    :try_start_1
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method static synthetic h(Lcom/color/eyeprotect/c/b;)V
    .locals 0

    invoke-direct {p0}, Lcom/color/eyeprotect/c/b;->h()V

    return-void
.end method

.method private i()V
    .locals 5

    iget-object v0, p0, Lcom/color/eyeprotect/c/b;->l:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    const-string v2, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/color/eyeprotect/c/b;->b:Landroid/content/Context;

    iget-object p0, p0, Lcom/color/eyeprotect/c/b;->w:Landroid/content/BroadcastReceiver;

    const-string v3, "oppo.permission.OPPO_COMPONENT_SAFE"

    const/4 v4, 0x0

    invoke-virtual {v2, p0, v1, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method static synthetic i(Lcom/color/eyeprotect/c/b;)V
    .locals 0

    invoke-direct {p0}, Lcom/color/eyeprotect/c/b;->k()V

    return-void
.end method

.method private j()V
    .locals 3

    iget-object v0, p0, Lcom/color/eyeprotect/c/b;->l:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/color/eyeprotect/c/b;->b:Landroid/content/Context;

    iget-object v2, p0, Lcom/color/eyeprotect/c/b;->x:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v1, p0, Lcom/color/eyeprotect/c/b;->b:Landroid/content/Context;

    iget-object p0, p0, Lcom/color/eyeprotect/c/b;->v:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :catch_0
    :goto_0
    :try_start_1
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method static synthetic j(Lcom/color/eyeprotect/c/b;)V
    .locals 0

    invoke-direct {p0}, Lcom/color/eyeprotect/c/b;->o()V

    return-void
.end method

.method static synthetic k(Lcom/color/eyeprotect/c/b;)I
    .locals 0

    iget p0, p0, Lcom/color/eyeprotect/c/b;->o:I

    return p0
.end method

.method private k()V
    .locals 5

    iget-object v0, p0, Lcom/color/eyeprotect/c/b;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0}, Lcom/color/eyeprotect/util/e;->c(Landroid/content/ContentResolver;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput v0, p0, Lcom/color/eyeprotect/c/b;->n:I

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :goto_1
    iget-object v0, p0, Lcom/color/eyeprotect/c/b;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0}, Lcom/color/eyeprotect/util/e;->b(Landroid/content/ContentResolver;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/color/eyeprotect/c/b;->d:Z

    iget-object v0, p0, Lcom/color/eyeprotect/c/b;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0}, Lcom/color/eyeprotect/util/e;->a(Landroid/content/ContentResolver;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/color/eyeprotect/c/b;->f:Z

    iget-object v0, p0, Lcom/color/eyeprotect/c/b;->e:Lcom/color/eyeprotect/c/b$a;

    iget-object v1, p0, Lcom/color/eyeprotect/c/b;->b:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1}, Lcom/color/eyeprotect/util/e;->i(Landroid/content/ContentResolver;)I

    move-result v1

    iget-object v2, p0, Lcom/color/eyeprotect/c/b;->b:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v2}, Lcom/color/eyeprotect/util/e;->j(Landroid/content/ContentResolver;)I

    move-result v2

    iget-object v3, p0, Lcom/color/eyeprotect/c/b;->b:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {v3}, Lcom/color/eyeprotect/util/e;->k(Landroid/content/ContentResolver;)I

    move-result v3

    iget-object v4, p0, Lcom/color/eyeprotect/c/b;->b:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-static {v4}, Lcom/color/eyeprotect/util/e;->l(Landroid/content/ContentResolver;)I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/color/eyeprotect/c/b$a;->a(IIII)V

    iget-object v0, p0, Lcom/color/eyeprotect/c/b;->c:Lcom/color/eyeprotect/util/d;

    invoke-virtual {v0}, Lcom/color/eyeprotect/util/d;->b()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/color/eyeprotect/c/b;->g:Ljava/util/Calendar;

    iget-object v0, p0, Lcom/color/eyeprotect/c/b;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0}, Lcom/color/eyeprotect/util/e;->n(Landroid/content/ContentResolver;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/color/eyeprotect/c/b;->p:J

    invoke-direct {p0}, Lcom/color/eyeprotect/c/b;->l()V

    invoke-direct {p0}, Lcom/color/eyeprotect/c/b;->m()V

    invoke-direct {p0}, Lcom/color/eyeprotect/c/b;->f()V

    sget-object v0, Lcom/color/common/a/a;->a:Lcom/color/common/a/a;

    const-string v1, "ColorEyeProtect"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "loadData:mEnable="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/color/eyeprotect/c/b;->d:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ",mEnableTimerSetting="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/color/eyeprotect/c/b;->f:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ",mduration="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/color/eyeprotect/c/b;->e:Lcom/color/eyeprotect/c/b$a;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ",mCalTimerActive="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/color/eyeprotect/c/b;->g:Ljava/util/Calendar;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Lcom/color/common/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private l()V
    .locals 4

    iget-object v0, p0, Lcom/color/eyeprotect/c/b;->c:Lcom/color/eyeprotect/util/d;

    invoke-virtual {v0}, Lcom/color/eyeprotect/util/d;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/color/eyeprotect/c/b;->c:Lcom/color/eyeprotect/util/d;

    invoke-virtual {v0}, Lcom/color/eyeprotect/util/d;->c()I

    move-result v0

    :goto_0
    iput v0, p0, Lcom/color/eyeprotect/c/b;->s:I

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :goto_1
    sget-object v0, Lcom/color/common/a/a;->a:Lcom/color/common/a/a;

    const-string v1, "ColorEyeProtect"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "color mode "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/color/eyeprotect/c/b;->s:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/color/common/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/color/eyeprotect/c/b;->b:Landroid/content/Context;

    iget p0, p0, Lcom/color/eyeprotect/c/b;->s:I

    invoke-static {v0, p0}, Lcom/color/eyeprotect/util/b;->a(Landroid/content/Context;I)V

    invoke-static {}, Lcom/color/eyeprotect/util/b;->a()I

    move-result p0

    const/4 v0, -0x1

    if-ne p0, v0, :cond_1

    const/16 p0, 0x1d4c

    goto :goto_2

    :cond_1
    invoke-static {}, Lcom/color/eyeprotect/util/b;->a()I

    move-result p0

    :goto_2
    sput p0, Lcom/color/eyeprotect/c/b;->r:I

    return-void
.end method

.method private m()V
    .locals 5

    sget v0, Lcom/color/eyeprotect/c/b;->r:I

    int-to-float v0, v0

    const v1, 0x455f1000    # 3569.0f

    sub-float/2addr v1, v0

    const v0, 0x43e58000    # 459.0f

    add-float/2addr v1, v0

    const/high16 v0, 0x3f800000    # 1.0f

    mul-float/2addr v1, v0

    sget v0, Lcom/color/eyeprotect/c/b;->r:I

    rsub-int v0, v0, 0xa8c

    int-to-float v0, v0

    div-float/2addr v1, v0

    sget-object v0, Lcom/color/common/a/a;->a:Lcom/color/common/a/a;

    const-string v2, "ColorEyeProtect"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "calcSeekBarStartValue,"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v4, Lcom/color/eyeprotect/c/b;->r:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/color/common/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/color/eyeprotect/c/b;->b:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, v1}, Lcom/color/eyeprotect/util/e;->f(Landroid/content/ContentResolver;F)V

    return-void
.end method

.method private n()V
    .locals 5

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    sget-object v1, Lcom/color/common/a/a;->a:Lcom/color/common/a/a;

    const-string v2, "ColorEyeProtect"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateEyeProtectTimeReceiver  mEnableTimerSetting = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/color/eyeprotect/c/b;->f:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", mEnable = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/color/eyeprotect/c/b;->d:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, "calendar "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "\nmCalTimerActive "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/color/eyeprotect/c/b;->g:Ljava/util/Calendar;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/color/common/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/color/eyeprotect/c/b;->f:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/color/eyeprotect/c/b;->d:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Lcom/color/eyeprotect/c/b;->f:Z

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/color/eyeprotect/c/b;->q()V

    invoke-virtual {p0}, Lcom/color/eyeprotect/c/b;->d()V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0, v0}, Lcom/color/eyeprotect/c/b;->a(ZZZ)V

    :goto_0
    invoke-virtual {p0}, Lcom/color/eyeprotect/c/b;->c()V

    return-void
.end method

.method private o()V
    .locals 4

    sget-object v0, Lcom/color/common/a/a;->a:Lcom/color/common/a/a;

    const-string v1, "ColorEyeProtect"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateEyeProtect: mEnableTimerSetting="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/color/eyeprotect/c/b;->f:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ",mEnable="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/color/eyeprotect/c/b;->d:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/color/common/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/color/eyeprotect/c/b;->g()V

    iget-boolean v0, p0, Lcom/color/eyeprotect/c/b;->f:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/color/eyeprotect/c/b;->d:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0, v1, v1}, Lcom/color/eyeprotect/c/b;->a(ZZZ)V

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Lcom/color/eyeprotect/c/b;->f:Z

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/color/eyeprotect/c/b;->r()V

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v1, v1, v1}, Lcom/color/eyeprotect/c/b;->a(ZZZ)V

    :goto_0
    invoke-virtual {p0}, Lcom/color/eyeprotect/c/b;->d()V

    invoke-virtual {p0}, Lcom/color/eyeprotect/c/b;->c()V

    return-void
.end method

.method private p()V
    .locals 4

    iget-object v0, p0, Lcom/color/eyeprotect/c/b;->b:Landroid/content/Context;

    if-nez v0, :cond_0

    sget-object p0, Lcom/color/common/a/a;->a:Lcom/color/common/a/a;

    const-string v0, "ColorEyeProtect"

    const-string v1, "setupBackLight canceled due to null context"

    invoke-virtual {p0, v0, v1}, Lcom/color/common/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    sget-object v0, Lcom/color/common/a/a;->a:Lcom/color/common/a/a;

    const-string v1, "ColorEyeProtect"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setupBackLight: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/color/eyeprotect/c/b;->n:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/color/eyeprotect/c/b;->d:Z

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Lcom/color/common/a/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private q()V
    .locals 5

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    sget-object v1, Lcom/color/common/a/a;->a:Lcom/color/common/a/a;

    const-string v2, "ColorEyeProtect"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateEyeProtectReceiverState"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/color/eyeprotect/c/b;->m:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/color/eyeprotect/c/b;->c:Lcom/color/eyeprotect/util/d;

    invoke-virtual {v4}, Lcom/color/eyeprotect/util/d;->b()Ljava/util/Calendar;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/color/common/a/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/color/eyeprotect/c/b;->c:Lcom/color/eyeprotect/util/d;

    invoke-virtual {v1}, Lcom/color/eyeprotect/util/d;->b()Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/color/eyeprotect/c/b;->m:Z

    if-eqz v1, :cond_0

    sget-object v0, Lcom/color/common/a/a;->a:Lcom/color/common/a/a;

    const-string v1, "ColorEyeProtect"

    const-string v3, "receive and userSetEnable"

    invoke-virtual {v0, v1, v3}, Lcom/color/common/a/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean v2, p0, Lcom/color/eyeprotect/c/b;->m:Z

    goto :goto_0

    :cond_0
    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    const/16 v3, 0xc

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iget-object v3, p0, Lcom/color/eyeprotect/c/b;->e:Lcom/color/eyeprotect/c/b$a;

    invoke-virtual {v3, v1, v0}, Lcom/color/eyeprotect/c/b$a;->a(II)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    invoke-virtual {p0, v0, v2, v2}, Lcom/color/eyeprotect/c/b;->a(ZZZ)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v2, v2, v2}, Lcom/color/eyeprotect/c/b;->a(ZZZ)V

    :goto_0
    return-void
.end method

.method private r()V
    .locals 6

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iget-object v1, p0, Lcom/color/eyeprotect/c/b;->c:Lcom/color/eyeprotect/util/d;

    invoke-virtual {v1}, Lcom/color/eyeprotect/util/d;->b()Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    sget-object v0, Lcom/color/common/a/a;->a:Lcom/color/common/a/a;

    const-string v1, "ColorEyeProtect"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateEyeProtectRestart:mEnable"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, p0, Lcom/color/eyeprotect/c/b;->d:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Lcom/color/common/a/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/color/eyeprotect/c/b;->d:Z

    if-eqz v0, :cond_0

    :goto_0
    invoke-virtual {p0, v2, v3, v3}, Lcom/color/eyeprotect/c/b;->a(ZZZ)V

    goto :goto_1

    :cond_0
    invoke-virtual {p0, v3, v3, v3}, Lcom/color/eyeprotect/c/b;->a(ZZZ)V

    goto :goto_1

    :cond_1
    sget-object v1, Lcom/color/common/a/a;->a:Lcom/color/common/a/a;

    const-string v4, "ColorEyeProtect"

    const-string v5, "afterEyeprotect:"

    invoke-virtual {v1, v4, v5}, Lcom/color/common/a/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    const/16 v4, 0xc

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iget-object v4, p0, Lcom/color/eyeprotect/c/b;->e:Lcom/color/eyeprotect/c/b$a;

    invoke-virtual {v4, v1, v0}, Lcom/color/eyeprotect/c/b$a;->a(II)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :goto_1
    return-void
.end method

.method private s()V
    .locals 4

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/16 v2, 0xb

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    const/16 v3, 0xc

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    move v2, v0

    :goto_0
    iget-boolean v3, p0, Lcom/color/eyeprotect/c/b;->f:Z

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/color/eyeprotect/c/b;->e:Lcom/color/eyeprotect/c/b$a;

    invoke-virtual {v3, v2, v0}, Lcom/color/eyeprotect/c/b$a;->a(II)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    invoke-virtual {p0, v0, v1, v1}, Lcom/color/eyeprotect/c/b;->a(ZZZ)V

    goto :goto_1

    :cond_1
    invoke-virtual {p0, v1, v1, v1}, Lcom/color/eyeprotect/c/b;->a(ZZZ)V

    :goto_1
    invoke-virtual {p0}, Lcom/color/eyeprotect/c/b;->d()V

    invoke-virtual {p0}, Lcom/color/eyeprotect/c/b;->c()V

    return-void
.end method

.method private t()V
    .locals 1

    iget-object v0, p0, Lcom/color/eyeprotect/c/b;->g:Ljava/util/Calendar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/color/eyeprotect/c/b;->c:Lcom/color/eyeprotect/util/d;

    iget-object p0, p0, Lcom/color/eyeprotect/c/b;->g:Ljava/util/Calendar;

    invoke-virtual {v0, p0}, Lcom/color/eyeprotect/util/d;->a(Ljava/util/Calendar;)V

    :cond_0
    return-void
.end method

.method private u()V
    .locals 5

    iget v0, p0, Lcom/color/eyeprotect/c/b;->t:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/color/eyeprotect/c/b;->t:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    iget-object v0, p0, Lcom/color/eyeprotect/c/b;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0}, Lcom/color/eyeprotect/util/e;->f(Landroid/content/ContentResolver;)F

    move-result v0

    sub-float/2addr v1, v0

    iget v2, p0, Lcom/color/eyeprotect/c/b;->t:F

    mul-float/2addr v1, v2

    add-float/2addr v1, v0

    iget-object v0, p0, Lcom/color/eyeprotect/c/b;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/color/eyeprotect/util/e;->c(Landroid/content/ContentResolver;F)V

    sget-object v0, Lcom/color/common/a/a;->a:Lcom/color/common/a/a;

    const-string v2, "ColorEyeProtect"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mapLastSeekBarPercentageToLevel: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/color/eyeprotect/c/b;->t:F

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p0, ","

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v2, p0}, Lcom/color/common/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private v()V
    .locals 5

    iget-object v0, p0, Lcom/color/eyeprotect/c/b;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0}, Lcom/color/eyeprotect/util/e;->e(Landroid/content/ContentResolver;)F

    move-result v0

    iget-object v1, p0, Lcom/color/eyeprotect/c/b;->b:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1}, Lcom/color/eyeprotect/util/e;->f(Landroid/content/ContentResolver;)F

    move-result v1

    sub-float v2, v0, v1

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float/2addr v3, v1

    div-float/2addr v2, v3

    iput v2, p0, Lcom/color/eyeprotect/c/b;->t:F

    sget-object v1, Lcom/color/common/a/a;->a:Lcom/color/common/a/a;

    const-string v2, "ColorEyeProtect"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "saveLastSeekBarPercentage: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/color/eyeprotect/c/b;->t:F

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p0, ","

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, v2, p0}, Lcom/color/common/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a()I
    .locals 0

    iget p0, p0, Lcom/color/eyeprotect/c/b;->n:I

    return p0
.end method

.method public a(D)V
    .locals 9

    const-wide/16 v0, 0x0

    cmpl-double v0, p1, v0

    if-nez v0, :cond_0

    iget-boolean v1, p0, Lcom/color/eyeprotect/c/b;->d:Z

    if-eqz v1, :cond_0

    return-void

    :cond_0
    iget-boolean v5, p0, Lcom/color/eyeprotect/c/b;->d:Z

    if-nez v0, :cond_1

    const-wide/16 v0, 0x3e8

    :goto_0
    move-wide v6, v0

    goto :goto_1

    :cond_1
    const-wide/16 v0, 0x64

    goto :goto_0

    :goto_1
    const/4 v8, 0x1

    move-object v2, p0

    move-wide v3, p1

    invoke-virtual/range {v2 .. v8}, Lcom/color/eyeprotect/c/b;->a(DZJZ)V

    return-void
.end method

.method public a(DZI)V
    .locals 6

    const/4 v5, -0x2

    move-object v0, p0

    move-wide v1, p1

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/color/eyeprotect/c/b;->a(DZII)V

    return-void
.end method

.method public a(DZII)V
    .locals 8

    const-wide/16 v5, -0x1

    move-object v0, p0

    move-wide v1, p1

    move v3, p3

    move v4, p4

    move v7, p5

    invoke-virtual/range {v0 .. v7}, Lcom/color/eyeprotect/c/b;->a(DZIJI)V

    return-void
.end method

.method public a(DZIJI)V
    .locals 9

    const/4 v7, 0x0

    move-object v0, p0

    move-wide v1, p1

    move v3, p3

    move v4, p4

    move-wide v5, p5

    move/from16 v8, p7

    invoke-virtual/range {v0 .. v8}, Lcom/color/eyeprotect/c/b;->a(DZIJZI)V

    return-void
.end method

.method public a(DZIJZI)V
    .locals 9

    invoke-direct {p0, p1, p2}, Lcom/color/eyeprotect/c/b;->d(D)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/color/eyeprotect/c/b;->b(D)I

    move-result v4

    new-instance v0, Lcom/color/eyeprotect/d/b;

    move-object v1, v0

    move v2, p3

    move v3, p4

    move-wide v5, p5

    move/from16 v7, p7

    move/from16 v8, p8

    invoke-direct/range {v1 .. v8}, Lcom/color/eyeprotect/d/b;-><init>(ZIIJZI)V

    sget-object v1, Lcom/color/eyeprotect/c/a;->a:Lcom/color/eyeprotect/c/a$b;

    invoke-virtual {v1}, Lcom/color/eyeprotect/c/a$b;->a()Lcom/color/eyeprotect/c/a;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/color/eyeprotect/c/a;->a(Lcom/color/eyeprotect/d/b;)V

    return-void
.end method

.method public a(DZJZ)V
    .locals 10

    invoke-direct {p0, p1, p2}, Lcom/color/eyeprotect/c/b;->d(D)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    move-object v0, p0

    iget v5, v0, Lcom/color/eyeprotect/c/b;->n:I

    const/4 v9, -0x2

    move-object v1, p0

    move-wide v2, p1

    move v4, p3

    move-wide v6, p4

    move/from16 v8, p6

    invoke-virtual/range {v1 .. v9}, Lcom/color/eyeprotect/c/b;->a(DZIJZI)V

    return-void
.end method

.method public a(IIII)V
    .locals 1

    iget-object v0, p0, Lcom/color/eyeprotect/c/b;->e:Lcom/color/eyeprotect/c/b$a;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/color/eyeprotect/c/b$a;->a(IIII)V

    invoke-direct {p0}, Lcom/color/eyeprotect/c/b;->s()V

    return-void
.end method

.method public a(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/color/eyeprotect/c/b;->f:Z

    invoke-direct {p0}, Lcom/color/eyeprotect/c/b;->s()V

    return-void
.end method

.method public a(ZZZ)V
    .locals 7

    sget-object v0, Lcom/color/common/a/a;->a:Lcom/color/common/a/a;

    const-string v1, "ColorEyeProtect"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setEyeProtectEnable, enable = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", byUser = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", mEnable = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/color/eyeprotect/c/b;->d:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/color/common/a/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/color/eyeprotect/c/b;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0}, Lcom/color/eyeprotect/util/e;->c(Landroid/content/ContentResolver;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iput v1, p0, Lcom/color/eyeprotect/c/b;->n:I

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/color/eyeprotect/c/b;->n:I

    :goto_0
    iget-boolean v0, p0, Lcom/color/eyeprotect/c/b;->d:Z

    if-nez v0, :cond_1

    if-nez p1, :cond_2

    :cond_1
    if-eqz p1, :cond_3

    if-eqz p3, :cond_3

    :cond_2
    sget-object p3, Lcom/color/eyeprotect/f/a;->a:Lcom/color/eyeprotect/f/a;

    iget-object v0, p0, Lcom/color/eyeprotect/c/b;->b:Landroid/content/Context;

    const-string v2, "mode"

    iget v3, p0, Lcom/color/eyeprotect/c/b;->n:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "protect_eyes_mode"

    invoke-virtual {p3, v0, v2, v3, v4}, Lcom/color/eyeprotect/f/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    if-eqz p1, :cond_4

    iput-boolean v1, p0, Lcom/color/eyeprotect/c/b;->q:Z

    :cond_4
    iget-boolean p3, p0, Lcom/color/eyeprotect/c/b;->d:Z

    const-wide/32 v0, 0xea60

    if-nez p3, :cond_5

    if-eqz p1, :cond_5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    div-long/2addr v2, v0

    iput-wide v2, p0, Lcom/color/eyeprotect/c/b;->p:J

    iget-object p3, p0, Lcom/color/eyeprotect/c/b;->b:Landroid/content/Context;

    invoke-virtual {p3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p3

    iget-wide v0, p0, Lcom/color/eyeprotect/c/b;->p:J

    invoke-static {p3, v0, v1}, Lcom/color/eyeprotect/util/e;->a(Landroid/content/ContentResolver;J)V

    iget-object p3, p0, Lcom/color/eyeprotect/c/b;->b:Landroid/content/Context;

    invoke-virtual {p3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p3

    invoke-static {p3}, Lcom/color/eyeprotect/util/e;->e(Landroid/content/ContentResolver;)F

    move-result p3

    float-to-double v1, p3

    const-wide/16 v4, 0x7d0

    :goto_1
    const/4 v6, 0x0

    move-object v0, p0

    move v3, p1

    invoke-virtual/range {v0 .. v6}, Lcom/color/eyeprotect/c/b;->a(DZJZ)V

    goto :goto_3

    :cond_5
    iget-boolean p3, p0, Lcom/color/eyeprotect/c/b;->d:Z

    if-eqz p3, :cond_7

    if-nez p1, :cond_7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    div-long/2addr v2, v0

    iget-wide v0, p0, Lcom/color/eyeprotect/c/b;->p:J

    const-wide/16 v4, 0x0

    cmp-long p3, v0, v4

    if-eqz p3, :cond_6

    iget-wide v0, p0, Lcom/color/eyeprotect/c/b;->p:J

    cmp-long p3, v2, v0

    if-lez p3, :cond_6

    sget-object p3, Lcom/color/eyeprotect/f/a;->a:Lcom/color/eyeprotect/f/a;

    iget-object v0, p0, Lcom/color/eyeprotect/c/b;->b:Landroid/content/Context;

    const-string v1, "time"

    iget-wide v4, p0, Lcom/color/eyeprotect/c/b;->p:J

    sub-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    const-string v3, "protect_eyes_single_enable_time"

    invoke-virtual {p3, v0, v1, v2, v3}, Lcom/color/eyeprotect/f/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    iget-object p3, p0, Lcom/color/eyeprotect/c/b;->b:Landroid/content/Context;

    invoke-static {p3}, Lcom/color/eyeprotect/util/e;->b(Landroid/content/Context;)F

    move-result p3

    float-to-double v1, p3

    const-wide/16 v4, 0x3e8

    goto :goto_1

    :cond_7
    sget-object p3, Lcom/color/eyeprotect/c/a;->a:Lcom/color/eyeprotect/c/a$b;

    invoke-virtual {p3}, Lcom/color/eyeprotect/c/a$b;->a()Lcom/color/eyeprotect/c/a;

    move-result-object p3

    invoke-virtual {p3}, Lcom/color/eyeprotect/c/a;->b()Z

    move-result p3

    if-nez p3, :cond_9

    if-eqz p1, :cond_8

    iget-object p3, p0, Lcom/color/eyeprotect/c/b;->b:Landroid/content/Context;

    invoke-virtual {p3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p3

    invoke-static {p3}, Lcom/color/eyeprotect/util/e;->e(Landroid/content/ContentResolver;)F

    move-result p3

    goto :goto_2

    :cond_8
    iget-object p3, p0, Lcom/color/eyeprotect/c/b;->b:Landroid/content/Context;

    invoke-static {p3}, Lcom/color/eyeprotect/util/e;->b(Landroid/content/Context;)F

    move-result p3

    :goto_2
    float-to-double v0, p3

    iget p3, p0, Lcom/color/eyeprotect/c/b;->n:I

    invoke-virtual {p0, v0, v1, p1, p3}, Lcom/color/eyeprotect/c/b;->a(DZI)V

    goto :goto_3

    :cond_9
    sget-object p3, Lcom/color/eyeprotect/c/a;->a:Lcom/color/eyeprotect/c/a$b;

    invoke-virtual {p3}, Lcom/color/eyeprotect/c/a$b;->a()Lcom/color/eyeprotect/c/a;

    move-result-object p3

    iget v0, p0, Lcom/color/eyeprotect/c/b;->n:I

    invoke-virtual {p3, v0}, Lcom/color/eyeprotect/c/a;->a(I)V

    :goto_3
    iput-boolean p1, p0, Lcom/color/eyeprotect/c/b;->d:Z

    invoke-direct {p0}, Lcom/color/eyeprotect/c/b;->p()V

    if-eqz p2, :cond_a

    invoke-virtual {p0}, Lcom/color/eyeprotect/c/b;->d()V

    invoke-virtual {p0}, Lcom/color/eyeprotect/c/b;->c()V

    :cond_a
    iget-object p1, p0, Lcom/color/eyeprotect/c/b;->b:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iget-boolean p0, p0, Lcom/color/eyeprotect/c/b;->d:Z

    invoke-static {p1, p0}, Lcom/color/eyeprotect/util/e;->a(Landroid/content/ContentResolver;Z)V

    return-void
.end method

.method public b(D)I
    .locals 6

    const-wide v0, 0x3fc5c28f60000000L    # 0.17000000178813934

    cmpg-double p0, p1, v0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    if-gtz p0, :cond_0

    sget p0, Lcom/color/eyeprotect/c/b;->r:I

    add-int/lit16 p0, p0, -0x251c

    int-to-double v4, p0

    mul-double/2addr p1, v4

    mul-double/2addr p1, v2

    div-double/2addr p1, v0

    double-to-float p0, p1

    const p1, 0x46147000    # 9500.0f

    add-float/2addr p0, p1

    goto :goto_0

    :cond_0
    sget p0, Lcom/color/eyeprotect/c/b;->r:I

    rsub-int p0, p0, 0xa8c

    int-to-double v0, p0

    mul-double/2addr p1, v0

    sget p0, Lcom/color/eyeprotect/c/b;->r:I

    int-to-float p0, p0

    const v0, 0x43e58000    # 459.0f

    sub-float/2addr p0, v0

    float-to-double v0, p0

    add-double/2addr p1, v0

    mul-double/2addr p1, v2

    const-wide v0, 0x3fea8f5c20000000L    # 0.8299999833106995

    div-double/2addr p1, v0

    double-to-float p0, p1

    :goto_0
    sget-object p1, Lcom/color/common/a/a;->a:Lcom/color/common/a/a;

    const-string p2, "ColorEyeProtect"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "levelToCCT: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Lcom/color/common/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    float-to-int p0, p0

    return p0
.end method

.method public c()V
    .locals 6

    iget-object v0, p0, Lcom/color/eyeprotect/c/b;->b:Landroid/content/Context;

    iget-object v1, p0, Lcom/color/eyeprotect/c/b;->k:Landroid/content/Intent;

    const/high16 v2, 0x20000000

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/color/eyeprotect/c/b;->u:Landroid/app/AlarmManager;

    invoke-virtual {v1, v0}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    :cond_0
    iget-object v0, p0, Lcom/color/eyeprotect/c/b;->b:Landroid/content/Context;

    iget-object v1, p0, Lcom/color/eyeprotect/c/b;->j:Landroid/content/Intent;

    invoke-static {v0, v3, v1, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/color/eyeprotect/c/b;->u:Landroid/app/AlarmManager;

    invoke-virtual {v1, v0}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    :cond_1
    sget-object v0, Lcom/color/common/a/a;->a:Lcom/color/common/a/a;

    const-string v1, "ColorEyeProtect"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateEyeProtectAlarm: mEnableTimerSetting="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/color/eyeprotect/c/b;->f:Z

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " ,mEnable="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/color/eyeprotect/c/b;->d:Z

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/color/common/a/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/color/eyeprotect/c/b;->f:Z

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/color/eyeprotect/c/b;->o:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/color/eyeprotect/c/b;->o:I

    iget-boolean v0, p0, Lcom/color/eyeprotect/c/b;->d:Z

    const/high16 v1, 0x8000000

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/color/eyeprotect/c/b;->k:Landroid/content/Intent;

    const-string v2, "requestCode"

    iget v4, p0, Lcom/color/eyeprotect/c/b;->o:I

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v0, p0, Lcom/color/eyeprotect/c/b;->b:Landroid/content/Context;

    iget-object v2, p0, Lcom/color/eyeprotect/c/b;->k:Landroid/content/Intent;

    invoke-static {v0, v3, v2, v1}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iget-object v1, p0, Lcom/color/eyeprotect/c/b;->u:Landroid/app/AlarmManager;

    iget-object p0, p0, Lcom/color/eyeprotect/c/b;->i:Ljava/util/Calendar;

    :goto_0
    invoke-virtual {p0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    invoke-virtual {v1, v3, v4, v5, v0}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/color/eyeprotect/c/b;->j:Landroid/content/Intent;

    const-string v2, "requestCode"

    iget v4, p0, Lcom/color/eyeprotect/c/b;->o:I

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v0, p0, Lcom/color/eyeprotect/c/b;->b:Landroid/content/Context;

    iget-object v2, p0, Lcom/color/eyeprotect/c/b;->j:Landroid/content/Intent;

    invoke-static {v0, v3, v2, v1}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iget-object v1, p0, Lcom/color/eyeprotect/c/b;->u:Landroid/app/AlarmManager;

    iget-object p0, p0, Lcom/color/eyeprotect/c/b;->h:Ljava/util/Calendar;

    goto :goto_0

    :cond_3
    :goto_1
    return-void
.end method

.method public c(D)V
    .locals 0

    return-void
.end method

.method public d()V
    .locals 11

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/color/eyeprotect/c/b;->m:Z

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    iput-object v2, p0, Lcom/color/eyeprotect/c/b;->h:Ljava/util/Calendar;

    iget-object v2, p0, Lcom/color/eyeprotect/c/b;->h:Ljava/util/Calendar;

    iget-object v3, p0, Lcom/color/eyeprotect/c/b;->e:Lcom/color/eyeprotect/c/b$a;

    invoke-static {v3}, Lcom/color/eyeprotect/c/b$a;->a(Lcom/color/eyeprotect/c/b$a;)I

    move-result v3

    const/16 v4, 0xb

    invoke-virtual {v2, v4, v3}, Ljava/util/Calendar;->set(II)V

    iget-object v2, p0, Lcom/color/eyeprotect/c/b;->h:Ljava/util/Calendar;

    iget-object v3, p0, Lcom/color/eyeprotect/c/b;->e:Lcom/color/eyeprotect/c/b$a;

    invoke-static {v3}, Lcom/color/eyeprotect/c/b$a;->b(Lcom/color/eyeprotect/c/b$a;)I

    move-result v3

    const/16 v5, 0xc

    invoke-virtual {v2, v5, v3}, Ljava/util/Calendar;->set(II)V

    iget-object v2, p0, Lcom/color/eyeprotect/c/b;->h:Ljava/util/Calendar;

    const/16 v3, 0xd

    invoke-virtual {v2, v3, v0}, Ljava/util/Calendar;->set(II)V

    iget-object v2, p0, Lcom/color/eyeprotect/c/b;->h:Ljava/util/Calendar;

    const/16 v6, 0xe

    invoke-virtual {v2, v6, v0}, Ljava/util/Calendar;->set(II)V

    iget-object v2, p0, Lcom/color/eyeprotect/c/b;->h:Ljava/util/Calendar;

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v7

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v9

    cmp-long v2, v7, v9

    const/4 v7, 0x5

    const/4 v8, 0x1

    if-gtz v2, :cond_0

    iget-object v2, p0, Lcom/color/eyeprotect/c/b;->h:Ljava/util/Calendar;

    invoke-virtual {v2, v7, v8}, Ljava/util/Calendar;->add(II)V

    :cond_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    iput-object v2, p0, Lcom/color/eyeprotect/c/b;->i:Ljava/util/Calendar;

    iget-boolean v2, p0, Lcom/color/eyeprotect/c/b;->f:Z

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/color/eyeprotect/c/b;->i:Ljava/util/Calendar;

    iget-object v9, p0, Lcom/color/eyeprotect/c/b;->e:Lcom/color/eyeprotect/c/b$a;

    invoke-static {v9}, Lcom/color/eyeprotect/c/b$a;->c(Lcom/color/eyeprotect/c/b$a;)I

    move-result v9

    invoke-virtual {v2, v4, v9}, Ljava/util/Calendar;->set(II)V

    iget-object v2, p0, Lcom/color/eyeprotect/c/b;->i:Ljava/util/Calendar;

    iget-object v4, p0, Lcom/color/eyeprotect/c/b;->e:Lcom/color/eyeprotect/c/b$a;

    invoke-static {v4}, Lcom/color/eyeprotect/c/b$a;->d(Lcom/color/eyeprotect/c/b$a;)I

    move-result v4

    invoke-virtual {v2, v5, v4}, Ljava/util/Calendar;->set(II)V

    iget-object v2, p0, Lcom/color/eyeprotect/c/b;->i:Ljava/util/Calendar;

    invoke-virtual {v2, v3, v0}, Ljava/util/Calendar;->set(II)V

    iget-object v2, p0, Lcom/color/eyeprotect/c/b;->i:Ljava/util/Calendar;

    invoke-virtual {v2, v6, v0}, Ljava/util/Calendar;->set(II)V

    :goto_0
    iget-object v0, p0, Lcom/color/eyeprotect/c/b;->i:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    cmp-long v0, v2, v0

    if-gtz v0, :cond_2

    iget-object v0, p0, Lcom/color/eyeprotect/c/b;->i:Ljava/util/Calendar;

    invoke-virtual {v0, v7, v8}, Ljava/util/Calendar;->add(II)V

    :cond_2
    iget-boolean v0, p0, Lcom/color/eyeprotect/c/b;->f:Z

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/color/eyeprotect/c/b;->d:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/color/eyeprotect/c/b;->h:Ljava/util/Calendar;

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/color/eyeprotect/c/b;->i:Ljava/util/Calendar;

    goto :goto_1

    :cond_4
    const/4 v0, 0x0

    :goto_1
    iput-object v0, p0, Lcom/color/eyeprotect/c/b;->g:Ljava/util/Calendar;

    iget-boolean v0, p0, Lcom/color/eyeprotect/c/b;->f:Z

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/color/eyeprotect/c/b;->g:Ljava/util/Calendar;

    if-eqz v0, :cond_6

    iget-boolean v0, p0, Lcom/color/eyeprotect/c/b;->d:Z

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/color/eyeprotect/c/b;->g:Ljava/util/Calendar;

    iget-object v1, p0, Lcom/color/eyeprotect/c/b;->i:Ljava/util/Calendar;

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->after(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    sget-object v0, Lcom/color/common/a/a;->a:Lcom/color/common/a/a;

    const-string v1, "ColorEyeProtect"

    const-string v2, "mannual set disable"

    invoke-virtual {v0, v1, v2}, Lcom/color/common/a/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean v8, p0, Lcom/color/eyeprotect/c/b;->m:Z

    :cond_5
    iget-boolean v0, p0, Lcom/color/eyeprotect/c/b;->d:Z

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/color/eyeprotect/c/b;->g:Ljava/util/Calendar;

    iget-object v1, p0, Lcom/color/eyeprotect/c/b;->h:Ljava/util/Calendar;

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->after(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    sget-object v0, Lcom/color/common/a/a;->a:Lcom/color/common/a/a;

    const-string v1, "ColorEyeProtect"

    const-string v2, "mannual set enable"

    invoke-virtual {v0, v1, v2}, Lcom/color/common/a/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean v8, p0, Lcom/color/eyeprotect/c/b;->m:Z

    :cond_6
    invoke-direct {p0}, Lcom/color/eyeprotect/c/b;->t()V

    sget-object v0, Lcom/color/common/a/a;->a:Lcom/color/common/a/a;

    const-string v1, "ColorEyeProtect"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mEyeProtectOpenCalendar: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/color/eyeprotect/c/b;->h:Ljava/util/Calendar;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "\nmEyeProtectCloseCalendar "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/color/eyeprotect/c/b;->i:Ljava/util/Calendar;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "\nmCalTimerActive "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/color/eyeprotect/c/b;->g:Ljava/util/Calendar;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Lcom/color/common/a/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public e()V
    .locals 2

    iget-object v0, p0, Lcom/color/eyeprotect/c/b;->c:Lcom/color/eyeprotect/util/d;

    invoke-virtual {v0}, Lcom/color/eyeprotect/util/d;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/color/eyeprotect/c/b;->v()V

    invoke-direct {p0}, Lcom/color/eyeprotect/c/b;->l()V

    invoke-direct {p0}, Lcom/color/eyeprotect/c/b;->m()V

    invoke-direct {p0}, Lcom/color/eyeprotect/c/b;->u()V

    invoke-direct {p0}, Lcom/color/eyeprotect/c/b;->f()V

    invoke-direct {p0}, Lcom/color/eyeprotect/c/b;->o()V

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/color/common/a/a;->a:Lcom/color/common/a/a;

    const-string v0, "ColorEyeProtect"

    const-string v1, "setColorMode in device not support"

    invoke-virtual {p0, v0, v1}, Lcom/color/common/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
