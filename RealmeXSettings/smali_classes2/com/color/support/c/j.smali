.class public final Lcom/color/support/c/j;
.super Ljava/lang/Object;
.source "ColorStatusBarResponseUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/color/support/c/j$a;
    }
.end annotation


# instance fields
.field public a:Lcom/color/support/c/j$a;

.field private b:Landroid/content/BroadcastReceiver;

.field private c:Landroid/app/Activity;

.field private final d:Ljava/lang/String;

.field private e:Z


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "ColorStatusBarResponseUtil"

    .line 30
    iput-object v0, p0, Lcom/color/support/c/j;->d:Ljava/lang/String;

    .line 42
    iput-object p1, p0, Lcom/color/support/c/j;->c:Landroid/app/Activity;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .line 1054
    iget-boolean v0, p0, Lcom/color/support/c/j;->e:Z

    if-nez v0, :cond_0

    .line 1055
    new-instance v0, Lcom/color/support/c/j$1;

    invoke-direct {v0, p0}, Lcom/color/support/c/j$1;-><init>(Lcom/color/support/c/j;)V

    iput-object v0, p0, Lcom/color/support/c/j;->b:Landroid/content/BroadcastReceiver;

    .line 1067
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.color.clicktop"

    .line 1068
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const/4 v1, 0x1

    .line 1069
    iput-boolean v1, p0, Lcom/color/support/c/j;->e:Z

    .line 1070
    iget-object v1, p0, Lcom/color/support/c/j;->c:Landroid/app/Activity;

    iget-object v2, p0, Lcom/color/support/c/j;->b:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_0
    return-void
.end method

.method public final b()V
    .locals 2

    .line 79
    iget-boolean v0, p0, Lcom/color/support/c/j;->e:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 80
    iput-boolean v0, p0, Lcom/color/support/c/j;->e:Z

    .line 81
    iget-object v0, p0, Lcom/color/support/c/j;->c:Landroid/app/Activity;

    iget-object v1, p0, Lcom/color/support/c/j;->b:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_0
    return-void
.end method
