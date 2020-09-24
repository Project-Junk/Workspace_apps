.class final Lcom/coloros/settings/feature/weather/module/a/a$1;
.super Ljava/lang/Object;
.source "WeatherServiceBridge.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/settings/feature/weather/module/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/coloros/settings/feature/weather/module/a/a;


# direct methods
.method constructor <init>(Lcom/coloros/settings/feature/weather/module/a/a;)V
    .locals 0

    .line 61
    iput-object p1, p0, Lcom/coloros/settings/feature/weather/module/a/a$1;->a:Lcom/coloros/settings/feature/weather/module/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final binderDied()V
    .locals 2

    .line 65
    iget-object v0, p0, Lcom/coloros/settings/feature/weather/module/a/a$1;->a:Lcom/coloros/settings/feature/weather/module/a/a;

    const/4 v1, 0x0

    .line 1037
    iput-boolean v1, v0, Lcom/coloros/settings/feature/weather/module/a/a;->c:Z

    return-void
.end method
