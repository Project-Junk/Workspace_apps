.class final Lcom/android/settings/applications/AppStorageSettings$b;
.super Ljava/lang/Object;
.source "AppStorageSettings.java"

# interfaces
.implements Lcom/color/compat/app/ActivityManagerNative$IPackageDataObserverNative;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/applications/AppStorageSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/android/settings/applications/AppStorageSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/applications/AppStorageSettings;)V
    .locals 0

    .line 669
    iput-object p1, p0, Lcom/android/settings/applications/AppStorageSettings$b;->a:Lcom/android/settings/applications/AppStorageSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onRemoveCompleted(Ljava/lang/String;Z)V
    .locals 1

    .line 671
    iget-object p1, p0, Lcom/android/settings/applications/AppStorageSettings$b;->a:Lcom/android/settings/applications/AppStorageSettings;

    invoke-static {p1}, Lcom/android/settings/applications/AppStorageSettings;->h(Lcom/android/settings/applications/AppStorageSettings;)Landroid/os/Handler;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    .line 672
    :goto_0
    iput v0, p1, Landroid/os/Message;->arg1:I

    .line 673
    iget-object p2, p0, Lcom/android/settings/applications/AppStorageSettings$b;->a:Lcom/android/settings/applications/AppStorageSettings;

    invoke-static {p2}, Lcom/android/settings/applications/AppStorageSettings;->h(Lcom/android/settings/applications/AppStorageSettings;)Landroid/os/Handler;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
