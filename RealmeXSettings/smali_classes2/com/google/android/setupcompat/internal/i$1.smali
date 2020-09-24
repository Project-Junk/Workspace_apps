.class final Lcom/google/android/setupcompat/internal/i$1;
.super Ljava/lang/Object;
.source "SetupCompatServiceProvider.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/setupcompat/internal/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/setupcompat/internal/i;


# direct methods
.method constructor <init>(Lcom/google/android/setupcompat/internal/i;)V
    .locals 0

    .line 222
    iput-object p1, p0, Lcom/google/android/setupcompat/internal/i$1;->a:Lcom/google/android/setupcompat/internal/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onBindingDied(Landroid/content/ComponentName;)V
    .locals 3

    .line 241
    iget-object p1, p0, Lcom/google/android/setupcompat/internal/i$1;->a:Lcom/google/android/setupcompat/internal/i;

    new-instance v0, Lcom/google/android/setupcompat/internal/i$a;

    sget-object v1, Lcom/google/android/setupcompat/internal/i$b;->g:Lcom/google/android/setupcompat/internal/i$b;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/setupcompat/internal/i$a;-><init>(Lcom/google/android/setupcompat/internal/i$b;B)V

    invoke-static {p1, v0}, Lcom/google/android/setupcompat/internal/i;->a(Lcom/google/android/setupcompat/internal/i;Lcom/google/android/setupcompat/internal/i$a;)V

    return-void
.end method

.method public final onNullBinding(Landroid/content/ComponentName;)V
    .locals 3

    .line 246
    iget-object p1, p0, Lcom/google/android/setupcompat/internal/i$1;->a:Lcom/google/android/setupcompat/internal/i;

    new-instance v0, Lcom/google/android/setupcompat/internal/i$a;

    sget-object v1, Lcom/google/android/setupcompat/internal/i$b;->f:Lcom/google/android/setupcompat/internal/i$b;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/setupcompat/internal/i$a;-><init>(Lcom/google/android/setupcompat/internal/i$b;B)V

    invoke-static {p1, v0}, Lcom/google/android/setupcompat/internal/i;->a(Lcom/google/android/setupcompat/internal/i;Lcom/google/android/setupcompat/internal/i$a;)V

    return-void
.end method

.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3

    .line 225
    sget-object p1, Lcom/google/android/setupcompat/internal/i$b;->d:Lcom/google/android/setupcompat/internal/i$b;

    if-nez p2, :cond_0

    .line 227
    sget-object p1, Lcom/google/android/setupcompat/internal/i$b;->e:Lcom/google/android/setupcompat/internal/i$b;

    const-string v0, "SucServiceProvider"

    const-string v1, "Binder is null when onServiceConnected was called!"

    .line 228
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    :cond_0
    iget-object v0, p0, Lcom/google/android/setupcompat/internal/i$1;->a:Lcom/google/android/setupcompat/internal/i;

    new-instance v1, Lcom/google/android/setupcompat/internal/i$a;

    .line 231
    invoke-static {p2}, Lcom/google/android/setupcompat/a$a;->a(Landroid/os/IBinder;)Lcom/google/android/setupcompat/a;

    move-result-object p2

    const/4 v2, 0x0

    invoke-direct {v1, p1, p2, v2}, Lcom/google/android/setupcompat/internal/i$a;-><init>(Lcom/google/android/setupcompat/internal/i$b;Lcom/google/android/setupcompat/a;B)V

    .line 230
    invoke-static {v0, v1}, Lcom/google/android/setupcompat/internal/i;->a(Lcom/google/android/setupcompat/internal/i;Lcom/google/android/setupcompat/internal/i$a;)V

    return-void
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 3

    .line 236
    iget-object p1, p0, Lcom/google/android/setupcompat/internal/i$1;->a:Lcom/google/android/setupcompat/internal/i;

    new-instance v0, Lcom/google/android/setupcompat/internal/i$a;

    sget-object v1, Lcom/google/android/setupcompat/internal/i$b;->e:Lcom/google/android/setupcompat/internal/i$b;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/setupcompat/internal/i$a;-><init>(Lcom/google/android/setupcompat/internal/i$b;B)V

    invoke-static {p1, v0}, Lcom/google/android/setupcompat/internal/i;->a(Lcom/google/android/setupcompat/internal/i;Lcom/google/android/setupcompat/internal/i$a;)V

    return-void
.end method
