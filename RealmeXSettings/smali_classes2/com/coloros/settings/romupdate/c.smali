.class public Lcom/coloros/settings/romupdate/c;
.super Ljava/lang/Object;
.source "TaoPasswordListParser.java"


# static fields
.field private static volatile b:Lcom/coloros/settings/romupdate/c;


# instance fields
.field public a:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 22
    iput-boolean v0, p0, Lcom/coloros/settings/romupdate/c;->a:Z

    if-eqz p1, :cond_0

    .line 27
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/coloros/settings/romupdate/c$1;

    invoke-direct {v1, p0, p1}, Lcom/coloros/settings/romupdate/c$1;-><init>(Lcom/coloros/settings/romupdate/c;Landroid/content/Context;)V

    const-string p1, "TaoPasswordListParser"

    invoke-direct {v0, v1, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 32
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_0
    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/coloros/settings/romupdate/c;
    .locals 2

    .line 37
    sget-object v0, Lcom/coloros/settings/romupdate/c;->b:Lcom/coloros/settings/romupdate/c;

    if-nez v0, :cond_1

    .line 38
    const-class v0, Lcom/coloros/settings/romupdate/c;

    monitor-enter v0

    .line 39
    :try_start_0
    sget-object v1, Lcom/coloros/settings/romupdate/c;->b:Lcom/coloros/settings/romupdate/c;

    if-nez v1, :cond_0

    .line 40
    new-instance v1, Lcom/coloros/settings/romupdate/c;

    invoke-direct {v1, p0}, Lcom/coloros/settings/romupdate/c;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/coloros/settings/romupdate/c;->b:Lcom/coloros/settings/romupdate/c;

    .line 42
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 44
    :cond_1
    :goto_0
    sget-object p0, Lcom/coloros/settings/romupdate/c;->b:Lcom/coloros/settings/romupdate/c;

    return-object p0
.end method


# virtual methods
.method public final b(Landroid/content/Context;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 55
    iput-boolean v0, p0, Lcom/coloros/settings/romupdate/c;->a:Z

    .line 56
    invoke-static {p1}, Lcom/coloros/settings/utils/au;->a(Landroid/content/Context;)Lcom/coloros/settings/utils/au;

    move-result-object p1

    const-string v1, "sys_tao_password_config_list"

    .line 57
    invoke-virtual {p1, v1}, Lcom/coloros/settings/utils/au;->a(Ljava/lang/String;)Lcom/coloros/settings/utils/au;

    move-result-object p1

    const-string v1, "tao_enable"

    .line 58
    invoke-virtual {p1, v1, v0}, Lcom/coloros/settings/utils/au;->a(Ljava/lang/String;I)Lcom/coloros/settings/utils/au;

    move-result-object p1

    .line 59
    invoke-virtual {p1}, Lcom/coloros/settings/utils/au;->a()Lcom/coloros/settings/utils/au$a;

    move-result-object p1

    .line 60
    invoke-virtual {p1}, Lcom/coloros/settings/utils/au$a;->a()Lcom/coloros/settings/utils/au$a;

    move-result-object p1

    .line 61
    invoke-virtual {p1, v1}, Lcom/coloros/settings/utils/au$a;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    .line 62
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    .line 63
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lcom/coloros/settings/romupdate/c;->a:Z

    :cond_1
    return-void
.end method
