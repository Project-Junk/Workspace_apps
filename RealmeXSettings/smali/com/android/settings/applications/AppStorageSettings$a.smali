.class final Lcom/android/settings/applications/AppStorageSettings$a;
.super Landroid/content/pm/IPackageDataObserver$Stub;
.source "AppStorageSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/applications/AppStorageSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/android/settings/applications/AppStorageSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/applications/AppStorageSettings;)V
    .locals 0

    .line 661
    iput-object p1, p0, Lcom/android/settings/applications/AppStorageSettings$a;->a:Lcom/android/settings/applications/AppStorageSettings;

    invoke-direct {p0}, Landroid/content/pm/IPackageDataObserver$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public final onRemoveCompleted(Ljava/lang/String;Z)V
    .locals 1

    .line 663
    iget-object p1, p0, Lcom/android/settings/applications/AppStorageSettings$a;->a:Lcom/android/settings/applications/AppStorageSettings;

    invoke-static {p1}, Lcom/android/settings/applications/AppStorageSettings;->h(Lcom/android/settings/applications/AppStorageSettings;)Landroid/os/Handler;

    move-result-object p1

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    if-eqz p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x2

    .line 664
    :goto_0
    iput p2, p1, Landroid/os/Message;->arg1:I

    .line 665
    iget-object p2, p0, Lcom/android/settings/applications/AppStorageSettings$a;->a:Lcom/android/settings/applications/AppStorageSettings;

    invoke-static {p2}, Lcom/android/settings/applications/AppStorageSettings;->h(Lcom/android/settings/applications/AppStorageSettings;)Landroid/os/Handler;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
