.class public final Lcom/coloros/settings/feature/homepage/user/a$a;
.super Ljava/lang/Object;
.source "UserCenterProfileHelper.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/settings/feature/homepage/user/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field public a:Z

.field public b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic c:Lcom/coloros/settings/feature/homepage/user/a;


# direct methods
.method public constructor <init>(Lcom/coloros/settings/feature/homepage/user/a;)V
    .locals 0

    .line 126
    iput-object p1, p0, Lcom/coloros/settings/feature/homepage/user/a$a;->c:Lcom/coloros/settings/feature/homepage/user/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 128
    iput-boolean p1, p0, Lcom/coloros/settings/feature/homepage/user/a$a;->a:Z

    .line 129
    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p1, p0, Lcom/coloros/settings/feature/homepage/user/a$a;->b:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Integer;Ljava/lang/Runnable;)V
    .locals 1

    .line 133
    iget-object v0, p0, Lcom/coloros/settings/feature/homepage/user/a$a;->b:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1

    .line 138
    iget-object p1, p0, Lcom/coloros/settings/feature/homepage/user/a$a;->c:Lcom/coloros/settings/feature/homepage/user/a;

    new-instance v0, Landroid/os/Messenger;

    invoke-direct {v0, p2}, Landroid/os/Messenger;-><init>(Landroid/os/IBinder;)V

    .line 1021
    iput-object v0, p1, Lcom/coloros/settings/feature/homepage/user/a;->b:Landroid/os/Messenger;

    .line 139
    iget-object p1, p0, Lcom/coloros/settings/feature/homepage/user/a$a;->b:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map$Entry;

    .line 140
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Runnable;

    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 142
    :cond_0
    iget-object p1, p0, Lcom/coloros/settings/feature/homepage/user/a$a;->b:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->clear()V

    const/4 p1, 0x1

    .line 143
    iput-boolean p1, p0, Lcom/coloros/settings/feature/homepage/user/a$a;->a:Z

    return-void
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    .line 148
    iget-object p1, p0, Lcom/coloros/settings/feature/homepage/user/a$a;->c:Lcom/coloros/settings/feature/homepage/user/a;

    const/4 v0, 0x0

    .line 2021
    iput-object v0, p1, Lcom/coloros/settings/feature/homepage/user/a;->b:Landroid/os/Messenger;

    const/4 p1, 0x0

    .line 149
    iput-boolean p1, p0, Lcom/coloros/settings/feature/homepage/user/a$a;->a:Z

    return-void
.end method
