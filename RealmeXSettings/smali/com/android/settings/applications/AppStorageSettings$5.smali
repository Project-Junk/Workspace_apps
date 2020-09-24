.class final Lcom/android/settings/applications/AppStorageSettings$5;
.super Landroid/os/Handler;
.source "AppStorageSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/applications/AppStorageSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/android/settings/applications/AppStorageSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/applications/AppStorageSettings;)V
    .locals 0

    .line 636
    iput-object p1, p0, Lcom/android/settings/applications/AppStorageSettings$5;->a:Lcom/android/settings/applications/AppStorageSettings;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 638
    iget-object v0, p0, Lcom/android/settings/applications/AppStorageSettings$5;->a:Lcom/android/settings/applications/AppStorageSettings;

    invoke-virtual {v0}, Lcom/android/settings/applications/AppStorageSettings;->getView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 641
    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 p1, 0x3

    if-eq v0, p1, :cond_1

    goto :goto_0

    .line 648
    :cond_1
    iget-object p1, p0, Lcom/android/settings/applications/AppStorageSettings$5;->a:Lcom/android/settings/applications/AppStorageSettings;

    invoke-static {p1}, Lcom/android/settings/applications/AppStorageSettings;->f(Lcom/android/settings/applications/AppStorageSettings;)Z

    .line 650
    iget-object p1, p0, Lcom/android/settings/applications/AppStorageSettings$5;->a:Lcom/android/settings/applications/AppStorageSettings;

    invoke-static {p1}, Lcom/android/settings/applications/AppStorageSettings;->g(Lcom/android/settings/applications/AppStorageSettings;)V

    :goto_0
    return-void

    .line 643
    :cond_2
    iget-object v0, p0, Lcom/android/settings/applications/AppStorageSettings$5;->a:Lcom/android/settings/applications/AppStorageSettings;

    invoke-static {v0}, Lcom/android/settings/applications/AppStorageSettings;->e(Lcom/android/settings/applications/AppStorageSettings;)Z

    .line 644
    iget-object v0, p0, Lcom/android/settings/applications/AppStorageSettings$5;->a:Lcom/android/settings/applications/AppStorageSettings;

    invoke-static {v0}, Lcom/android/settings/applications/AppStorageSettings;->f(Lcom/android/settings/applications/AppStorageSettings;)Z

    .line 645
    iget-object v0, p0, Lcom/android/settings/applications/AppStorageSettings$5;->a:Lcom/android/settings/applications/AppStorageSettings;

    invoke-static {v0, p1}, Lcom/android/settings/applications/AppStorageSettings;->a(Lcom/android/settings/applications/AppStorageSettings;Landroid/os/Message;)V

    return-void
.end method
