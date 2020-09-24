.class final Lcom/android/settings/users/UserSettings$1;
.super Landroid/os/Handler;
.source "UserSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/users/UserSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/android/settings/users/UserSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/users/UserSettings;)V
    .locals 0

    .line 196
    iput-object p1, p0, Lcom/android/settings/users/UserSettings$1;->a:Lcom/android/settings/users/UserSettings;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 199
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 207
    :cond_0
    iget-object v0, p0, Lcom/android/settings/users/UserSettings$1;->a:Lcom/android/settings/users/UserSettings;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, p1}, Lcom/android/settings/users/UserSettings;->b(Lcom/android/settings/users/UserSettings;I)V

    :goto_0
    return-void

    .line 204
    :cond_1
    iget-object v0, p0, Lcom/android/settings/users/UserSettings$1;->a:Lcom/android/settings/users/UserSettings;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, p1}, Lcom/android/settings/users/UserSettings;->a(Lcom/android/settings/users/UserSettings;I)V

    return-void

    .line 201
    :cond_2
    iget-object p1, p0, Lcom/android/settings/users/UserSettings$1;->a:Lcom/android/settings/users/UserSettings;

    invoke-virtual {p1}, Lcom/android/settings/users/UserSettings;->b()V

    return-void
.end method
