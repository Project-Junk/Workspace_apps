.class final Lcom/coloros/settings/feature/password/ScreenLockFeature$1;
.super Landroid/content/BroadcastReceiver;
.source "ScreenLockFeature.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/settings/feature/password/ScreenLockFeature;->registerReceiver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/android/settings/password/ChooseLockPassword;

.field final synthetic b:Lcom/coloros/settings/feature/password/ScreenLockFeature;


# direct methods
.method constructor <init>(Lcom/coloros/settings/feature/password/ScreenLockFeature;Lcom/android/settings/password/ChooseLockPassword;)V
    .locals 0

    .line 509
    iput-object p1, p0, Lcom/coloros/settings/feature/password/ScreenLockFeature$1;->b:Lcom/coloros/settings/feature/password/ScreenLockFeature;

    iput-object p2, p0, Lcom/coloros/settings/feature/password/ScreenLockFeature$1;->a:Lcom/android/settings/password/ChooseLockPassword;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 512
    iget-object p1, p0, Lcom/coloros/settings/feature/password/ScreenLockFeature$1;->a:Lcom/android/settings/password/ChooseLockPassword;

    invoke-virtual {p1}, Lcom/android/settings/password/ChooseLockPassword;->finish()V

    return-void
.end method
